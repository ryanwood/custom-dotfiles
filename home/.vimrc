" Globally applicable settings should be applied here, as well as anything else
" that needs to be loaded before the config files get executed.

" don't try to play nice with vi
set nocompatible

" allow buffers to be hidden when they're not saved
set hidden

" save the last 100 commands/search terms
set history=100

" use ; for <Leader>
let mapleader = ";"

" turn filetype settings off so that stuff gets loaded from pathogen
filetype off

" use pathogen to load plugins/etc.
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" turn on all filetype settings, syntax, etc.
filetype plugin indent on
syntax on

" load everything else in its own config file
runtime! config/**/*
