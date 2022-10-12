
# An Introduction to Vim

#### Itinerary

* [How and why Vim is unique]()
* [Basic motions]()
* [Operators]()
* [Text objects]()
* [Combining operators with motions and text objects]()
* [Insert mode]()

---

## How and why Vim is unique

* [Vi + Improved = Vim]()
* [The ADM-3A](http://xahlee.info/kbd/iold51593/ADM-3A_keyboard_cb140.jpg)  
* [Keyboard layout - the home row ASDF JKL;]()
* [Efficiency of keystrokes]()
* [Efficiency of motion]()
    <br>
### Vim is:

* [ubiquitous]()
* [extremely efficient]()
* [extremely customizable]()
* [sexy (for a text editor)]()
    <br>
    <br>
    <br>
* _:help develop_

---

#### Basic motions

* ```h j k l```        - left, down, up, right
* ```w/W```            - forward one word/WORD
* ```b/B```            - back one word/WORD
* ```) (```            - forward/back to next/previous sentence
* ```} {```            - forward/back to next/previous empty line
* ```^ g_```           - to the first/last non-blank character in the line
* ```0 $```            - to the beginning/end of the line
* ```f/F[char]```      - forward/back to next/previous occurance of [char] in current line
* ```t/T[char]```      - forward/back to one character before next/previous occurance of [char] in current line
* ```; ,```            - repeat last f F or t T motion
* ```gg```             - beggining of file
* ```G```              - end of file
* ```%```              - to matching ( { [ <
* ```<C-F>```          - page down (forward)
* ```<C-B>```          - page up (backwards)
* ```<C-D>```          - half a page down (forward)
* ```<C-U>```          - half a page up (backwards)
* ```<C-Y>```          - scroll one line up
* ```<C-E>```          - scroll one line down
<br>
<br>
<br>
* _:help motion.txt_
* _:help motion_

---

#### Text objects

* ```iw```      inside word
* ```aw```      around word
* ```iW```      inside WORD
* ```aW```      around WORD
* ```ip```      inside paragraph
* ```ap```      around paragraph
* ```i{```      inside  { }
* ```a{```      around  { }
* ```i(```      inside  ( )
* ```a(```      around  ( )
* ```i"```      inside  " "
* ```a"```      around  " "
* ```it```      inside HTML tag
* ```at```      around HTML tag
<br>
<br>
<br>
* _:help text-objects_

---

#### Operator + motion/text-object

   +   __delete__   (d)
   +   __change__   (c)
   +   __yank__     (y)
   +   __indent__   (>)
   +   __outdent__  (<)
   +   __TOUPPER__  (gU)
   +   __tolower__  (gu)

* ```diw```     delete inside word
* ```daw```     delete around word
* ```diW```     delete inside WORD
* ```daW```     delete around WORD
* ```cip```     change inside paragraph
* ```cap```     change around paragraph
* ```yi{```     yank inside  { }
* ```ya{```     yank around  { }
* ```gUi"```    make everything in double quotes UPPERCASE
* ```>ip```     indent inside paragraph
<br>
<br>
> Operations and motions can be prepended with a count!
> <br>
> <br>
> * ```5dw```  delete 5 words
> * ```12j```  go down 12 lines
> * ```3$```   go to the end of 3 lines, including the current one
   <br>
* _:help operator_

---

#### Insert mode

* ```i``` - enter insert mode at cursor
* ```I``` - enter insert mode at first non-blank character
* ```s``` - delete character under cursor and enter insert mode
* ```S``` - delete whole line and start insert mode at the beginning of same line
* ```a``` - move right one character and enter insert mode
* ```A``` - move to the end of the line and enter insert mode
* ```o``` - create new empty line under current line and enter insert mode
* ```O``` - create new empty line above current line and enter insert mode
* ```C``` - delete from the cursor to the end of the line and enter insert mode

---

#### Dealing with ESC

* [How and why Vim is unique]()
* [Just use ESC]()
* Use Ctrl-[
* [Remap CAPS-LOCK to ESC]()
* [:noremap jk]()
* [Vim Clutch](https://boingboing.net/2018/03/12/the-vim-clutch-a-footpeda.html)

---

#### Learning Vim

* [Vimtutor]()
* [What do you do very often? Map it!]()
* [Cheatsheet (5 - 10 new things a week)]()
* [:help user-manual]()
* [:help quickref]()
* [Drew Neil "Practical Vim" & vimcast.org]()
