#!/bin/sh

git filter-branch --env-filter '

an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"

if [ "$GIT_COMMITTER_EMAIL" = "ander.pp@gmail.com" ]
then
    cn="Mocoto the One"
    cm="mocoto@lazy.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "ander.pp@gmail.com" ]
then
    an="Mocoto the One"
    am="mocoto@lazy.com"
fi

export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'