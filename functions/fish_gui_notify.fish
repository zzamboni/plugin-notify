# Produce a graphical notification, depending on the OS
function fish_gui_notify -d "Dislay a GUI notification"
        set -l title ""
        set -l message ""
        set -l group ""
        set -l app ""
        argu title: message: group: app: -- $argv | while read -l opt value
                switch $opt
                        case --title
                                set title $value
                        case --message
                                set message $value
                        case --group
                                set group $value
                        case --app
                                set app $value
                end
        end
	terminal-notifier -title $title -message $message -group $group -activate $app > /dev/null
end
