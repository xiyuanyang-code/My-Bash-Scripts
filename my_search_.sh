#!/bin/bash
# Several Simple Functions

my_search() {
    # Search for function in the directory, only need to provide the name of the function or variables
    # !For Python functions currently.
     if [[ "$1" == "-h" || "$1" == "--help" ]]; then
        echo "demo: If you want to search for all the python files in the current directory, use command like: my_search memory"
        echo "It will output like this:"
        echo "./methods/mas_base/mas_base.py:37:        self.memory_bank = {}"
        echo "./methods/mas_base/mas_base.py:134:    def retrieve_memory(self):"
        echo "./methods/mas_base/mas_base.py:137:    def update_memory(self):"
        return 0
    fi

    local target="$1"
    local dir="${2:-.}"

    # using the grep command
    grep -rn --include="*.py" --exclude-dir={.git,data,__pycache__} "$target" $dir

    # todo: make the function become more efficient
}
