function _koi_spec.build-bin-link -a spec lang
  function ___spec_base
    echo '将目录下文件创建为可执行软链'
  end
  function ___spec_man
    echo '将目录下文件创建为可执行软链'
  end

  if test $spec = 'man'
    ___spec_man
  else # include 'base'
    ___spec_base
  end
end
