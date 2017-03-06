function fish_notify -d "Print notifications. Usage: fish_notify <color> <message>"
        set_color $argv[1]; echo $argv[2..-1]; set_color normal
end
