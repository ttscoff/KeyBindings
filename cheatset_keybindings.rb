#!/usr/bin/ruby
# encoding: utf-8

require 'shellwords'
require 'fileutils'

def class_exists?(class_name)
  klass = Module.const_get(class_name)
  klass.is_a?(Class)
rescue NameError
  false
end

if class_exists? 'Encoding'
  Encoding.default_external = Encoding::UTF_8 if Encoding.respond_to?('default_external')
  Encoding.default_internal = Encoding::UTF_8 if Encoding.respond_to?('default_internal')
end

class ::String
  def esc
    gsub(/'/, '\\\\\'').gsub(/ \(new\)/i, '').gsub(/(#+)/, '`\1`').gsub(/\\(?=[\[!])/, '').strip
  end

  def create_command
    gsub(/ +/, ' ').esc
  end
end

##
## Generate a cheatset input file
##
class DashGenerator
  attr_writer :modifier_format

  def initialize(modifier_format = :symbol)
    @modifier_format = modifier_format

    infile = 'DefaultKeyBinding.dict'
    begin
      @input = IO.read(infile).force_encoding('utf-8')
    rescue
      @input = IO.read(infile)
    end

    @bindings = {
      id: 'General Commands',
      bindings: [],
      groups: []
    }
  end

  def parse
    level = 0
    prefix = false
    group_command = ''
    group_desc = ''
    subgroup_command = ''
    subgroup_desc = ''
    desc = ''
    command = ''
    note = ''
    group = nil

    @input.split("\n").each do |line|
      next if line =~ /^\s*$/ || line =~ %r{^\s*//\s*(TODO)}

      case line
      when %r{^\s*//\s*>\s*(.*)$}
        note += Regexp.last_match(1)
      when /^\s*\};\s*$/
        level -= 1
        case level
        when 1
          subgroup_command = ''
          subgroup_desc = ''
        when 0
          group_command = ''
          group_desc = ''
        end
      when %r{^\s*//\s*(.*)}
        desc = Regexp.last_match(1)
      when %r{^\s*"([^"]+)"\s*=\s*\{.*?//\s*(.*)}
        unless group.nil?
          @bindings[:groups].push(group)
          group = nil
        end

        m = Regexp.last_match
        level += 1
        case level
        when 1
          group_command = translate_command(m[1])
          group_desc = m[2]
          group = {
            id: group_desc,
            command: group_command,
            bindings: []
          }
        when 2
          subgroup_command = translate_command(m[1])
          subgroup_desc = m[2]
          group = {
            id: subgroup_desc,
            command: subgroup_command,
            bindings: []
          }
        else
          prefix = m[1]
        end
      when /^\s*"([^"]+)"\s*=\s*\(/
        command = translate_command(Regexp.last_match(1))
        case level
        when 0
          entry  = {
            command: "#{subgroup_command} #{command}",
            name: desc,
            note: note
          }
          @bindings[:bindings].push(entry)
        else
          command = "#{prefix} #{command}" if prefix
          entry = {
            command: "#{group_command} #{subgroup_command} #{command}",
            name: desc,
            note: note
          }
          group[:bindings].push(entry)
        end
        note = ''
      end
    end
  end

  def translate_command(str)
    case @modifier_format
    when :symbol
      translate_command_symbol(str)
    else
      translate_command_name(str)
    end
  end

  def translate_command_name(str)
    str = str.gsub(/~/, 'OPT+').gsub(/@/, 'CMD+').gsub(/\$/, 'SHIFT+').gsub(/\^/, 'CTRL+')
    str = str.gsub('\UF700', 'UP').gsub('\UF701', 'DOWN').gsub('\UF703', 'RIGHT').gsub('\UF702', 'LEFT')
    str = str.gsub('\U0009', 'TAB').gsub('\U000D', 'RETURN').gsub('\U001B', 'ESC').gsub('\U000A', 'ENTER')
    str = str.gsub('\UF728', 'DEL').gsub('\177', 'BACKSPACE')
    str.gsub('\040', 'SPACE').gsub(/(?<=\+)([A-Z])$/, 'SHIFT+\\1').gsub(/([a-z])$/, &:upcase)
  end

  def translate_command_symbol(str)
    str = str.gsub(/~/, '⌥').gsub(/@/, '⌘').gsub(/\$/, '⇧').gsub(/\^/, '⌃')
    str = str.gsub('\UF700', '↑').gsub('\UF701', '↓').gsub('\UF703', '→').gsub('\UF702', '←')
    str = str.gsub('\U0009', '⇥').gsub('\U000D', '↩').gsub('\U001B', '⎋').gsub('\U000A', '␍')
    str = str.gsub('\UF728', '⌦').gsub('\177', '⌫').gsub('\040', '␣')
    str.gsub(/([\[\]|])/, '\\\\\1').gsub(/([A-Z])/, '⇧\\1').downcase
  end

  def create_entry(bnd)
    out = <<EOENTRY

        entry do
          command '#{bnd[:command].create_command}'
          name '#{bnd[:name].esc}'
        end
EOENTRY

    out
  end

  def create_category(grp)
    out = <<EOCAT

    category do
      id '#{grp[:id].esc}'
EOCAT

    grp[:bindings].each { |bnd| out += create_entry(bnd) }

    out += <<EOCAT
    end
EOCAT

    out
  end

  def create_cheatsheet
    out = <<EOCHEAT
  cheatsheet do
    title 'Keybindings'
    docset_file_name 'Keybindings'
    keyword 'kb'
    # resources 'resources_dir'

    introduction 'Brett\\'s macOS Keybindings'
EOCHEAT

    out += create_category(@bindings)

    @bindings[:groups].each { |grp| out += create_category(grp) }

    out += <<EOCHEAT
  end
EOCHEAT

    out
  end

  def render
    parse
    target = File.expand_path('keybindings-dash.rb')
    File.open(target, 'w') { |f| f.puts create_cheatsheet }
    `cheatset generate "#{target}"`
    `open Keybindings.docset`
  end
end

modifier_format = if ARGV.count.positive?
                    ARGV[0] =~ /^s/i ? :symbol : :name
                  else
                    :name
                  end

DashGenerator.new(modifier_format).render
