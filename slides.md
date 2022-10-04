
# Itinerary

   1. How and why Vim is unique
   2. Basic motions
   3. Operators
   4. Text objects
   5. Combining operators with motions and text objects


---

# How and why Vim is unique

  1. Vi + Improved = Vim
  2. The [ADM-3A](https://upload.wikimedia.org/wikipedia/commons/7/77/Adm3aimage.jpg)
  3. Keyboard layout - the home row ASDF JKL;
  4. Dealing with ESC


>:help develop.txt

---

# Basic motions


  1.  *h j k l*        left, down, up, right
  2.  *w/W*            forward one word/WORD
  3.  *b/B*            back one word/WORD
  4.  *}*              forward to next empty line
  5.  *{*              back to previous empty line
  6.  *(*              back to previous sentence
  7.  *)*              forward to next sentence
  8.  *^*              to the beggining of the line
  9.  *$*              to the end of the line
  10. *f/F[char]*      forward/back to next/previous occurance of [char] in current line
  11. *t/T[char]*      forward/back to one character before next/previous occurance of [char] in current line
  12. *; ,*            repeat last f F or t T motion
  13. *gg*             beggining of file
  14. *G*              end of file
  15. *%*              to matching ( { [ <
  16. *<C-F>*          page down (forward)
  17. *<C-B>*          page up (backwards)
  18. *<C-D>*          half a page down (forward)
  19. *<C-U>*          half a page up (backwards)
  20. *<C-Y>*          scroll one line up
  21. *<C-E>*          scroll one line down

>:help motion.txt

---

# Text objects

  1.  *iw*      inside word
  2.  *aw*      around word
  3.  *iW*      inside WORD
  4.  *aW*      around WORD
  5.  *ip*      inside paragraph
  6.  *ap*      around paragraph
  7.  *i{*      inside  { }
  8.  *a{*      around  { }
  9.  *i(*      inside  ( )
  10. *a(*      around  ( )
  11. *i"*      inside  " "
  12. *a"*      around  " "
  13. *it*      inside  <tag/>
  14. *at*      around  <tag/>

>:help text-objects

---

# Operator + motion/text-object

   deleting   (d)
   changing   (c)
   yanking    (y)
   indenting  (>)
   outdenting (<)
   uppercase  (gU)
   lowercase  (gu)

  1.  *diw*     delete inside word
  2.  *daw*     delete around word
  5.  *cip*     change inside paragraph
  6.  *cap*     change around paragraph
  7.  *yi{*     yank inside  { }
  8.  *ya{*     yank around  { }
  9.  *gUi"*    make everything in " " UPPERCASE
  10. *>ip*     indent inside paragraph


---

# Useful settings

  1. persistent history

---

# Learning Vim

  1. vimtutor
  2. what do you do very often - map it
  3. cheatsheet (5 - 10 new things)
  4. :help user-manual
  5. Drew Neil
    "Practical Vim"
    vimcast.org
