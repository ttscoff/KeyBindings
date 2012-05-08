#!/usr/bin/ruby
# encoding: utf-8

require 'rubygems'

infile = File.new('DefaultKeyBinding.dict','r')
input = infile.read
infile.close

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

intro =<<INTRO
DefaultKeyBindings.dict file (`~/Library/KeyBindings/DefaultKeyBindings.dict`) for Mac OS X, created by [Brett Terpstra][] and based heavily on work done by [Lri][lrikeys].
Please note that these bindings won't work in all applications: TextWrangler and TextMate, for example, override these with their own settings.
See Lri's [gists][lrigists] and [website][lriweb] for more coding madness.

[lrikeys]: http://www.cs.helsinki.fi/u/lranta/keybindings/
[lriweb]: http://www.cs.helsinki.fi/u/lranta/
[lrigists]: https://gist.github.com/Lri
[brett terpstra]: http://brettterpstra.com

<b>Installation</b>: Copy the DefaultKeyBindings.dict file to the `~/Library/KeyBindings/` directory (create `KeyBindings` if it doesn't already exist). 
Any open applications will need to be re-started before the key bindings will take effect -- or log out and log back in.

<b>Documentation</b> <i>(last updated #{date}.)</i>

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
note = ''

def e_sh(str)
	str.to_s.gsub(/(?=[^a-zA-Z0-9_.\/\-\x7F-\xFF\n])/, '\\').gsub(/\n/, "'\n'").sub(/^$/, "''")
end

def translate_command(str)
  str = str.gsub(/~/,'⌥').gsub(/@/,'⌘').gsub(/\$/,'⇧')
  str = str.gsub('\UF700','↑').gsub('\UF701','↓').gsub('\UF703','→').gsub('\UF702','←')
  str = str.gsub('\U0009','⇥').gsub('\U000D','↩').gsub('\U001B','⎋').gsub('\U000A','␍')
  str = str.gsub('\UF728','⌦').gsub('\177','⌫')
  str = str.gsub(/([\[\]|])/,"\\\1")
  str = str.gsub(/([A-Z])/,'⇧\\1').downcase
  str
end

input.split("\n").each {|line|

  if line =~ /^\s*$/ || line =~ /^\s*\/\/\s*(TODO)/
    next
  elsif line =~ /^\s*\/\/\s*>\s*(.*)$/
    note += " " + $1
  elsif line =~ /^\s*\};\s*$/
    level -= 1
    if level == 1
      subgroup_command = ''
      subgroup_desc = ''
      output += "|||||\n"
    elsif level == 0
      output += "[ #{group_desc} ]\n\n"
      group_command = ''
      group_desc = ''
    end
    next
  elsif line =~ /^\s*\/\/\s*(.*)/
    desc = $1
    next
  elsif line =~ /^\s*"([^"]+)"\s*=\s*\{.*?\/\/\s*(.*)/
    level += 1
    if level == 1
      group_command = translate_command($1)
      group_desc = $2
      output += "\n|#{group_desc} (#{group_command})||||\n|:----:|:----:|:----:|:----|\n"
    elsif level == 2
      subgroup_command = translate_command($1)
      subgroup_desc = $2
      output += "|#{subgroup_desc} (#{subgroup_command})||| |\n"
    else
      prefix = $1
    end
    next
  elsif line =~ /^\s*"([^"]+)"\s*=\s*\(/
    command = translate_command($1)
    note = "(#{note})" if note != ''
    if level == 0
      toplevel.push("|#{command}|#{desc} #{note}|\n")
    else
      command = prefix + "," + command if prefix
      output += "|#{group_command} |#{subgroup_command} |#{command} |#{desc} #{note}|\n"
    end
    note = ''
  end
}
topoutput = "|General Commands||\n|Key|Function|\n|:----:|:----|\n"
toplevel.each {|line|
  topoutput += line
}
topoutput += "[ General Commands ]\n\n"

# output = style + topoutput + output
output = topoutput + output

htmlout = %x{echo #{e_sh output}|/usr/local/bin/multimarkdown}

outfile = File.new('readme.md','w')
outfile.puts intro
outfile.puts htmlout
outfile.puts outro
outfile.close