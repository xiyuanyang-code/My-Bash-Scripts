#!/bin/bash
my_dl_cpp() {
    # !this file will search for all the binary files and delete them, it is very dangerous!!!!
    echo "Attention! This function is for C++ training only"

    binary_files=$(find . -type f ! -name "*.cpp" ! -name "*.*" 2>/dev/null)

    # No files found
    if [ -z "$binary_files" ]; then
        echo "No files detected"
        echo "Press Enter to quit."
        read whether_to_quit
        if [[ -z "$whether_to_quit" ]]; then
            return 0
        fi
    fi

    # List all the files to be deleted.
    echo "All files needs to be deleted"
    echo "$binary_files"

    # Wait for user's input
    echo "Are you sure to delete these files? (Danger sometimes!) [yes/anything else]"
    read confirmation

    # if user type "yes"
    if [[ "$confirmation" == "yes" ]]; then
        echo "Deleting"
        echo "$binary_files" | xargs rm -f
        echo "Done"
    else
        echo "No files deleted"
    fi
}
