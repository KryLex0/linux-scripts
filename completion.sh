#/usr/bin/env bash
###############################################################
## Auto complete for kubectx (switching kubernetes contexts) ##
###############################################################

# get all kubernetes contexts in an array and print them
contexts=($(kubectl config get-contexts -o name))
str_context=""
for i in "${contexts[@]}"; do str_context="$str_context $i"; done

complete -W "$str_context" set-context


