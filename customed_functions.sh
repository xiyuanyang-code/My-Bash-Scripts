#!/bin/zsh
# All customed Functions (until 2025.5.14)
# Several core principles: KISS! Don't make it too complex.
# !NOTICE, this file will never be updated, new functions will be written into a single file.

# This functions sets different colours for terminal.
print_colored() {
    local color="$1"
    local text="$2"

    case "$color" in
    red) echo -e "\033[31m$text\033[0m" ;;    # 红色
    green) echo -e "\033[32m$text\033[0m" ;;  # 绿色
    yellow) echo -e "\033[33m$text\033[0m" ;; # 黄色
    blue) echo -e "\033[34m$text\033[0m" ;;   # 蓝色
    purple) echo -e "\033[35m$text\033[0m" ;; # 紫色
    cyan) echo -e "\033[36m$text\033[0m" ;;   # 青色
    white) echo -e "\033[37m$text\033[0m" ;;  # 白色
    *) echo "$text" ;;                        # 默认
    esac
}

# Tool Functions
# This function is for finding all functions in the sh files.
LISTFUNCTIONS() {
    if [[ ! -f "$1" ]]; then
        echo "Error! File '$1' doesn't exist."
        return 1
    fi

    grep -E '^\s*function\s+\w+|\s*\w+\s*\(\)\s*{' "$1" | sed 's/^\s*function\s\+//; s/\s*(.*//; s/\s*{//'
    print_colored red "________________________________________________________________________"

    awk '
    /^#/ { comment = $0 }
    
    /^\s*function\s+\w+|\s*\w+\s*\(\)\s*{/ {
        if ($0 ~ /^\s*function\s+/) {
            func_name = $0; sub(/^\s*function\s+/, "", func_name); sub(/\s*(\(\)\s*{).*/, "", func_name);
        } else {
            func_name = $0; sub(/\s*(\(\)\s*{).*/, "", func_name);
        }
        print func_name, comment
        comment = ""
    }
    ' "$1"

    print_colored red "________________________________________________________________________"
    echo "All files of bash scripts."
    ls ~/.bash_scripts
}

# Hello world
# This function is for greetings and test for customized functions.
HELLO() {
    echo "Hello! You are in $PWD now."
    echo "Make Progress every day."
    echo "Remember keep simple and stupid in Linux and don't forget the zen of Python!"
    echo "Have a great time!"
}

# GENERAL
# This function lists all customed functions.
MY() {
    HELLO
    print_colored red "________________________________________________________________________"
    echo "Several Customed Functions are listed in this functions"
    LISTFUNCTIONS ~/.bash_scripts/customed_functions.sh
}

# Tmux memo
# This funcion shows the basic usage of several tmux commands.
TMUXH() {
    print_colored red "TMUX MEMO"
    echo "\033[36mtmux new -s <session-name>\033[0m for create a new tmux session."
    echo "\033[36mtmux attach -t <session-name>\033[0m for attach a new tmux session."
    echo "\033[36mtmux kill-session -t <session-name>\033[0m for kill a session."
    echo "\033[36mtmux tmux switch -t <session-name>\033[0m for switching different sessions."
    echo "\033[36mtmux rename-session -t 0 <new-name>\033[0m for renaming the sessions."
    echo "\033[36mtmux split-window\033[0m for spliting windows, -h for left and right."
    echo "\033[36tmux select-pane\033[0m for moving cursor, -UDLR"
    echo "\033[36mtmux swap-pane -U\033[0m for swapping the current pane up."
    echo "\033[36mtmux swap-pane -D\033[0m for swapping the current pane down."
    echo "\033[36mCtrl+b %\033[0m for splitting the window vertically."
    echo "\033[36mCtrl+b \"\033[0m for splitting the window horizontally."
    echo "\033[36mCtrl+b <arrow key>\033[0m for switching to another pane."
    echo "\033[36mCtrl+b ;\033[0m for switching to the last pane."
    echo "\033[36mCtrl+b o\033[0m for switching to the next pane."
    echo "\033[36mCtrl+b {\033[0m for swapping the current pane with the previous one."
    echo "\033[36mCtrl+b }\033[0m for swapping the current pane with the next one."
    echo "\033[36mCtrl+b Ctrl+o\033[0m for moving all panes forward."
    echo "\033[36mCtrl+b Alt+o\033[0m for moving all panes backward."
    echo "\033[36mCtrl+b x\033[0m for closing the current pane."
    echo "\033[36mCtrl+b !\033[0m for splitting the current pane into a new window."
    echo "\033[36mCtrl+b z\033[0m for toggling the current pane to fullscreen."
    echo "\033[36mCtrl+b Ctrl+<arrow key>\033[0m for resizing panes."
    echo "\033[36mCtrl+b q\033[0m for displaying pane numbers."

    echo "\033[36mtmux new-window\033[0m for creating a new window."
    echo "\033[36mtmux new-window -n <window-name>\033[0m for creating a new window with a specific name."
    echo "\033[36mtmux select-window -t <window-number>\033[0m for switching to a specific window by number."
    echo "\033[36mtmux select-window -t <window-name>\033[0m for switching to a specific window by name."
    echo "\033[36mtmux rename-window <new-name>\033[0m for renaming the current window."
    echo "\033[36mCtrl+b c\033[0m for creating a new window."
    echo "\033[36mCtrl+b p\033[0m for switching to the previous window."
    echo "\033[36mCtrl+b n\033[0m for switching to the next window."
    echo "\033[36mCtrl+b <number>\033[0m for switching to a specific window by its number."
    echo "\033[36mCtrl+b w\033[0m for selecting a window from a list."
    echo "\033[36mCtrl+b ,\033[0m for renaming the current window."

    echo "\033[36mtmux list-keys\033[0m for listing all key bindings."
    echo "\033[36mtmux list-commands\033[0m for listing all tmux commands and their parameters."
    echo "\033[36mtmux info\033[0m for listing information about current tmux sessions."
    echo "\033[36mtmux source-file ~/.tmux.conf\033[0m for reloading the current tmux configuration."

}

# Alias Memo
# This Function is for getting all the alias in the file ~/.zshrc
ALIAS_GET() {
    cat ~/.zshrc | grep 'alias .*=' | grep -v "mate"
}

# colourful demontrations
# This Function displays all colours in terminal (Using RGB).
ALL_COLOURS() {
    for R in $(seq 0 20 255); do
        for G in $(seq 0 20 255); do
            for B in $(seq 0 20 255); do
                printf "\e[38;2;${R};${G};${B}m█\e[0m"
            done
        done
    done
}
