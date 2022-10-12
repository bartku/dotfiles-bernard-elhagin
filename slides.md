
# Itinerary

   1. How and why Vim is unique
   2. Basic motions
   3. Operators
   4. Text objects
   5. Combining operators with motions and text objects
   6. Insert mode

---

# How and why Vim is unique (1)

  0. Vi + Improved = Vim
  0. Keyboard layout - the home row ASDF JKL;
  0. The [ADM-3A](http://xahlee.info/kbd/iold51593/ADM-3A_keyboard_cb140.jpg)

>:help develop.txt

---

# How and why Vim is unique (2)

Vim is

  1. ...ubiquitous
  2. ...extremely efficient
  3. ...extremely customizable
  4. ...extremely fast

>:help develop.txt

---

# Basic motions


  *h j k l*        left, down, up, right
  *w/W*            forward one word/WORD
  *b/B*            back one word/WORD
  *) (*            forward/back to next/previous sentence
  *} {*            forward/back to next/previous empty line
  *^ g_*           to the first/last non-blank character in the line
  *0 $*            to the beginning/end of the line
  *f/F[char]*      forward/back to next/previous occurance of [char] in current line
  *t/T[char]*      forward/back to one character before next/previous occurance of [char] in current line
  *; ,*            repeat last f F or t T motion
  *gg*             beggining of file
  *G*              end of file
  *%*              to matching ( { [ <
  *<C-F>*          page down (forward)
  *<C-B>*          page up (backwards)
  *<C-D>*          half a page down (forward)
  *<C-U>*          half a page up (backwards)
  *<C-Y>*          scroll one line up
  *<C-E>*          scroll one line down

>:help motion.txt

---

# Text objects

  *iw*      inside word
  *aw*      around word
  *iW*      inside WORD
  *aW*      around WORD
  *ip*      inside paragraph
  *ap*      around paragraph
  *i{*      inside  { }
  *a{*      around  { }
  *i(*      inside  ( )
  *a(*      around  ( )
  *i"*      inside  " "
  *a"*      around  " "
  *it*      inside  <tag/>
  *at*      around  <tag/>

>:help text-objects

---

# Operator + motion/text-object

   __delete__   (d)
   __change__   (c)
   __yank__     (y)
   __indent__   (>)
   __outdent__  (<)
   __toUpper__  (gU)
   __toLower__  (gu)

  *diw*     delete inside word
  *daw*     delete around word
  *diW*     delete inside WORD
  *daW*     delete around WORD
  *cip*     change inside paragraph
  *cap*     change around paragraph
  *yi{*     yank inside  { }
  *ya{*     yank around  { }
  *gUi"*    make everything in double quotes UPPERCASE
  *>ip*     indent inside paragraph

> Operations and motions can be prepended with a count!
>
> *5dw*  delete 5 words
> *12j*  go down 12 lines
> *3$*   go to the end of 3 lines, including the current one

---

# Insert mode

  *i* - enter insert mode at cursor
  *I* - enter insert mode at first non-blank character
  *s* - delete character under cursor and enter insert mode
  *S* - delete whole line and start insert mode at the beginning of same line
  *a* - move right one character and enter insert mode
  *A* - move to the end of the line and enter insert mode
  *o* - create new empty line under current line and enter insert mode
  *O* - create new empty line above current line and enter insert mode
  *C* - delete from the cursor to the end of the line and enter insert mode

---

# Dealing with ESC

  1. Just use ESC
  2. Use Ctrl-[
  3. Remap CAPS-LOCK to ESC
  4. :noremap jk
  5. [Vim Clutch](https://boingboing.net/2018/03/12/the-vim-clutch-a-footpeda.html)

---

# Useful settings

  1. persistent history

---

# Learning Vim

  1. vimtutor
  2. what do you do very often - map it
  3. cheatsheet (5 - 10 new things)
  4. :help user-manual
  5. :help quickref
  6. Drew Neil "Practical Vim" & vimcast.org
