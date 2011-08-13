<style>
table { margin-bottom:20px; }
col:nth-child(3) { width:450px; }
col:nth-child(1),col:nth-child(2) { width: 80px !important;  }
td:nth-child(1), td:nth-child(2) { font-weight:bold; padding:0 }
</style>

DefaultKeyBindings.dict file for Mac OS X, created by [Brett Terpstra][] and based heavily on work done by [Lri][lrikeys]. See Lri's [gists][lrigists] and [website][lriweb] for more coding madness.

[lrikeys]: http://www.cs.helsinki.fi/u/lranta/keybindings/
[lriweb]: http://www.cs.helsinki.fi/u/lranta/
[lrigists]: https://gist.github.com/Lri
[brett terpstra]: http://brettterpstra.com

*Grouped items begin with the groups shortcut, followed by the Keys specified. Items separated by commas are sequential, not concurrent.*

|   Group   |           Keys          | Function                                                |  
| :-------: | :---------------------: | :------------------------------------------------------ |  
|           |        &#x2325;z        | copy character before cursor                            |  
|           |        &#x2325;r        | repeat character before cursor                          |  
|           |        &#x2325;t        | transpose characters                                    |  
|           |        &#x2325;+        | uppercase word                                          |  
|           |        &#x2325;-        | lowercase word                                          |  
|           |        &#x2325;.        | capitalize word                                         |  
|           |            ^w           | delete word before cursor                               |  
|           |        &#x2325;w        | select word                                             |  
|           |        &#x2325;f        | cut word (fold)                                         |  
|           |        &#x2325;g        | copy word (grab)                                        |  
|           |        &#x2325;h        | paste word (hit)                                        |  
|           |        &#x2325;l        | select entire line/paragraph                            |  
|           |        &#x2325;s        | select from beginning of paragrah to last character     |  
|           |        &#x2325;d        | delete line/paragraph                                   |  
|           |        &#x2325;y        | copy paragraph                                          |  
|           |        &#x2325;x        | cut paragraph                                           |  
|           |        &#x2325;p        | paste paragraph below                                   |  
|           |    &#x2325;&#x21E7;P    | paste paragraph above                                   |  
|           |        ^&#x21E7;A       | select to beginning of paragraph and copy               |  
|           |        ^&#x21E7;E       | select to end of paragraph and copy                     |  
|           |        &#x2325;q        | cut to beginning of paragraph                           |  
|           |        &#x2325;k        | cut to end of paragraph                                 |  
|           |        &#x2325;,        | move paragraph up a line, inserting blank space after   |  
|           |     &#x2325;&#x2420;    | move paragraph to end of document                       |  
|           |        &#x2325;o        | blank line after current                                |  
|           |    &#x2325;&#x21E7;O    | blank line before current                               |  
|           |    &#x2318;&#x2325;/    | comment with "//"                                       |  
|           |    &#x2318;&#x2325;3    | comment with "#"                                        |  
[ All purpose key combos ]


|   Group   |           Keys          | Function                                                |  
|   :---:   |           :--:          | :-------                                                |  
|           |    &#x2318;&#x2325;b    | bold selection                                          |  
|           |    &#x2318;&#x2325;i    | italicize selection                                     |  
|^&#x2318;w |        &#x23CE;        | force Return                                            |  
|^&#x2318;w |         &#x21E5;        | force Tab                                               |  
|^&#x2318;w |           1-4           | # Headlines                                             |  
|^&#x2318;w |           l,t           | link text `"[selected text](                            | )"`                                  |  
|^&#x2318;w |           l,c           | clipboard link `"[                                      | selected text](clipboard contents)"` |  
|^&#x2318;w |           i,t           | image, selection as alt `"![selected text](             | )"`                                  |  
|^&#x2318;w |           i,c           | clipboard image `"![                                    | selected text](clipboard contents)"` |  
|^&#x2318;w |           :,t           | create a reference from selected text                   |  
|^&#x2318;w |           :,c           | create a reference from selected text, clipboard as url |  
|^&#x2318;w |            [            | insert reference link                                   |  
|^&#x2318;w |            +\|-\|*  | lists |  
|^&#x2318;w |   =,&#x2325;&#x21E7;L   | new list item after current                             |  
|^&#x2318;w |            e            | entity                                                  |  
|^&#x2318;w |           =,/           | http://                                                 |  
[ Markdown-specific shortcuts (^&#x2318;W) ]


|   Group   |           Keys          | Function                                                |  
|   :---:   |           :--:          | :-------                                                |  
|^&#x2318;s |            (            | wrap () with spaces                                     |  
|^&#x2318;s |            )            | wrap () no spaces                                       |  
|^&#x2318;s |            \[            | wrap [] with spaces                                     |  
|^&#x2318;s |            \]            | wrap [] no spaces                                       |  
|^&#x2318;s |            {            | wrap {} with spaces                                     |  
|^&#x2318;s |            }            | wrap {} no spaces                                       |  
|^&#x2318;s |            <            | wrap <> with spaces                                     |  
|^&#x2318;s |            >            | wrap <> no spaces                                       |  
|^&#x2318;s |            '            | wrap single quotes                                      |  
|^&#x2318;s |            `            | wrap backticks                                          |  
|^&#x2318;s |            "            | wrap double quote                                       |  
[ Surround (^&#x2318;s) ]


|   Group   |           Keys          | Function                                                |  
|   :---:   |           :--:          | :-------                                                |  
|           |        ^&#x2318;k       | move line up                                            |  
|           |        ^&#x2318;j       | move line down                                          |  
|           |        ^&#x2318;l       | indent line                                             |  
|           |        ^&#x2318;h       | outdent line (all the way)                              |  
|           |        ^&#x2325;k       | copy line and paste above                               |  
|           |        ^&#x2325;j       | copy line and paste below                               |  
|           | &#x2318;&#x2325;&#xA71B;| modify selection up                                     |  
|           | &#x2318;&#x2325;&#xA71C;| modify selection down                                   |  
|           |     &#x2318;&#x2421;    | Forward delete to end of paragraph                      |  
[ List/Paragraph motion ]


| Group |      Keys     | Function         |  
| :---: | :-----------: | :--------------- |  
|       |      PgUp     | Page Up          |  
|       |     PgDown    | Page Down        |  
|       |  &#x2325;PgUp | Scroll up        |  
|       | &#x2325;PgDown| Scroll Down      |  
|       |   &#x2325;1   | bookmark         |  
|       |   &#x2325;2   | jump to bookmark |  
[ Document navigation ]