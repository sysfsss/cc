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

Your feedback is much appreciated!

