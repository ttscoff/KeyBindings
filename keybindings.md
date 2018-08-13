DefaultKeyBinding.dict file (`~/Library/KeyBindings/DefaultKeyBinding.dict`) for Mac OS X, created by [Brett Terpstra][] and based heavily on work done by [Lri][lrikeys].
Please note that these bindings won't work in all applications: TextWrangler and TextMate, for example, override these with their own settings.
See Lri's [gists][lrigists] and [website][lriweb] for more coding madness.

[lrikeys]: http://www.cs.helsinki.fi/u/lranta/keybindings/
[lriweb]: http://www.cs.helsinki.fi/u/lranta/
[lrigists]: https://gist.github.com/Lri
[Brett Terpstra]: http://brettterpstra.com

<b>Installation</b>: Copy the DefaultKeyBinding.dict file to the `~/Library/KeyBindings/` directory (create `KeyBindings` if it doesn't already exist).
Any open applications will need to be re-started before the key bindings will take effect -- or log out and log back in.

<b>Documentation</b> <i>(last updated 08/13/2018.)</i>

*Grouped items begin with the groups shortcut (if exists), followed by a subgroup (if exists) followed by the keys specified.*

|General Commands||
|Key|Function|
|:----:|:----|
|⌃y|replace yank: command with yankAndSelect for use with the kill ring ( defaults write -g NSRepeatCountBinding -string "^u" defaults write -g NSTextKillRingSize -int 6)|
|⌃⇧u|uppercase word |
|⌃⌥u|lowercase word |
|⌃⌥t|titlecase word |
|⌃⌥⇧u|uppercase current paragraph |
|⌃⌥⇧t|titlecase paragraph |
|⌃w|delete word before cursor |
|⌥w|select word |
|⌥⇧w|select word backward and modify selection |
|⌥⇧s|select entire line/paragraph |
|⌥s|select from beginning of paragraph to last character |
|⌃⌥⇧s|select paragraph excluding leading/trailing whitespace (same as ^$@\UF701) |
|⌥d|delete line/paragraph |
|⌥y|copy paragraph |
|⌥x|cut paragraph |
|⌥p|paste paragraph below |
|⌥⇧p|paste paragraph above |
|⌃⇧a|select to beginning of paragraph and copy |
|⌃⇧e|select to end of paragraph and copy |
|⌥q|cut to beginning of paragraph |
|⌥k|cut to end of paragraph |
|⌥o|blank line after current |
|⌥⇧o|blank line before current |
|⌃⌘↑|Move line up |
|⌃⌘↓|Move line down |
|⌃⌘→|Indent line |
|⌃⌘←|Outdent line (one tab or char) |
|⌃⇧⌘←|Full outdent - Deletes all leading space of line/paragraph (updated) ( Control-shift-command-left arrow)|
|⌃⇧⌘→|Delete trailing space ( Control-shift-command-right arrow)|
|⌃⌘⇧↑|Delete leading and trailing whitespace for paragraph ( Control-shift-command-up arrow)|
|⌃⌘⇧↓|Select paragraph without leading or trailing whitespace ( Control-shift-command-down arrow)|
|⌃⌥⇧↑|modify selection up by paragraph (Control Option Shift Up) ( Control-option-shift-up arrow)|
|⌃⌥⇧↓|modify selection down by paragraph (Control Option Shift Down) ( Control-option-shift-down arrow)|
|⌃⌥⇧←|modify selection left by word ( Control-option-shift-left arrow)|
|⌃⌥⇧→|modify selection right by word ( Control-option-shift-right arrow)|
|⌘⌥⌃←|Move to first Alphanumeric character of line ( Control-option-up arrow)|
|⌘⌥←|Move to first non-whitespace character of line |
|⌘⌥⇧←|Select to first word of paragraph modifying selection |
|⌘⌥⇧→|Select to end of paragraph modifying selection |
|⌥⌘→|Move to last non-whitespace character of paragraph |
|⌃⌥→|Move to end of paragraph and delete trailing whitespace |
|⌘↩|TextMate Command-Return (Command Return) |
|⌘⇧↩|Insert blank line above paragraph (Command Shift Return) |
|⇧⌥␣|Insert space and uppercase next character (Shift-Option-Space) |
|⌃⇧␣|Uppercase next character (Control-Shift-Space) |
|⇧␣|Move cursor forward with spacebar (shift-space) |
|⌘⌥_|hyphenate next space and move to next word ( this will kill non alphanumeric symbols and punctuation, use only on *words*)|
|⌥1|bookmark |
|⌥2|jump to bookmark |
|⌥⌘↩|Continue a list item with indentation and include the same delimiter ( Command Option Return)|
|⇧⇥|remove one tab (or character) from start of line (outdent) ( Shift Tab)|
|⌘⌥b|bold selection (Markdown) |
|⌘⌥i|italicize selection (Markdown) |
|⌘⌥`|backtick selection (Markdown) |
|⌃⌘↩|break line with double space (Markdown) (Control-Command-Return) |
|⌘⌥=|increase markdown header level |
|⌘⌥-|decrease markdown header level |
|⌘⌥>|increase blockquote header level |
|⌘⌥<|decrease blockquote level |
|⌃<|Make selected text into paired HTML tag. Allows attributes, only dupes first word into closing tag (caveat: overwrites your pasteboard) |
|⌥r|repeat character before cursor |
|⌘⇧⌦|Forward delete to end of paragraph |
|⌘⇧⌫|Delete to beginning of paragraph ( Command-shift-delete)|
|⌘⌥7|Right mouse click (useless, doesn't maintain cursor position) |
|⌘⌥⇧s|Real, honest-to-goodnes Save As... |


|multi-stroke casing commands (⌃⌥c)||||
|:----:|:----:|:----:|:----|
|⌃⌥c | |c |snake_case to camelCase (delete forward and capitalize) |
|⌃⌥c | |s |snake_case word break |


|Commenting commands (⌃⌘c)||||
|:----:|:----:|:----:|:----|
|⌃⌘c | |/ |comment with "//" |
|⌃⌘c | |\\ |comment with "#" |
|⌃⌘c | |! |HTML commenting |
|⌃⌘c | |* |Css Commenting |


|Multi-stroke Markdown commands (⌃⌘w)||||
|:----:|:----:|:----:|:----|
|⌃⌘w | |␍ |force carriage return in text field |
|⌃⌘w | |⇥ |force tab in text field |
|⌃⌘w | |\[ |insert reference link `[selection][[cursor]]` |
|⌃⌘w | |\] |insert reference `[selection]: [cursor]` |
|⌃⌘w | |+ |Unordered list item with + |
|⌃⌘w | |- |Unordered list item with - |
|⌃⌘w | |* |Unordered list item with * |
|⌃⌘w | |8 |convert current numbered list item to bullet, handles indentation |
|⌃⌘w | |1 |convert current bullet list item to numbered |
|Headlines (removes leading whitespace after inserting hashmarks) (h)||||
|⌃⌘w |h |1 |# |
|⌃⌘w |h |2 |## |
|⌃⌘w |h |3 |### |
|⌃⌘w |h |4 |#### |
|⌃⌘w |h |5 |##### |
|⌃⌘w |h |6 |###### |
|||||
|Markdown link (l)||||
|⌃⌘w |l |t |create a link for selected text, cursor between () `[selected text]([cursor])` ( links without selected text first, these can produce a mess using multiple clipboards make a text selection before you run them)|
|⌃⌘w |l |c |create a link for selected text, inserting clipboard as url `[[cursor]selected text](clipboard contents)` |
|||||
|⌃⌘w | |s |SearchLink Basic Link |
|Link as image (i)||||
|⌃⌘w |i |t |same as lt, but with image syntax `\!\[selected text]([cursor])` |
|⌃⌘w |i |c |same as lc, but with image syntax `\!\[selected text](clipboard)` |
|⌃⌘w |i |d |same as lc, but with image syntax and "+" for Droplr links `\!\[selected text](clipboard+)` |
|||||
|Reference links (:)||||
|⌃⌘w |: |t |create a reference from selected text |
|⌃⌘w |: |c |create a reference from selected text, clipboard as url |
|||||


|HTML commands (⌃⌘e)||||
|:----:|:----:|:----:|:----|
|⌃⌘e | |= |="[cursor]" |
|⌃⌘e | |e |entity &[cursor]; |
|⌃⌘e | |/ |http:// |
|⌃⌘e | |t |Make previous word into paired HTML tag |
|HTML Links (a)||||
|⌃⌘e |a |t |Insert HTML link for selected text, leave cursor in the href with "http://" selected |
|⌃⌘e |a |c |Insert HTML link with clipboard as href |
|||||
|HTML Image (i)||||
|⌃⌘e |i |t |Insert image tag, any selected text is alt text, leave cursor in src attribute |
|⌃⌘e |i |c |Insert image tag, clipboard as src, any selected text as alt, leave cursor at beginning of alt attribute |
|||||


|Surround commands (⌃⌘s)||||
|:----:|:----:|:----:|:----|
|⌃⌘s | |( |wrap () with spaces |
|⌃⌘s | |) |wrap () no spaces |
|⌃⌘s | |\[ |wrap [] with spaces |
|⌃⌘s | |\] |wrap [] no spaces |
|⌃⌘s | |{ |wrap {} with spaces |
|⌃⌘s | |} |wrap {} no spaces |
|⌃⌘s | |< |wrap <> with spaces |
|⌃⌘s | |> |wrap <> no spaces |
|⌃⌘s | |' |wrap single quotes |
|⌃⌘s | |` |wrap backticks |


|Jekyll Shortcuts (⌃⌘j)||||
|:----:|:----:|:----:|:----|
|⌃⌘j | |p |Pullquote Liquid Tag (new) |
|⌃⌘j | |r |Raw Liquid Tag (new) |
|⌃⌘j | |⇧r |Raw Tag for entire paragraph (new) |


|TaskPaper Tags (⌃⌘t)||||
|:----:|:----:|:----:|:----|
|⌃⌘t | |d |@done (new) |
|⌃⌘t | |p |// @priority() (new) |
|⌃⌘t | |n |@na (new) |
|⌃⌘t | |t |@today (new) |


|SearchLink commands (⌃⌘g)||||
|:----:|:----:|:----:|:----|
|⌃⌘g | |g |SearchLink Syntax: Google (new) |
|⌃⌘g | |⇧a |SearchLink Syntax: Amazon (new) |
|Apple (a)||||
|⌃⌘g |a |i |SearchLink Syntax: iOS App (new) |
|⌃⌘g |a |m |SearchLink Syntax: Mac App Store (new) |
|||||
|⌃⌘g | |s |SearchLink Syntax: Software (new) |
|⌃⌘g | |m |SearchLink Syntax: IMDB (new) |
|⌃⌘g | |b |SearchLink Syntax: BrettTerpstra.com (new) |
|⌃⌘g | |p |SearchLink Syntax: BrettTerpstra.com Projects (new) |
|⌃⌘g | |t |SearchLink Syntax: Twitter User (new) |

This documentation is generated automatically from the comments and commands in the DefaultKeyBinding.dict file. The script `document_keybindings.rb` is free for use, but it's specifically designed for use with my formatting in the bindings plist (i.e. it's a little finicky).

