# Learn Vim: Step by Step

## Teach yourself Vim

### Javier Tiá / October 13, 2015

---

# Level 1: Survive

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

# Level 2: Feel comfortable

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
