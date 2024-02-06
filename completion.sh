#/usr/bin/env bash
###############################################################
## Auto complete for kubectx (switching kubernetes contexts) ##
###############################################################

# get all kubernetes contexts in an array and print them
contexts=($(kubectl config get-contexts -o name))
str_context=""
for i in "${contexts[@]}"; do str_context="$str_context $i"; done

complete -W "$str_context" set-context

###############################################################
#### Auto complete for manage-string (write/remove a line) ####
###############################################################

complete -W "rm write" manage-string

###############################################################
############## Auto complete for set-kubeconfig ###############
###############################################################

# list all kubeconfig starting by config_ files in ~/.kube/ and print them if exist
kubeconfigs=($(ls ~/.kube/config_* 2>/dev/null))
# if not empty, print them
if [ ${#kubeconfigs[@]} -gt 0 ]; then
    str_kubeconfig=""
    for i in "${kubeconfigs[@]}"; do str_kubeconfig="$str_kubeconfig $i"; done

    complete -W "$str_kubeconfig" set-kubeconfig
fi