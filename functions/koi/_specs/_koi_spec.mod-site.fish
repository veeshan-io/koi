function _koi_spec.mod-site -a spec lang
  function ___spec_base
    echo '开启或关闭Nginx管理下的站点配置'
  end
  function ___spec_man
    echo '开启或关闭Nginx管理下的站点配置'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
