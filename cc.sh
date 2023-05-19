# Command Concentration function
cc() {
  if [[ $1 == "--help" ]]; then
    echo "Command Concentration (cc) Function"
    echo "Version 1.0"
    echo
    echo "Usage:"
    echo "cc               - Shows the frequency of each unique command (without arguments) from the command history."
    echo "cc -l            - Shows the frequency of each unique command (with all arguments) from the command history."
    echo "cc -l <n>        - Shows the frequency of each unique command (with up to n arguments) from the command history."
    echo
    echo "For full documentation, please refer to the README.md file."
    echo
    return 0
  fi

  command_start=3  # By default assume timestamp exists in history
  first_word=$(history | head -n 1 | awk '{print $2}')

  # Check if the first word of history is a day of the week
  if [[ $first_word =~ ^(Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday)$ ]]; then
    command_start=4  # If day of week exists, the command starts at 4th field
  fi

  if [[ $1 == "-l" ]]; then
    if [[ -z $2 ]]; then
      history | awk -v cmd_start="$command_start" '{for(i=cmd_start; i<=NF; i++) printf "%s ", $i; printf "\n"}' | sort | uniq -c | sort -n
    else
      history | awk -v lim="$2" -v cmd_start="$command_start" '{for(i=cmd_start; i<=lim+cmd_start-1; i++) printf "%s ", $i; printf "\n"}' | sort | uniq -c | sort -n
    fi
  else
    history | awk -v cmd_start="$command_start" '{print $cmd_start}' | sort | uniq -c | sort -n
  fi
}

export -f cc
