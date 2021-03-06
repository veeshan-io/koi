function _koi_spec.set-pev -a spec lang
  function ___spec_base
    echo '设置持久化全局变量'
  end
  function ___spec_man
    echo '设置持久化全局变量'
  end

  if test $spec = 'man'
    switch $lang
      case en_US.UTF-8
        ___spec_man
      case zh_CN.UTF-8
        ___spec_man
    end
  else # include 'base'
    switch $lang
      case en_US.UTF-8
        ___spec_base
      case zh_CN.UTF-8
        ___spec_base
    end
  end
end
