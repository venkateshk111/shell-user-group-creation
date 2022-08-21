#!/bin/sh

git filter-branch --env-filter 'if [ "$GIT_AUTHOR_EMAIL" = "mymailid@mail.com" ]; then
GIT_AUTHOR_EMAIL=mycorrectmail@gmail.com;
GIT_AUTHOR_NAME="Venkatesh"
GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL;
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"; fi' -- --all

## Source of script
# https://acclaim.agency/blog/change-author-and-email-of-a-git-commit
# Replace the following statements in the above script:

# mymailid@mail.com – this was my wrong email during initial days for my github
# mycorrectmail@gmail.com – enter your correct email that you set in the global config
# Correct Name – enter your correct name which you have set in global config
# After you make sure everything is correct run the script from terminal/console using the command: 
# ./git-author-rename.sh  ( use chmod +x git-author-rename.sh if req.)