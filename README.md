# fancy_bashrc
Fancy resizing bashrc for servers

Also appends up/down arrow-based history completion for partial commands to ~/.inputrc

--

if terminal w is > 200:
```
[ UNAME@HOSTNAME|IP_ADDRESS| /PATH/TO/WHERE/YOU/ARE ]#
```
--

if terminal w is < 200: 
```
[ UNAME@HOSTNAME|IP_ADDRESS| /PATH/TO/WHERE/YOU/ARE ]
#
```


install with:

```
BRCFILE=~/.bashrc;IRCFILE=~/.inputrc;sed -i '/###  FANCY BASHRC  ###/,/### \/FANCY BASHRC  ###/d' $BRCFILE;wget https://raw.githubusercontent.com/NTchrist/fancy_bashrc/main/appendme -O ->> $BRCFILE;sed -i '/###  FANCY BASHRC  ###/,/### \/FANCY BASHRC  ###/d' $IRCFILE;wget https://raw.githubusercontent.com/NTchrist/fancy_bashrc/main/appendme_inputrc -O ->> $IRCFILE
```
