# DevOps
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


