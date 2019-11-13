#!/bin/bash

echo "history tuning START"
# chsh --shell /bin/bash mysql
usermod --shell /bin/bash mysql
mkdir /home/mysql
echo  "PROMPT_COMMAND='history -a'">> /home/mysql/.bashrc
echo  "shopt -s histappend">> /home/mysql/.bashrc
echo  'export HISTTIMEFORMAT="%h %d %H:%M:%S "'>> /home/mysql/.bashrc
echo  'export HISTCONTROL=ignorespace:erasedups'>> /home/mysql/.bashrc
echo  'export HISTFILE=/tuning/.bash_history'>> /home/mysql/.bashrc
chown -R mysql: /home/mysql
echo "history tuning END"