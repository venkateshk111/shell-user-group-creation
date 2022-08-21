#!/bin/sh

git filter-branch --env-filter 'if [ "$GIT_AUTHOR_EMAIL" = "mymailid@mail.com" ]; then
GIT_AUTHOR_EMAIL=venkatesh111@gmail.com;
GIT_AUTHOR_NAME="Venkatesh"
GIT_COMMITTER_EMAIL=$GIT_AUTHOR_EMAIL;
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"; fi' -- --all

## Source of script
# https://acclaim.agency/blog/change-author-and-email-of-a-git-commit