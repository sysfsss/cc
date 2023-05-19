# Command Concentration (cc) Function

v1.0

## Overview

This function allows you to analyze your bash command history to provide insights into your most frequently used commands. It can handle three different formats of the history:

  - History with a timestamp and a day of the week:

    `37 Friday 2023-05-19T00:33:39-0500 docker run --rm -it kalilinux/kali-rolling`

  - History with just a timestamp:

    `69 2023-05-19T00:34:57-0500 echo "ILoveCandy" >> /etc/pacman.conf`

  - History without a day of the week or a timestamp:

    `420 dstat -plsgrindmycat`

The cc command also offers a few options that control its output, providing you with various ways to view your command history:

```bash
cc                   # Shows the frequency of each unique command (without arguments) from the command history.
cc -l <n>            # Shows the frequency of each unique command (with up to n arguments) from the command history.
cc -l                # Shows the frequency of each unique command (with all arguments) from the command history.
```

## Examples

```
$ cc
      1 uname
      2 tar
      2 touch
      2 unzip
      2 w
      2 whois
      3 clear
      3 glances
      3 rsync
      3 stress
      3 top
      4 export
      4 getent
      4 ping
      4 rar
      4 which
      6 iotop
      7 mkdir
      7 ps
      8 curl
     10 sync
     24 ffmpeg
     29 cat
     29 ls
     32 git
     36 echo
     54 vim
     61 yay
     90 sudo
     96 python
    125 cd
```

```
$ cc -l
      1 cat README.txt
      1 cd /mnt
      1 clear && doge --shibe doge-xmas.txt
      1 curl https://checkip.amazonaws.com
      2 git log
      3 yay -Scc
      6 iotop
      7 cd ..
     11 yay -Syyu
     16 cd
     18 ls -al
     67 sudo -i
```

```
$ cc -l 3
      1 cat * >
      1 cat .bash_profile
      1 cat mirrorlist.pacnew >
      1 curl -sqkILX GET
      1 git amend
      1 git init .
      1 ping 4.2.2.2
      1 stress --vm 2
      1 sudo vim /etc/pacman.conf
      1 which pip
      3 glances
      4 export -f cc
      5 git commit -m
      5 vim README.md
      6 iotop
      7 cd ..
      9 echo
     16 cd
     18 ls -al
     67 sudo -i
```

## Show me what you got!

Please feel free to submit a PR or open an issue. This was only tested on Arch and Kali, and your HISTTIMEFORMAT might be different. Your feedback is much appreciated!

NOTE: No plans to parse .bash_history. No plans to support zsh. If you are into that sort of thing, let's go!

NOTE: Couldn't do this in python or go due to subshell behavior and security. You'd have to read a file. Boo!
