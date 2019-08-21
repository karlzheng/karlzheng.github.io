#!/bin/bash - 

#https://jekyllrb.com/docs/installation/macos/
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#brew install rbenv
#rbenv init
#curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
#ruby -v
#rbenv global 2.6.3p62
#gem install --user-install bundler jekyll
#bundle install
#bundle exec jekyll serve

export LC_ALL="zh_CN.UTF-8"
export PATH=/usr/local/opt/ruby/bin:$PATH
bundle exec jekyll serve --port=4000 

