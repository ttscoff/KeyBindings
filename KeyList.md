| Group  | Subgroup |      Keys      | Function                                                                                                      |  
| :----: | :------: | :------------: | :------------------------------------------------------------------------------------------------------------ |  
|        |          |      '^U'      | uppercase word                                                                                                |  
|        |          |      '^u'      | lowercase word                                                                                                |  
|        |          |      '^T'      | titlecase word                                                                                                |  
|        |          |     '^⌥U'    | uppercase current paragraph                                                                                   |  
|        |          |     '^⌥u'    | lowercase current paragraph                                                                                   |  
|        |          |     '^⌥t'    | titlecase paragraph                                                                                           |  
|        |          |      '^w'      | delete word before cursor                                                                                     |  
|        |          |     '⌥w'     | select word                                                                                                   |  
|        |          |     '⌥S'     | select entire line/paragraph                                                                                  |  
|        |          |     '⌥s'     | select from beginning of paragrah to last character                                                           |  
|        |          |     '⌥d'     | delete line/paragraph                                                                                         |  
|        |          |     '⌥y'     | copy paragraph                                                                                                |  
|        |          |     '⌥x'     | cut paragraph                                                                                                 |  
|        |          |     '⌥p'     | paste paragraph below                                                                                         |  
|        |          |     '⌥P'     | paste paragraph above                                                                                         |  
|        |          |      '^A'      | select to beginning of paragraph and copy                                                                     |  
|        |          |      '^E'      | select to end of paragraph and copy                                                                           |  
|        |          |     '⌥q'     | cut to beginning of paragraph                                                                                 |  
|        |          |     '⌥k'     | cut to end of paragraph                                                                                       |  
|        |          |     '⌥o'     | blank line after current                                                                                      |  
|        |          |     '⌥O'     | blank line before current                                                                                     |  
| ^⌘c  |          |       '/'      | comment with "//"                                                                                             |  
| ^⌘c  |          |      '\\'      | comment with "#"                                                                                              |  
| ^⌘c  |          |       '!'      | HTML Comment                                                                                                  |  
| ^⌘c  |          |       '*'      | CSS Comment                                                                                                   |  
|        |          |    '⌘⌥b'   | bold selection (Markdown)                                                                                     |  
|        |          |    '⌘⌥i'   | italicize selection (Markdown)                                                                                |  
|        |          |    '⌘⌥='   | increase markdown header level                                                                                |  
|        |          |    '⌘⌥-'   | decrease markdown header level                                                                                |  
| ^⌘w  |          |      '↩'     | force carriage return in text field                                                                           |  
| ^⌘w  |          |      '⇥'     | force tab in text field                                                                                       |  
| ^⌘w  |     h    |       '1'      | 1st level Headline                                                                                            |  
| ^⌘w  |     h    |       '2'      | 2nd level Headline                                                                                            |  
| ^⌘w  |     h    |       '3'      | 3rd level Headline                                                                                            |  
| ^⌘w  |     h    |       '4'      | 4th level Headline                                                                                            |  
| ^⌘w  |     h    |       '5'      | 5th level Headline                                                                                            |  
| ^⌘w  |     h    |       '6'      | 6th level Headline                                                                                            |  
| ^⌘w  |     l    |       't'      | create a link for selected text, cursor between () "[selected text]()"                                        |  
| ^⌘w  |     l    |       'c'      | create a link for selected text, inserting clipboard as url "[cursorselected text](clipboard contents)"       |  
| ^⌘w  |     i    |       't'      | same as lt, but with image syntax "![selected text](cursor)"                                                  |  
| ^⌘w  |     i    |       'c'      | same as lc, but with image syntax "![selected text](cursor)"                                                  |  
| ^⌘w  |     :    |       't'      | create a reference from selected text                                                                         |  
| ^⌘w  |     :    |       'c'      | create a reference from selected text, clipboard as url                                                       |  
| ^⌘w  |          |       '['      | insert reference link                                                                                         |  
| ^⌘w  |          |       '+'      | + bulleted list                                                                                               |  
| ^⌘w  |          |       '-'      | - bulleted list                                                                                               |  
| ^⌘w  |          |       '*'      | * bulleted list                                                                                               |  
| ^⌘w  |          |       '8'      | convert current numbered list item to bullet, handles indentation                                             |  
| ^⌘w  |          |       '1'      | convert current bullet list item to numbered                                                                  |  
| ^⌘e  |          |       '='      | ="cursor"                                                                                                     |  
| ^⌘e  |          |       'e'      | entity &cursor;                                                                                               |  
| ^⌘e  |          |       '/'      | http://                                                                                                       |  
| ^⌘e  |          |       't'      | Make previous word into paired HTML tag                                                                       |  
| ^⌘e  |     a    |       't'      | Insert HTML link for selected text, leave cursor in the href with "http://" selected                          |  
| ^⌘e  |     a    |       'c'      | Insert HTML link with clipboard as href                                                                       |  
| ^⌘e  |     i    |       't'      | Insert image tag, any selected text is alt text, leave cursor in src attribute                                |  
| ^⌘e  |     i    |       'c'      | Insert image tag, clipboard as src, any selected text as alt, leave cursor at beginning of alt attribute      |  
|        |          |   '⌥⌘↩'  | Command Option Enter to continue a list item with indentation and include the same delimiter                  |  
|        |          |    '⇧⇥'    | Shift Tab remove one tab (or character) from start of line (outdent)                                          |  
| ^⌘s  |          |       '('      | wrap () with spaces                                                                                           |  
| ^⌘s  |          |       ')'      | wrap () no spaces                                                                                             |  
| ^⌘s  |          |       '['      | wrap [] with spaces                                                                                           |  
| ^⌘s  |          |       ']'      | wrap [] no spaces                                                                                             |  
| ^⌘s  |          |       '{'      | wrap {} with spaces                                                                                           |  
| ^⌘s  |          |       '}'      | wrap {} no spaces                                                                                             |  
| ^⌘s  |          |       '<'      | wrap <> with spaces                                                                                           |  
| ^⌘s  |          |       '>'      | wrap <> no spaces                                                                                             |  
| ^⌘s  |          |       '''      | wrap single quotes                                                                                            |  
| ^⌘s  |          |       '`'      | wrap backticks                                                                                                |  
| ^⌘s  |          |       '\'      | wrap double quote                                                                                             |  
|        |          |     '^⌘k'    | move line up                                                                                                  |  
|        |          |     '^⌘j'    | move line down                                                                                                |  
|        |          |     '^⌘l'    | indent line                                                                                                   |  
|        |          |     '^⌘h'    | outdent line (one tab or char)                                                                                |  
|        |          |    '^⌘↑'   | move line up with arrow keys                                                                                  |  
|        |          |    '^⌘↓'   | move line down with arrow keys                                                                                |  
|        |          |    '^⌘→'   | move line left with arrow keys                                                                                |  
|        |          |    '^⌘←'   | move line right with arrow keys                                                                               |  
|        |          |  '^⇧⌘←'  | Control-shift-command-left arrow : Full outdent - Deletes all leading space (or first word) of line/paragraph |  
|        |          | '⌘⌥⇧↑' | modify selection up by paragraph (Command Option Shift Up)                                                    |  
|        |          | '⌘⌥⇧↓' | modify selection down by paragraph (Command Option Shift Down)                                                |  
|        |          |  '^⌥⇧←'  | modify selection left by word                                                                                 |  
|        |          |  '^⌥⇧→'  | modify selection right by word                                                                                |  
|        |          |    '⌘↩'    | TextMate Command-Return (Command Enter)                                                                       |  
|        |          |   '⌘⇧↩'  | Insert blank line above paragraph (Command Shift Enter)                                                       |  
|        |          |     '⌥_'     | hyphenate next space and move to next word                                                                    |  
|        |          |     '⌥1'     | bookmark                                                                                                      |  
|        |          |     '⌥2'     | jump to bookmark                                                                                              |  
| ⇧⎋ |     d    |       'd'      | 'dd' delete line/paragraph                                                                                    |  
| ⇧⎋ |     d    |      '⇧'     | 'd$' delete from cursor to end of graf                                                                        |  
| ⇧⎋ |     d    |       '0'      | 'd0' delete to beginning of paragraph                                                                         |  
| ⇧⎋ |     d    |       '^'      | 'd^' delete to beginning of paragraph                                                                         |  
| ⇧⎋ |          |       'p'      | paste after                                                                                                   |  
| ⇧⎋ |          |       'P'      | paste before                                                                                                  |  
| ⇧⎋ |          |       'y'      | Yank                                                                                                          |  
| ⇧⎋ |     5    |       'd'      | 'dd' delete line/paragraph                                                                                    |  
| ⇧⎋ |          |       'p'      | paste 5 times after                                                                                           |  
| ⇧⎋ |          |       'P'      | paste 5 times before                                                                                          |  
| ⇧⎋ |          |       'y'      | paste 5 times in a row                                                                                        |  
|        |          |     '⌥r'     | repeat character before cursor                                                                                |  
|        |          |    '⌘␡'    | Forward delete to end of paragraph                                                                            |  
