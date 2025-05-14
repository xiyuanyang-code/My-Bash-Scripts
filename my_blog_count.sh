#!/bin/bash

my_blog_count(){
    # !This is for this project, if you write hexo blog as well, feel free to use it!
    # repo: https://github.com/xiyuanyang-code/Blog-word-counting

    cd ~/Hodgepodge/Blog-word-counting
    python ~/Hodgepodge/Blog-word-counting/src/main.py
    cat ~/Hodgepodge/Blog-word-counting/total.json | tail -5 | head -3
    echo "\nDone!"
    cd - > /dev/null 2>&1
}