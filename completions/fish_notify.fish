# Always provide completions for command line utilities.
#
# Check Fish documentation about completions:
# http://fishshell.com/docs/current/commands.html#complete
#
# If your package doesn't provide any command line utility,
# feel free to remove completions directory from the project.
function __fish_notify_no_args --description 'Test if a command has yet to be given any arguments'
        set -l cmd (commandline -opc)
        test (count $cmd) -eq 1
end

complete -c fish_notify -f -n '__fish_notify_no_args' --arguments '(set_color -c)'
