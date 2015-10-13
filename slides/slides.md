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

--

## Insert image here

---

## Zone selection

**`<action>a<object>`** and **`<action>i<object>`**

Suppose the cursor is on the first _o_ of _(map (+) ("foo"))_

- **`vi"`** → will select _foo_
- **`va"`** → will select _"foo"_
- **`vi)`** → will select _"foo"_
- **`va)`** → will select _("foo")_
- **`v2i)`** → will select _map (+) ("foo") _
- **`v2a)`** → will select _(map (+) ("foo"))_

Note:

These command can only be used after an operator in visual mod

Where action can be any action, for example, d (delete), y (yank), v (select in
visual mode). The object can be: w a word, W a WORD (extended word), s a
sentence, p a paragraph. But also, natural character such as ", ', ), }, ].

--

## Insert image here

---

## Select rectangular blocks

- **`^`** → go to the first non-blank character of the line
- **`<Ctrl-v>`** → Start block selection
- **`<Ctrl-d>`** → move down; could also be **`jjj`** or **`%`** or ...
- **`I--`** and [ESC] → write _--_ to comment each line

---

## Macros

- **`qa`** record your actions in the register _a_
- **`@a`** will replay the macro saved into the register _a_ as if you typed it
- **`@@`** is a shortcut to replay the last executed macro

Note:

_a_ just an register example. You could be use since _a_ to _z_

--

## A macro to count until 10

**`qaYp<C-a>q`**

- **`qa`** start recording.
- **`Yp`** duplicate this line.
- **`<C-a>`** increment the number.
- **`q`** stop recording.
- **`@a`** → write 2 under the 1
- **`@@`** → write 3 under the 2

- **`10@@`** will create a list of increasing numbers until 13

---

## Visual selection

- **`v`** → select character by character
- **`V`** → select a whole line
- **`J`** → join all the lines together
- **`<`** and **`>`** → indent to the left and right
- **`=`** → auto indent

---

# Level 5th - Vim as IDE

## Featured plugins

---

## spf13-vim - A Vim Distribution

- It has an excellent configuration
- `.vimrc` file is suited for programming
- It fixes many of the inconveniences of vanilla Vim config
- For personal customizations use: `~/.vimrc.local` and `~/.vimrc.bundles.local`
  (additonal plugins)

Note:

- Vim is a text editor, but with plugins you can convert it to an
  IDE
- spf13-vim has a Vim Plugin Manager and good default selection of plugins
- Eliminates swap and backup files from littering directories, preferring to
  store in a central location
- Fixes common typos like :W, :Q, etc
- Setup a solid set of settings for Formatting (change to meet your needs)
- Setup the interface to take advantage of vim's features including:
    omnicomplete
    line numbers
    syntax highlighting
    A better ruler & status line
    & more

---

## spf13-vim Install and Update

Install

```sh
$ curl http://j.mp/spf13-vim3 -L -o - | sh
```

Update

```sh
$ alias update-spf13-vim="( \
    cd $HOME/.spf13-vim-3 \
    && git pull \
    && vim +BundleInstall! +BundleClean +q )"
```

---

## Vundle - A Plugin Manager

- spf13-vim uses the Vundle plugin management system to have a well organized
  vim directory
- It ensures that the latest versions of your plugins are installed
- It make easy to keep the plugins up to date

---

## NERDTree - File Navigation Plugin

- NERDTree is a file explorer plugin
- **`<Leader>e`** → quickStart launch

---

## Ctrlp - Fast File Finder

- It provides an intuitive and fast mechanism to load files (with regex and fuzzy find)
