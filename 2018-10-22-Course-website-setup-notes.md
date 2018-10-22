# IntroQG Travis-CI notes

## General instructions

I'm following the general instructions at https://gist.github.com/davewhipp/4dd0af4778098bd92d3372408b76c6ed

## Issues

1. On step 11 of the instructions, I received permission errors when trying to do `gem install travis`. I solved this by doing `brew install ruby` and then running `/usr/local/bin/gem install travis`.