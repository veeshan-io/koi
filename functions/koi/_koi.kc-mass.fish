function _koi.kc-mass -a cmd kind name namespace
  if test -z "$kind"; or test -z "$name"; or test -z "$cmd"
    echo Usage: koi kc-mass \<cmd\> \<kind\> \<name\>[ \<namespace\>[ ...\<args\>]]
    echo Example for restart service: koi kc-mass delete pod nginx[ \<yourspace\>]
    return $OMF_UNKNOWN_OPT
  end

  if not test -z "$namespace"
    set namespace -n $namespace
  end
  kubectl get $kind $namespace | grep $name | awk '{print $1}' | xargs kubectl $cmd $kind $namespace $argv[5..-1]
end