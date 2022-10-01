
# Itinerary

   1. How and why Vim is unique
   2. Basic motions
   3. Operators
   4. Text objects
   5. Combining operators with motions and text objects


---

# How and why Vim is unique

  1. The [ADM-3A](https://upload.wikimedia.org/wikipedia/commons/7/77/Adm3aimage.jpg)
  2. Keyboard layout - the home row ASDF JKL;
  3. Dealing with ESC


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
  10. *f[char]*        forward to first occurance of [char] in current line
  11. *t[char]*        forward to one character before first occurance of [char] in current line
  12. *F[char]*        back to first previous occurance of [char] in current line
  13. *T[char]*        back to one character before first previous occurance of [char] in current line
  14. *; ,*            repeat last f F or t T motion
  15. *gg*             beggining of file
  16. *G*              end of file
  17. *%*              to matching ( { [ <

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
