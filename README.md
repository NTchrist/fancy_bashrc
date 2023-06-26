# fancy_bashrc
Fancy resizing bashrc for servers

--

if terminal w is > 200:

[ UNAME@HOSTNAME|IP_ADDRESS| /PATH/TO/WHERE/YOU/ARE ]#

--

if terminal w is < 200: 

[ UNAME@HOSTNAME|IP_ADDRESS| /PATH/TO/WHERE/YOU/ARE ]

\#

install with:

BRCFILE='~/.bashrc';sed -i '/###  FANCY BASHRC  ###/,/### \/FANCY BASHRC  ###/d' $BRCFILE;wget https://raw.githubusercontent.com/NTchrist/fancy_bashrc/main/appendme -O ->> $$BRCFILE
