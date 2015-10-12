# Learn Vim: Step by Step

## Teach yourself Vim

### Javier Tiá / October 13, 2015

#### javier.tia@gmail.com or javier.tia@hpe.com

---

# Level 1 - Survive

---

## Only five commands

- **`i`** → Insert mode. Type ESC to return to Normal mode
- **`x`** → Delete the char under the cursor
- **`:wq`** → Save and Quit (**`:w save`**, **`:q`** quit)
- **`dd`** → Delete (and copy) the current line
- **`p`** → Paste

Note:

In a standard editor, typing on the keyboard is enough to write something and
see it on the screen. Not this time. Vim is in Normal mode. Let's go to Insert
mode. Type the letter i.

To get back to Normal mode just press the ESC key.

You now know how to switch between Insert and Normal mode.

--

## Cursor move

- **`hjkl`** (highly recommended but not mandatory), basic cursor move (**`← ↓ ↑ →`**). Hint: **`j`** looks like a down arrow
- **`:help <command>`** → Show help about <command>. You can use **`:help`** without a <command> to get general help

---

# Level 2 - Feel comfortable

---

## Insert mode variations

- **`a`** → insert after the cursor
- **`o`** → insert a new line after the current one
- **`O`** → insert a new line before the current one
- **`cw`** → replace from the cursor to the end of the word

---

## Basic moves

- **`0`** → go to the first column
- **`^`** → go to the first non-blank character of the line
- **`$`** → go to the end of line
- **`g\_`** → go to the last non-blank character of line
- **`/pattern`** → search for pattern

---

## Copy/Paste and Undo/Redo

- **`P`** → paste before, remember **`p`** is paste after current position
- **`yy`** → copy the current line, easier but equivalent to **`ddP`**
- **`u`** → undo
- **`<Ctrl-r>`** → redo

---

## Load/Save/Quit/Change File

- **`:e`** <path/to/file> → open
- **`:w`** → save
- **`:saveas`** <path/to/file> → save to <path/to/file>
- **`:wq`** → save and quit
- **`:q!`** → quit without saving, also **`:qa!`** to quit even if there are modified hidden buffers
- **`:bn`** (resp. **`:bp`**) → show next (resp. previous) file (buffer)

---

# 3rd Level – Better & Stronger & Faster

---

## Better

- **`.`** → will repeat the last command
- _N_**`<command>`** → will repeat the command _N_ times

--

### Better example

- **`2dd`** → will delete 2 lines
- **`3p`** → will paste the text 3 times
- **`5idesu [ESC]`** → will write "desu desu desu desu desu"

---

## Stronger

- _N_**`G`** → go to line _N_
- **`gg`** → shortcut for **`1G`** - go to the start of the file
- **`G`** → go to last line

--

## Stronger - Word moves

- **`w`** → go to the start of the following word
- **`e`** → go to the end of this word

- **`W`** → go to the start of the following WORD
- **`E`** → go to the end of this WORD

Note:

By default, words are composed of letters and the underscore character. Let's
call a WORD a group of letter separated by blank characters. If you want to
consider WORDS, then just use uppercase characters.

--

## Stronger - More efficient moves

- **`%`** → go to the corresponding _(_, _{_, _[_ characters
- **`*`** → go to next occurrence of the word under the cursor
- **`#`** → go to previous ccurrence of the word under the cursor
- **`n`** and **`p`** → same as **`*`** and **`#`**

Note:

These commands are gold

---

## Faster

**`<start position><command><end position>`**

**`0y$`** means:

- **`0`** → go to the beginning of this line
- **`y`** → yank from here
- **`$`** → up to the end of this line

Note:

We also can do things like ye, yank from here to the end of the word. But also
y2/foo yank up to the second occurrence of "foo".

But what was true for y (yank), is also true for d (delete), v (visual select),
gU (uppercase), gu (lowercase), etc...

--

## Insert image here

---

# 4th Level – Vim Superpowers

---

## Move on current line

- **`0`** → go to column _0_
- **`^`** → go to first character on the line
- **`$`** → go to the last column
- **`g_`** → go to the last character on the line
- **`fa`** → go to next occurrence of the letter _a_ on the line
- **`;`** → will find the next occurrence
- **`t,`** → go to just before the character _,_
- **`3fa`** → find the 3rd occurrence of _a_ on this line
- **`F`** and **`T`** → like **`f`** and **`t`** but backward
