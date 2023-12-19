DefaultKeyBinding.dict file (`~/Library/KeyBindings/DefaultKeyBinding.dict`) for Mac OS X, created by [Brett Terpstra][]
and based heavily on work done by Lri. Please note that these bindings won't work in all applications: TextWrangler
and TextMate, for example, override these with their own settings.

**Installation**: Copy the DefaultKeyBinding.dict file to the `~/Library/KeyBindings/` directory (create `KeyBindings`
if it doesn't already exist). Any open applications will need to be re-started before the key bindings will take
effect --- or log out and log back in.

The repository includes a script to generate a Dash docset from your customized version of the file.
[See here for details.](https://brettterpstra.com/2022/02/18/keybindings-cheat-sheet-for-dash/)

**Documentation** _(last updated 12/19/2023.)_

*Grouped items begin with the groups shortcut (if exists), followed by a subgroup (if exists) followed by the keys specified.*

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="2">General Commands</th>
</tr>
<tr>
	<th style="text-align:center;">Key</th>
	<th style="text-align:left;">Function</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃y</td>
	<td style="text-align:left;">Replace yank: command with yankAndSelect for use with the kill ring (defaults write -g NSTextKillRingSize -int 6)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧u</td>
	<td style="text-align:left;">Uppercase word</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥u</td>
	<td style="text-align:left;">Lowercase word</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥t</td>
	<td style="text-align:left;">Titlecase word</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧u</td>
	<td style="text-align:left;">Uppercase current paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧t</td>
	<td style="text-align:left;">Titlecase paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌃w</td>
	<td style="text-align:left;">Delete word before cursor</td>
</tr>
<tr>
	<td style="text-align:center;">⌥w</td>
	<td style="text-align:left;">Select word</td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧w</td>
	<td style="text-align:left;">Select word backward and modify selection</td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧s</td>
	<td style="text-align:left;">Select entire line/paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌥s</td>
	<td style="text-align:left;">Select from beginning of paragraph to last character</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧s</td>
	<td style="text-align:left;">Select paragraph excluding leading/trailing whitespace (same as ^$@\UF701)</td>
</tr>
<tr>
	<td style="text-align:center;">⌥d</td>
	<td style="text-align:left;">Delete line/paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌥y</td>
	<td style="text-align:left;">Copy paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌥x</td>
	<td style="text-align:left;">Cut paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌥p</td>
	<td style="text-align:left;">Paste paragraph below</td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧p</td>
	<td style="text-align:left;">Paste paragraph above</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧a</td>
	<td style="text-align:left;">Select to beginning of paragraph and copy</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧e</td>
	<td style="text-align:left;">Select to end of paragraph and copy</td>
</tr>
<tr>
	<td style="text-align:center;">⌥q</td>
	<td style="text-align:left;">Cut to beginning of paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌥k</td>
	<td style="text-align:left;">Cut to end of paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌥o</td>
	<td style="text-align:left;">Blank line after current</td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧o</td>
	<td style="text-align:left;">Blank line before current</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘↑</td>
	<td style="text-align:left;">Move line up (same commands but with arrow keys)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘↓</td>
	<td style="text-align:left;">Move line down</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘→</td>
	<td style="text-align:left;">Indent line</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘←</td>
	<td style="text-align:left;">Outdent line (one tab or char)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧⌘←</td>
	<td style="text-align:left;">Full outdent - Deletes all leading space of line/paragraph (updated) (Control-shift-command-left arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧⌘→</td>
	<td style="text-align:left;">Delete trailing space (Control-shift-command-right arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘⇧↑</td>
	<td style="text-align:left;">Delete leading and trailing whitespace for paragraph (Control-shift-command-up arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘⇧↓</td>
	<td style="text-align:left;">Select paragraph without leading or trailing whitespace (Control-shift-command-down arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧↑</td>
	<td style="text-align:left;">Modify selection up by paragraph (Control Option Shift Up) (Control-option-shift-up arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧↓</td>
	<td style="text-align:left;">Modify selection down by paragraph (Control Option Shift Down) (Control-option-shift-down arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧←</td>
	<td style="text-align:left;">Modify selection left by word (Control-option-shift-left arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧→</td>
	<td style="text-align:left;">Modify selection right by word (Control-option-shift-right arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⌃←</td>
	<td style="text-align:left;">Move to first Alphanumeric character of line (Control-option-up arrow Control-option-command-left arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥←</td>
	<td style="text-align:left;">Move to first non-whitespace character of line (Control-options-left arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⇧←</td>
	<td style="text-align:left;">Select to first word of paragraph modifying selection (Options-shift-command-left arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⇧→</td>
	<td style="text-align:left;">Select to end of paragraph modifying selection (Option-shift-command-right arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌥⌘→</td>
	<td style="text-align:left;">Move to last non-whitespace character of paragraph (Option-command-right arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥→</td>
	<td style="text-align:left;">Move to end of paragraph and delete trailing whitespace (Control-option-right arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘↩</td>
	<td style="text-align:left;">TextMate Command-Return (Command Return)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⇧↩</td>
	<td style="text-align:left;">Insert blank line above paragraph (Command Shift Return)</td>
</tr>
<tr>
	<td style="text-align:center;">⇧⌥␣</td>
	<td style="text-align:left;">Insert space and uppercase next character (Shift-Option-Space)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧␣</td>
	<td style="text-align:left;">Uppercase next character (Control-Shift-Space)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥␣</td>
	<td style="text-align:left;">Move cursor forward with spacebar (shift-space)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥_</td>
	<td style="text-align:left;">Hyphenate next space and move to next word (this will kill non alphanumeric symbols and punctuation, use only on <em>words</em>)</td>
</tr>
<tr>
	<td style="text-align:center;">⌥1</td>
	<td style="text-align:left;">Bookmark</td>
</tr>
<tr>
	<td style="text-align:center;">⌥2</td>
	<td style="text-align:left;">Jump to bookmark</td>
</tr>
<tr>
	<td style="text-align:center;">⌥⌘↩</td>
	<td style="text-align:left;">Continue a list item with indentation and include the same delimiter (Command Option Return)</td>
</tr>
<tr>
	<td style="text-align:center;">⇧⇥</td>
	<td style="text-align:left;">Remove one tab (or character) from start of line (outdent) (Shift Tab)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥b</td>
	<td style="text-align:left;">Bold selection (Markdown)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥i</td>
	<td style="text-align:left;">Italicize selection (Markdown)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥`</td>
	<td style="text-align:left;">Backtick selection (Markdown)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘↩</td>
	<td style="text-align:left;">Break line with double space (Markdown) (Control-Command-Return)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥=</td>
	<td style="text-align:left;">Increase markdown header level</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥-</td>
	<td style="text-align:left;">Decrease markdown header level</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥&gt;</td>
	<td style="text-align:left;">Increase blockquote header level</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥&lt;</td>
	<td style="text-align:left;">Decrease blockquote level</td>
</tr>
<tr>
	<td style="text-align:center;">⌃&lt;</td>
	<td style="text-align:left;">Make selected text into paired HTML tag. Allows attributes, only dupes first word into closing tag (caveat: overwrites your pasteboard)</td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧r</td>
	<td style="text-align:left;">Repeat character before cursor</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⇧⌦</td>
	<td style="text-align:left;">Forward delete to end of paragraph</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⇧⌫</td>
	<td style="text-align:left;">Delete to beginning of paragraph (Command-shift-delete)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥7</td>
	<td style="text-align:left;">Right mouse click (useless, doesn&#8217;t maintain cursor position)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⇧s</td>
	<td style="text-align:left;">Real, honest-to-goodnes Save As&#8230;</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">Multi&#8211;stroke casing commands (⌃⌥c)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌥c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Snake_case to camelCase (delete forward and capitalize)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">s </td>
	<td style="text-align:left;">Snake_case word break</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">Commenting commands (⌃⌘c)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌘c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">/ </td>
	<td style="text-align:left;">Comment with &#8220;//&#8221;</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">&nbsp;</td>
	<td style="text-align:left;">Comment with &#8220;#&#8221;</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">! </td>
	<td style="text-align:left;">HTML commenting</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">* </td>
	<td style="text-align:left;">Css Commenting</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">Multi&#8211;stroke Markdown commands (⌃⌘w)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">␍ </td>
	<td style="text-align:left;">Force carriage return in text field</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">⇥ </td>
	<td style="text-align:left;">Force tab in text field</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">[ </td>
	<td style="text-align:left;">Insert reference link <code>[selection][[cursor]]</code></td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">] </td>
	<td style="text-align:left;">Insert reference <code>[selection]: [cursor]</code></td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">` </td>
	<td style="text-align:left;">Fence code (new) (Requires text selection)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">f </td>
	<td style="text-align:left;">Insert inline footnote marker or inline footnote (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">+ </td>
	<td style="text-align:left;">Unordered list item with +</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">- </td>
	<td style="text-align:left;">Unordered list item with -</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">* </td>
	<td style="text-align:left;">Unordered list item with *</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">. </td>
	<td style="text-align:left;">Numeric list item (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">8 </td>
	<td style="text-align:left;">Convert current numbered list item to bullet, handles indentation</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">1 </td>
	<td style="text-align:left;">Convert current bullet list item to numbered</td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Headlines (removes leading whitespace after inserting hashmarks) (h)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">1 </td>
	<td style="text-align:left;">#</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">2 </td>
	<td style="text-align:left;">##</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">3 </td>
	<td style="text-align:left;">###</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">4 </td>
	<td style="text-align:left;">####</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">5 </td>
	<td style="text-align:left;">#####</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">6 </td>
	<td style="text-align:left;">######</td>
</tr>
<tr>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Markdown link (l)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">l </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Create a link for selected text, cursor between () <code>[selected text]([cursor])</code> (links without selected text first, these can produce a mess using multiple clipboards make a text selection before you run them)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">l </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Create a link for selected text, inserting clipboard as url <code>[[cursor]selected text](clipboard contents)</code></td>
</tr>
<tr>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">s </td>
	<td style="text-align:left;">SearchLink Basic Link</td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Link as image (i)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Same as lt, but with image syntax <code>\!\[selected text]([cursor])</code></td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Same as lc, but with image syntax <code>\!\[selected text](clipboard)</code></td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">d </td>
	<td style="text-align:left;">Same as lc, but with image syntax and &#8220;+&#8221; for Droplr links <code>![selected text](clipboard+)</code></td>
</tr>
<tr>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Reference links (:)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">: </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Create a reference from selected text</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">: </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Create a reference from selected text, clipboard as url</td>
</tr>
<tr>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">HTML commands (⌃⌘e)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">= </td>
	<td style="text-align:left;">=&#8220;[cursor]&#8221;</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">e </td>
	<td style="text-align:left;">Entity &amp;[cursor];</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">/ </td>
	<td style="text-align:left;">Https://</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Make previous word into paired HTML tag</td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">HTML Links (a)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Insert HTML link for selected text, leave cursor in the href with &#8220;https://&#8221; selected</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Insert HTML link with clipboard as href</td>
</tr>
<tr>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">HTML Image (i)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Insert image tag, any selected text is alt text, leave cursor in src attribute</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Insert image tag, clipboard as src, any selected text as alt, leave cursor at beginning of alt attribute</td>
</tr>
<tr>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">Surround commands (⌃⌘s)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">( </td>
	<td style="text-align:left;">Wrap () no spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">) </td>
	<td style="text-align:left;">Wrap () with spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">[ </td>
	<td style="text-align:left;">Wrap [] no spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">] </td>
	<td style="text-align:left;">Wrap [] with spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">{ </td>
	<td style="text-align:left;">Wrap {} no spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">} </td>
	<td style="text-align:left;">Wrap {} with spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">&lt; </td>
	<td style="text-align:left;">Wrap &lt;&gt; no spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">&gt; </td>
	<td style="text-align:left;">Wrap &lt;&gt; with spaces</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">' </td>
	<td style="text-align:left;">Wrap single quotes</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">` </td>
	<td style="text-align:left;">Wrap backticks</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">Jekyll Shortcuts (⌃⌘j)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌘j </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">p </td>
	<td style="text-align:left;">Pullquote Liquid Tag (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘j </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">r </td>
	<td style="text-align:left;">Raw Liquid Tag (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘j </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">⇧r </td>
	<td style="text-align:left;">Raw Tag for entire paragraph (new)</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">TaskPaper Tags (⌃⌘t)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌘t </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">d </td>
	<td style="text-align:left;">@done (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘t </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">p </td>
	<td style="text-align:left;">// @priority() (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘t </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">n </td>
	<td style="text-align:left;">@na (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘t </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">@today (new)</td>
</tr>
</tbody>
</table>

<table>
<colgroup>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:center;"/>
<col style="text-align:left;"/>
</colgroup>

<thead>
<tr>
	<th style="text-align:center;" colspan="4">SearchLink commands (⌃⌘g)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">g </td>
	<td style="text-align:left;">SearchLink Syntax: Google (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">⇧a </td>
	<td style="text-align:left;">SearchLink Syntax: Amazon (new)</td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Apple (a)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:left;">SearchLink Syntax: iOS App (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">m </td>
	<td style="text-align:left;">SearchLink Syntax: Mac App Store (new)</td>
</tr>
<tr>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">s </td>
	<td style="text-align:left;">SearchLink Syntax: Software (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">m </td>
	<td style="text-align:left;">SearchLink Syntax: IMDB (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">b </td>
	<td style="text-align:left;">SearchLink Syntax: BrettTerpstra.com (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">p </td>
	<td style="text-align:left;">SearchLink Syntax: BrettTerpstra.com Projects (new)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">SearchLink Syntax: Twitter User (new)</td>
</tr>
</tbody>
</table>

This documentation is generated automatically from the comments and commands in the DefaultKeyBinding.dict file. The script `document_keybindings.rb` is free for use, but it's specifically designed for use with my formatting in the bindings plist (i.e. it's a little finicky).

