# BorgReserveCopy

Utility to make a reserve copy of a directory on a server, using termux

Requirments: 
- Termux API
- programm 'borg'
- programm 'termux-battery-status'
- program 'ip'
- python 3.x

How to use:
1. make a user 'borg' on a server
2. generate a ssh-key on a device and copy it to server
3. borg init -e none borg@172.17.0.3:<backups directory name>
4. 
init
