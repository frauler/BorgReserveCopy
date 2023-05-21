# BorgReserveCopy

Utility to make a reserve copy of a directory on a server, using termux

Requirments: 
- Termux API
- program 'borg'
- program 'termux-battery-status'
- program 'ip'
- python 3.x

How to use:
1. Make a user 'borg' on a server
2. Generate a ssh-key on a device and copy it to server
3. Type in bash: ```Git clone reporistory```
5. Enter chmod +x start_copy.sh reserve_copy.sh
6. borg init -e none borg@SERVER:<backups directory name>
7. 
