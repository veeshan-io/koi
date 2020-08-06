# Always provide completions for command line utilities.
#
# Check Fish documentation about completions:
# http://fishshell.com/docs/current/commands.html#complete
#
# If your package doesn't provide any command line utility,
# feel free to remove completions directory from the project.

# build-image
set -l majors
set -l minors
set -l major
for path in $image_dockerfiles
  if not test -d $path
    continue
  end

  set major (string match -r '([^\/]+)$' $path)[2]
  set majors $majors $major
  set minors
  for subpath in (echo $path/*)
    if not test -d $path
      continue
    end
    set minors $minors (string match -r '([^\/]+)$' $subpath)[2]
  end
  if test (count $minors) -gt 0
    complete -c beihai -n "__koi_seen_subcommand_from $major" -x -d "Minor" -a $minors
  end
end
complete -c beihai -n "__koi_seen_subcommand_from build-image" -x -d "Major" -a $majors
