#!/usr/bin/ruby
require 'cgi'

fh = File.new('./DefaultKeyBinding.dict','r')
outfile = File.new('KeyList.md','w')

ingroup = 0
group, subgroup, comment, key = ''

output =<<HEADER
|   Group   | Subgroup |           Keys          | Function                                                |  
| :-------: | :------: | :---------------------: | :------------------------------------------------------ |
HEADER

def sub_symbols(text)
  return text.gsub(/@/,'⌘').gsub(/\$/,'⇧').gsub(/~/,'⌥').gsub('\UF702','←').gsub('\UF703','→').gsub('\Uf700','↑').gsub('\Uf701','↓').gsub('\U000D','↩').gsub('\Uf728','␡').gsub('\U0009','⇥').gsub('\U001B', '⎋')
end

counter = 0
while (line = fh.gets)
  counter+=1
 if line =~ /\s*\};/
   if ingroup == 1
     group = ''
     ingroup = 0
   elsif ingroup > 1
     subgroup = ''
     ingroup -= 1
   end
 elsif line =~ /^\s*\"([^\"]+)"\s*=[^(]+\{\s*\/\/(.*)$/
   if ingroup == 1
     ingroup += 1
     subgroup = "#{sub_symbols($1.strip)}"
   elsif ingroup == 0
     group = "#{sub_symbols($1.strip)}"
     ingroup = 1
   end
 elsif line =~ /^\s*\/\/(.*)$/
   comment = $1.strip
   nextline = fh.gets
   if nextline =~ /^\s*\"([^\"]+)\"/
     key = sub_symbols($1.strip)
     output += "| #{group}  |  #{subgroup}    |        '#{key}'        | #{comment}           |\n"
   end
 else
   puts "#{counter}: #{line}"
 end
end
fh.close
outfile.puts output
outfile.close