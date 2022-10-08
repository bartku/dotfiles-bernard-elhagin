
# Itinerary

   0. How and why Vim is unique
   0. Basic motions
   0. Operators
   0. Text objects
   0. Combining operators with motions and text objects
   0. Insert mode

---

# How and why Vim is unique

  0. Vi + Improved = Vim
  0. The [ADM-3A](https://upload.wikimedia.org/wikipedia/commons/7/77/Adm3aimage.jpg)
  0. Keyboard layout - the home row ASDF JKL;
  0. Dealing with ESC


>:help develop.txt

---

# Basic motions


  *h j k l*        left, down, up, right
  *w/W*            forward one word/WORD
  *b/B*            back one word/WORD
  *}*              forward to next empty line
  *{*              back to previous empty line
  *(*              back to previous sentence
  *)*              forward to next sentence
  *^*              to the beggining of the line
  *$*              to the end of the line
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

   delete   (d)
   change   (c)
   yank     (y)
   indent   (>)
   outdent  (<)
   toUpper  (gU)
   toLower  (gu)

  *diw*     delete inside word
  *daw*     delete around word
  *diW*     delete inside WORD
  *daW*     delete around WORD
  *cip*     change inside paragraph
  *cap*     change around paragraph
  *yi{*     yank inside  { }
  *ya{*     yank around  { }
  *gUi"*    make everything in " " UPPERCASE
  *>ip*     indent inside paragraph

>
> Operations and motions can be prepended with a count!
>

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

# Useful settings

  1. persistent history

---

# Learning Vim

  1. vimtutor
  2. what do you do very often - map it
  3. cheatsheet (5 - 10 new things)
  4. :help user-manual
  5. Drew Neil "Practical Vim" & vimcast.org
