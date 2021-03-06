function _koi.clean-repos-uncommits -a target
  if test ! "$target"
    set target .
  end

  git -C $target add * && git -C $target stash && git -C $target stash drop
end