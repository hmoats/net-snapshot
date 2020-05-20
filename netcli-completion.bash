#/bin/bash

_netcli_completions()
{
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  # keep the suggestions in a local variable
  local suggestions=($(compgen -W "$(ls -p /opt/net-snapshot/data | egrep -v /$)" -- "${COMP_WORDS[1]}"))

  if [ "${#suggestions[@]}" == "1" ]; then
    # if there's only one match, we remove the command literal
    # to proceed with the automatic completion of the number
    local arg=$(echo ${suggestions[0]/%\ */})
    COMPREPLY=("$arg")
  else
    # more than one suggestions resolved,
    # respond with the suggestions intact
    COMPREPLY=("${suggestions[@]}")
  fi
}

complete -F _netcli_completions netcli
