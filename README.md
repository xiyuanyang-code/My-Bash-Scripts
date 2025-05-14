# My Bash Scripts

Several Bash functions written by myself.

This is my collection of small Bash functions for daily learning purposes. The logic of these functions is very simple, primarily aimed at reducing repetitive tasks and improving efficiency.

## Usage

Clone the repo and name it into `.bash_scripts`, we recommend you to operate this in `~/` directory.

```bash
git clone https://github.com/xiyuanyang-code/My-Bash-Scripts.git
mv My-Bash-Scripts .bash_scripts
cd .bash_scripts
```

For the first time, you can munually load all the functions via:

```bash
source all.sh
```

And you will get the output as follows:

```cli
/GPFS/rhome/xiyuanyang/.bash_scripts/my_dl_cpp.sh loaded successfully.
/GPFS/rhome/xiyuanyang/.bash_scripts/my_unzip_all.sh loaded successfully.
/GPFS/rhome/xiyuanyang/.bash_scripts/customed_functions.sh loaded successfully.
/GPFS/rhome/xiyuanyang/.bash_scripts/my_blog_count.sh loaded successfully.
/GPFS/rhome/xiyuanyang/.bash_scripts/my_search_.sh loaded successfully.
/GPFS/rhome/xiyuanyang/.bash_scripts/my_blog_post.sh loaded successfully.
```

If you accept this repo and want it to use in your daily lives, you can all it into your `.bashrc` or `.zshrc`!

```bash
# example in `.zshrc`
#! Ensure it is safe when doing this
source ~/.bash_scripts/all.sh > /dev/null 2>&1
```

## Several Fucntions

- `customed_functions`: mainly for entertainment, you can delete it for it doesnot make any practical use.

- `my_blog_count`: Define **my_blog_count** function, for counting number of passages of my **Hexo** Blog.

- `my_bog_posts`: Define **my_blog_post** function, for updating my Blog status.

- `my_dl_cpp`: Define **my_dl_cpp** function, for clearing all the binary files in the current directory.(!VERY DANGEROUS)

- `my_search`: search for certain patterns in python scripts using `grep` commands.

- `my_unzip_all`: unzip all the files in the current directory.

## Calender

- [ ] Add more functions

**PR WELCOME**!😊
