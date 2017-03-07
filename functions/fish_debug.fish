function fish_debug -d "Print a debug message"
        if set -q __fish_notify_debug
                fish_notify brblack "DEBUG: $argv"
        end
end
