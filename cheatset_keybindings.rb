#!/usr/bin/ruby
# encoding: utf-8

require 'shellwords'
require 'fileutils'
require 'optparse'

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

  def initialize(options)
    @options = options

    infile = @options[:bindings_file]

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
    case @options[:format]
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
    title '#{@options[:title]}'
    docset_file_name '#{@options[:title].gsub(/ +/, '')}'
    keyword 'kb'
    # resources 'resources_dir'

    introduction '#{@options[:description]}'
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
    target = File.expand_path(@options[:path])
    File.open(target, 'w') { |f| f.puts create_cheatsheet }

    if @options[:save]
      $stdout.puts %(Template saved. Generate a docset with `cheatset generate "#{target}"`)
    else
      docset = File.expand_path("#{@options[:title].gsub(/ +/, '')}.docset")
      `cheatset generate "#{target}"`
      FileUtils.rm(target)
      $stdout.puts %(Docset generated: #{docset})
      `open "#{docset}"` if @options[:open]
    end
  end
end

options = {
  format: :name,
  save: false,
  path: File.expand_path('keybindings-dash.rb'),
  open: false,
  title: 'Keybindings',
  description: 'Brett\\\'s Key Bindings',
  bindings_file: File.expand_path('~/Library/KeyBindings/DefaultKeyBinding.dict')
}

opt_parser = OptionParser.new do |opt|
  opt.banner = %(Usage: #{File.basename(__FILE__)} [options] [DefaultKeyBinding.dict]

If dict file is not specified, ~/Library/KeyBindings/DefaultKeyBinding.dict will be used)
  opt.separator  ''
  opt.separator  'Options:'

  opt.on('-f', '--format=FORMAT', 'Format for modifier keys: "symbol" or "name" (default)') do |fmt|
    options[:format] = fmt =~ /^s/i ? :symbol : :name
  end

  opt.on('--save=FILE', 'Save cheatset template to file (don\'t generate docset automatically)') do |path|
    options[:save] = true
    options[:path] = File.expand_path(path)
  end

  opt.on('-d', '--description=FILE', 'Description of cheat sheet') do |desc|
    options[:description] = desc
  end

  opt.on('-t', '--title=TITLE', 'Title of cheat sheet') do |title|
    options[:title] = title
  end

  opt.on('-o', '--open', 'Open the docset in Dash after generating') do
    options[:open] = true
  end

  opt.on('-h', '--help', 'Display help') do
    puts opt_parser
    exit
  end
end

opt_parser.parse!

options[:bindings_file] = File.expand_path(ARGV[0]) if ARGV.count.positive?

DashGenerator.new(options).render
