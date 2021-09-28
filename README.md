# DevOps
Danil Ignatushkin 

Task 1 ---------------------------  
Part 1:
1. sudo su - root
2. passwd
3. cat /etc/passwd
4. chfn root
5. man chfn
5. chfn --help
6. more example.txt
6. less example.txt

Part 2:
1. tree
search png files: tree -P "*.png"
search files with "c": tree -P "*c*"
search limit 2 dir: tree -L 2
2. file 
type file with name ssh_aws_pem: file ssh_aws_pem
type file example: file example
type file tar: file tar
3. cd
return to home directory: cd 
return to previous dir: cd ..
4. ls
all files: ls -a | ls -A without '.','..'
all files and files with ".":ls -l
all dir and files in directory (R-recursion): ls -R
all files with indexes: ls -i
all files in home directory: ls -l /
all files in Dock firectory: ls -l ./Dock
5. 
- create dir: mkdir testDir
- create file: nano info_dir.txt
- redirect i/o: ls -l >info_dir.txt
- copy to previous dir(reletive path): cp info_dir.txt ..
- copy to previous dir(absolute path): cp dir_info.txt /home/danil/Work/DevOps\ Internship
- delete "dir_info.txt" in created dir: rm dir_info.txt 

6. 
- create dir "test": mkdir test
- copy ".bash_history" in test with name "labwork2": cp .bash_history /home/danil/Work/DevOps\ Internship/testDir/labwork2
- create soft link: ln -s labwork2 soft_labwork2
- create hard link: ln labwork2 hard_labwork2
- edit soft_labwork2: nano soft_labwork2
- rename file hard_labwork2 to hard_lnk_labwork2: mv hard_labwork2 hard_lnk_labwork2
- rename file soft_labwork2 to symb_lnk_labwork2: mv soft_labwork2 symb_lnk_labwork2
- delete labwork2: rm labwork2
7. locate
- find tracerout files: locate -w tracerout  
- find squid files: locate -w squid
8. df
- type partitions in the system: df -h
9. wc
- count of lines in file bash_history: wc -l .bash_history
10. find
- find files with "host" in /etc: sudo find ./etc -name "host*"
- find with maxdepth  :sudo find ./etc -maxdepth 3 -name "host*"
11. find
- list objects with "ss": sudo find ./etc -maxdepth 1 -name "*ss*"
- list obkects with "ss" using grep: grep -r "ss" .
12. ls
screen-by-screen print of /etc: ls -lR
13. type device
- ls -l /dev/tty[0-23]
- whoami
14. file
- type file .bash_history
- type file .local: file .local
15. find /etc -ctime +1 |head -n 5
- find last 5 files that have recently accessed

16. nano txt
--------------------------------------
Task 2
- Task 2
1. cat /etc/passwd
- cat /etc/group
2. UID
- id danil
- id nikita
- UID - представление юзера в ядре
3. GID - group id
- groups danil
4. groups nikita
 also when id nikita print UID and GID
5. Add user
- adduser <username>
- check user: grep '^username' /etc/passwd
Parametrs: username and password, also we can more information like Full name,email etc.
6. Change username
- usermod -l newnikita nikita
- before need kill all process with this user
- sudo pkill -9 -u nikita
- sudo pkill -u nikita
7. -
8. Delete user
- userdel nikita
9. Block user
- passwd -l newuser
- check status: passwd -S newuser
- L - lock, P - password, N -without password
- unblock user: passwd -u newuser
10. user without password
- passwd -d newuser
11. all files
- ls -la
12. Files
1. Owner, Group, Other
- r - read
- w - writing
- x - using
- nothing
13. First three parametrs in sequence
14. Change owner and mode
- change mode: chmod 622 example.txt
- change owner: chown danil:sudo example.txt
15. umask -S
16. On SUID: chmod u+s example.txt
    On GUID: chmod g+s example.txt
17. 
- nano myscript.script
- """!#/bin/bash
- mkdir testDir
- cd testDir
- echo "Hello everyone!" > wisit.txt"""
- command to start script: source myscript.script



