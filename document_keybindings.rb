#!/usr/bin/ruby
# encoding: utf-8

require 'rubygems'
require 'shellwords'
require 'fileutils'

def class_exists?(class_name)
  klass = Module.const_get(class_name)
  return klass.is_a?(Class)
rescue NameError
  return false
end

class ::String
  def cap_first
    sub(/^\w/) do |m|
      m.upcase
    end
  end
end

if class_exists? 'Encoding'
  Encoding.default_external = Encoding::UTF_8 if Encoding.respond_to?('default_external')
  Encoding.default_internal = Encoding::UTF_8 if Encoding.respond_to?('default_internal')
end

infile = 'DefaultKeyBinding.dict'
begin
  input = IO.read(infile).force_encoding('utf-8')
rescue
  input = IO.read(infile)
end

date = Time.now.strftime('%m/%d/%Y')

output = ''
style =<<STYLE
<style>
table { margin-bottom:20px; border:none; width: 100%; }

caption { text-align:left; padding:5px; font-weight:bold; border: dotted 1px #777;background:#eee; margin-bottom:10px }
td,th { font-weight:bold; padding:3px; border: solid 1px #ccc; padding:4px }
td:nth-child(1),td:nth-child(2),td:nth-child(3) { width:40px}
td:first-child {font-weight:bold !important}
td:last-child { font-weight:normal;width:auto }

</style>

STYLE

blogintro =<<BLOGINTRO
---
layout: page
title: KeyBindings
project_tag: keybindings
icon: /images/projecticons/keybindings.png
info: My OS X KeyBindings experiments.
ranking: 5
updated: #{Time.now.strftime('%Y-%m-%d')}
tags:
- mac
- utilities
- text
---
[support]: https://github.com/ttscoff/KeyBindings/issues
[gh]: http://github.com/ttscoff/KeyBindings

* [Support][]
* [Brett's KeyBindings on GitHub][gh]
{:.linkblock}

BLOGINTRO

blogoutro =<<BLOGOUTRO

{% donate "You're bound to want to help out" %}

* [Support][]
* [Brett's KeyBindings on GitHub][gh]
{:.linkblock}

BLOGOUTRO

intro =<<INTRO
DefaultKeyBinding.dict file (`~/Library/KeyBindings/DefaultKeyBinding.dict`) for Mac OS X, created by
[Brett Terpstra](https://brettterpstra.com) and based heavily on work done by Lri. Please note that these
bindings won't work in all applications: TextWrangler and TextMate, for example, override these with their
own settings.

**Installation**: Copy the DefaultKeyBinding.dict file to the `~/Library/KeyBindings/` directory (create `KeyBindings`
if it doesn't already exist). Any open applications will need to be re-started before the key bindings will take
effect --- or log out and log back in.

The repository includes a script to generate a Dash docset from your customized version of the file.
[See here for details.](https://brettterpstra.com/2022/02/18/keybindings-cheat-sheet-for-dash/)

**Documentation** _(last updated #{date}.)_

*Grouped items begin with the groups shortcut (if exists), followed by a subgroup (if exists) followed by the keys specified.*

INTRO

outro =<<OUTRO

This documentation is generated automatically from the comments and commands in the DefaultKeyBinding.dict file. The script `document_keybindings.rb` is free for use, but it's specifically designed for use with my formatting in the bindings plist (i.e. it's a little finicky).

OUTRO

toplevel = []

level = 0
prefix = false
group_command = ''
group_desc = ''
subgroup_command = ''
subgroup_desc = ''
desc = ''
command = ''
skip = false
note = []

def e_sh(str)
 #  rx = Regexp.new '(?=[^a-zA-Z0-9_.\/\-\x7F-\xFF\n])', nil, 'n'
	# str.to_s.gsub(rx, '\\').gsub(/\n/, "'\n'").sub(/^$/, "''")
  Shellwords.escape(str)
end

def translate_command(str, note: false)
  str = str.gsub(/~/,'⌥').gsub(/@/,'⌘').gsub(/\$/,'⇧').gsub(/\^/,'⌃')
  str = str.gsub('\UF700','↑').gsub('\UF701','↓').gsub('\UF703','→').gsub('\UF702','←')
  str = str.gsub('\U0009','⇥').gsub('\U000D','↩').gsub('\U001B','⎋').gsub('\U000A','␍')
  str = str.gsub('\UF728','⌦').gsub('\177','⌫')
  str = str.gsub('\040','␣')
  str = str.gsub(/([\[\]|])/,'\\\\\1') unless note
  str = str.gsub(/([A-Z])/,'⇧\\1').downcase unless note
  str
end

# input.gsub!(/\\n/,'')
# input.gsub!(/```/,'\`\`\`')

input.split("\n").each {|line|
  if line =~ /^\s*$/ || line =~ %r{^\s*//\s*(TODO)}
    next
  elsif line =~ %r{^\s*//\s*>\s*(.*)$}
    note << Regexp.last_match(1)
  elsif line =~ /^\s*\};\s*$/
    level -= 1
    if level == 1
      subgroup_command = ''
      subgroup_desc = ''
      output += "|||||\n"
    elsif level.zero?
      # output += "[ #{group_desc} ]\n\n"
      group_command = ''
      group_desc = ''
    end
    next
  elsif line =~ %r{^\s*//\s*(.*)}
    desc = Regexp.last_match(1).cap_first
    next
  elsif line =~ %r{^\s*"([^"]+)"\s*=\s*\{.*?//\s*(.*)}
    level += 1
    if level == 1
      group_command = translate_command(Regexp.last_match(1))
      group_desc = Regexp.last_match(2).cap_first
      output += "\n\n|#{group_desc} (#{group_command})||||\n|:----:|:----:|:----:|:----|\n"
    elsif level == 2
      subgroup_command = translate_command(Regexp.last_match(1))
      subgroup_desc = Regexp.last_match(2).cap_first
      output += "|#{subgroup_desc} (#{subgroup_command})||||\n"
    else
      prefix = Regexp.last_match(1)
    end
    next
  elsif line =~ /^\s*"([^"]+)"\s*=\s*\(/
    command = translate_command(Regexp.last_match(1))
    out_note = note.empty? ? '' : " (#{translate_command(note.join(' '), note: true)})"
    if level.zero?
      toplevel.push("|#{command}|#{desc}#{out_note}|\n")
    else
      command = "#{prefix},#{command}" if prefix
      output += "|#{group_command} |#{subgroup_command} |#{command} |#{desc}#{out_note}|\n"
    end
    note = []
  end
}
topoutput = "|General Commands||\n|Key|Function|\n|:----:|:----|\n"
toplevel.each {|line|
  topoutput += line
}
# topoutput += "[ General Commands ]\n\n"

# output = style + topoutput + output


output = topoutput + output
htmlout = %x{echo #{e_sh output}|/usr/local/bin/multimarkdown}

File.open('keybindings.md','w') {|f|
  f.puts blogintro
  f.puts intro + htmlout + outro
  f.puts blogoutro
}

outfile = File.new('readme.md','w')
outfile.puts intro
outfile.puts htmlout
outfile.puts outro
outfile.close

if ENV['USER'] == 'ttscoff'
  FileUtils.cp('keybindings.md',File.expand_path('~/Sites/dev/bt/source/_projects'))
end
