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
	<td style="text-align:left;">replace yank: command with yankAndSelect for use with the kill ring ( defaults write -g NSRepeatCountBinding -string &#8220;<sup>u</sup>&#8221; defaults write -g NSTextKillRingSize -int 6)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧u</td>
	<td style="text-align:left;">uppercase word </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥u</td>
	<td style="text-align:left;">lowercase word </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥t</td>
	<td style="text-align:left;">titlecase word </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧u</td>
	<td style="text-align:left;">uppercase current paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧t</td>
	<td style="text-align:left;">titlecase paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌃w</td>
	<td style="text-align:left;">delete word before cursor </td>
</tr>
<tr>
	<td style="text-align:center;">⌥w</td>
	<td style="text-align:left;">select word </td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧w</td>
	<td style="text-align:left;">select word backward and modify selection </td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧s</td>
	<td style="text-align:left;">select entire line/paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌥s</td>
	<td style="text-align:left;">select from beginning of paragraph to last character </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧s</td>
	<td style="text-align:left;">select paragraph excluding leading/trailing whitespace (same as ^$@\UF701) </td>
</tr>
<tr>
	<td style="text-align:center;">⌥d</td>
	<td style="text-align:left;">delete line/paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌥y</td>
	<td style="text-align:left;">copy paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌥x</td>
	<td style="text-align:left;">cut paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌥p</td>
	<td style="text-align:left;">paste paragraph below </td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧p</td>
	<td style="text-align:left;">paste paragraph above </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧a</td>
	<td style="text-align:left;">select to beginning of paragraph and copy </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧e</td>
	<td style="text-align:left;">select to end of paragraph and copy </td>
</tr>
<tr>
	<td style="text-align:center;">⌥q</td>
	<td style="text-align:left;">cut to beginning of paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌥k</td>
	<td style="text-align:left;">cut to end of paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌥o</td>
	<td style="text-align:left;">blank line after current </td>
</tr>
<tr>
	<td style="text-align:center;">⌥⇧o</td>
	<td style="text-align:left;">blank line before current </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘↑</td>
	<td style="text-align:left;">Move line up </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘↓</td>
	<td style="text-align:left;">Move line down </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘→</td>
	<td style="text-align:left;">Indent line </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘←</td>
	<td style="text-align:left;">Outdent line (one tab or char) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧⌘←</td>
	<td style="text-align:left;">Full outdent - Deletes all leading space of line/paragraph (updated) ( Control-shift-command-left arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧⌘→</td>
	<td style="text-align:left;">Delete trailing space ( Control-shift-command-right arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘⇧↑</td>
	<td style="text-align:left;">Delete leading and trailing whitespace for paragraph ( Control-shift-command-up arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘⇧↓</td>
	<td style="text-align:left;">Select paragraph without leading or trailing whitespace ( Control-shift-command-down arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧↑</td>
	<td style="text-align:left;">modify selection up by paragraph (Control Option Shift Up) ( Control-option-shift-up arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧↓</td>
	<td style="text-align:left;">modify selection down by paragraph (Control Option Shift Down) ( Control-option-shift-down arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧←</td>
	<td style="text-align:left;">modify selection left by word ( Control-option-shift-left arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥⇧→</td>
	<td style="text-align:left;">modify selection right by word ( Control-option-shift-right arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⌃←</td>
	<td style="text-align:left;">Move to first Alphanumeric character of line ( Control-option-up arrow)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥←</td>
	<td style="text-align:left;">Move to first non-whitespace character of line </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⇧←</td>
	<td style="text-align:left;">Select to first word of paragraph modifying selection </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⇧→</td>
	<td style="text-align:left;">Select to end of paragraph modifying selection </td>
</tr>
<tr>
	<td style="text-align:center;">⌥⌘→</td>
	<td style="text-align:left;">Move to last non-whitespace character of paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥→</td>
	<td style="text-align:left;">Move to end of paragraph and delete trailing whitespace </td>
</tr>
<tr>
	<td style="text-align:center;">⌘↩</td>
	<td style="text-align:left;">TextMate Command-Return (Command Return) </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⇧↩</td>
	<td style="text-align:left;">Insert blank line above paragraph (Command Shift Return) </td>
</tr>
<tr>
	<td style="text-align:center;">⇧⌥␣</td>
	<td style="text-align:left;">Insert space and uppercase next character (Shift-Option-Space) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⇧␣</td>
	<td style="text-align:left;">Uppercase next character (Control-Shift-Space) </td>
</tr>
<tr>
	<td style="text-align:center;">⇧␣</td>
	<td style="text-align:left;">Move cursor forward with spacebar (shift-space) </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥_</td>
	<td style="text-align:left;">hyphenate next space and move to next word ( this will kill non alphanumeric symbols and punctuation, use only on <em>words</em>)</td>
</tr>
<tr>
	<td style="text-align:center;">⌥1</td>
	<td style="text-align:left;">bookmark </td>
</tr>
<tr>
	<td style="text-align:center;">⌥2</td>
	<td style="text-align:left;">jump to bookmark </td>
</tr>
<tr>
	<td style="text-align:center;">⌥⌘↩</td>
	<td style="text-align:left;">Continue a list item with indentation and include the same delimiter ( Command Option Return)</td>
</tr>
<tr>
	<td style="text-align:center;">⇧⇥</td>
	<td style="text-align:left;">remove one tab (or character) from start of line (outdent) ( Shift Tab)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥b</td>
	<td style="text-align:left;">bold selection (Markdown) </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥i</td>
	<td style="text-align:left;">italicize selection (Markdown) </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥`</td>
	<td style="text-align:left;">backtick selection (Markdown) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘↩</td>
	<td style="text-align:left;">break line with double space (Markdown) (Control-Command-Return) </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥=</td>
	<td style="text-align:left;">increase markdown header level </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥-</td>
	<td style="text-align:left;">decrease markdown header level </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥&gt;</td>
	<td style="text-align:left;">increase blockquote header level </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥&lt;</td>
	<td style="text-align:left;">decrease blockquote level </td>
</tr>
<tr>
	<td style="text-align:center;">⌃&lt;</td>
	<td style="text-align:left;">Make selected text into paired HTML tag. Allows attributes, only dupes first word into closing tag (caveat: overwrites your pasteboard) </td>
</tr>
<tr>
	<td style="text-align:center;">⌥r</td>
	<td style="text-align:left;">repeat character before cursor </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⇧⌦</td>
	<td style="text-align:left;">Forward delete to end of paragraph </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⇧⌫</td>
	<td style="text-align:left;">Delete to beginning of paragraph ( Command-shift-delete)</td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥7</td>
	<td style="text-align:left;">Right mouse click (useless, doesn&#8217;t maintain cursor position) </td>
</tr>
<tr>
	<td style="text-align:center;">⌘⌥⇧s</td>
	<td style="text-align:left;">Real, honest-to-goodnes Save As&#8230; </td>
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
	<th style="text-align:center;" colspan="4">multi&#8211;stroke casing commands (⌃⌥c)</th>
</tr>
</thead>

<tbody>
<tr>
	<td style="text-align:center;">⌃⌥c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">snake_case to camelCase (delete forward and capitalize) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌥c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">s </td>
	<td style="text-align:left;">snake_case word break </td>
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
	<td style="text-align:left;">comment with &#8220;//&#8221; </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">&nbsp;</td>
	<td style="text-align:left;">comment with &#8220;#&#8221; </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">! </td>
	<td style="text-align:left;">HTML commenting </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘c </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">* </td>
	<td style="text-align:left;">Css Commenting </td>
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
	<td style="text-align:left;">force carriage return in text field </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">⇥ </td>
	<td style="text-align:left;">force tab in text field </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">[ </td>
	<td style="text-align:left;">insert reference link <code>[selection][[cursor]]</code> </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">] </td>
	<td style="text-align:left;">insert reference <code>[selection]: [cursor]</code> </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">+ </td>
	<td style="text-align:left;">Unordered list item with + </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">- </td>
	<td style="text-align:left;">Unordered list item with - </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">* </td>
	<td style="text-align:left;">Unordered list item with * </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">8 </td>
	<td style="text-align:left;">convert current numbered list item to bullet, handles indentation </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">1 </td>
	<td style="text-align:left;">convert current bullet list item to numbered </td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Headlines (removes leading whitespace after inserting hashmarks) (h)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">1 </td>
	<td style="text-align:left;"># </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">2 </td>
	<td style="text-align:left;">## </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">3 </td>
	<td style="text-align:left;">### </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">4 </td>
	<td style="text-align:left;">#### </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">5 </td>
	<td style="text-align:left;">##### </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">h </td>
	<td style="text-align:center;">6 </td>
	<td style="text-align:left;">###### </td>
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
	<td style="text-align:left;">create a link for selected text, cursor between () <code>[selected text]([cursor])</code> ( links without selected text first, these can produce a mess using multiple clipboards make a text selection before you run them)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">l </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">create a link for selected text, inserting clipboard as url <code>[[cursor]selected text](clipboard contents)</code> </td>
</tr>
<tr>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">s </td>
	<td style="text-align:left;">SearchLink Basic Link </td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Link as image (i)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">same as lt, but with image syntax <code>\!\[selected text]([cursor])</code> </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">same as lc, but with image syntax <code>\!\[selected text](clipboard)</code> </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">d </td>
	<td style="text-align:left;">same as lc, but with image syntax and &#8220;+&#8221; for Droplr links <code>\!\[selected text](clipboard+)</code> </td>
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
	<td style="text-align:left;">create a reference from selected text </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘w </td>
	<td style="text-align:center;">: </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">create a reference from selected text, clipboard as url </td>
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
	<td style="text-align:left;">=&#8220;[cursor]&#8221; </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">e </td>
	<td style="text-align:left;">entity &amp;[cursor]; </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">/ </td>
	<td style="text-align:left;">http:// </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Make previous word into paired HTML tag </td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">HTML Links (a)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">Insert HTML link for selected text, leave cursor in the href with &#8220;http://&#8221; selected </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Insert HTML link with clipboard as href </td>
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
	<td style="text-align:left;">Insert image tag, any selected text is alt text, leave cursor in src attribute </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘e </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:center;">c </td>
	<td style="text-align:left;">Insert image tag, clipboard as src, any selected text as alt, leave cursor at beginning of alt attribute </td>
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
	<td style="text-align:left;">wrap () with spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">) </td>
	<td style="text-align:left;">wrap () no spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">[ </td>
	<td style="text-align:left;">wrap [] with spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">] </td>
	<td style="text-align:left;">wrap [] no spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">{ </td>
	<td style="text-align:left;">wrap {} with spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">} </td>
	<td style="text-align:left;">wrap {} no spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">&lt; </td>
	<td style="text-align:left;">wrap &lt;&gt; with spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">&gt; </td>
	<td style="text-align:left;">wrap &lt;&gt; no spaces </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">' </td>
	<td style="text-align:left;">wrap single quotes </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘s </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">` </td>
	<td style="text-align:left;">wrap backticks </td>
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
	<td style="text-align:left;">Pullquote Liquid Tag (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘j </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">r </td>
	<td style="text-align:left;">Raw Liquid Tag (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘j </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">⇧r </td>
	<td style="text-align:left;">Raw Tag for entire paragraph (new) </td>
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
	<td style="text-align:left;">@done (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘t </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">p </td>
	<td style="text-align:left;">// @priority() (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘t </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">n </td>
	<td style="text-align:left;">@na (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘t </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">@today (new) </td>
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
	<td style="text-align:left;">SearchLink Syntax: Google (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">⇧a </td>
	<td style="text-align:left;">SearchLink Syntax: Amazon (new) </td>
</tr>
<tr>
	<td style="text-align:center;" colspan="4">Apple (a)</td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">i </td>
	<td style="text-align:left;">SearchLink Syntax: iOS App (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;">a </td>
	<td style="text-align:center;">m </td>
	<td style="text-align:left;">SearchLink Syntax: Mac App Store (new) </td>
</tr>
<tr>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">s </td>
	<td style="text-align:left;">SearchLink Syntax: Software (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">m </td>
	<td style="text-align:left;">SearchLink Syntax: IMDB (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">b </td>
	<td style="text-align:left;">SearchLink Syntax: BrettTerpstra.com (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">p </td>
	<td style="text-align:left;">SearchLink Syntax: BrettTerpstra.com Projects (new) </td>
</tr>
<tr>
	<td style="text-align:center;">⌃⌘g </td>
	<td style="text-align:center;"> </td>
	<td style="text-align:center;">t </td>
	<td style="text-align:left;">SearchLink Syntax: Twitter User (new) </td>
</tr>
</tbody>
</table>

This documentation is generated automatically from the comments and commands in the DefaultKeyBinding.dict file. The script `document_keybindings.rb` is free for use, but it's specifically designed for use with my formatting in the bindings plist (i.e. it's a little finicky).

