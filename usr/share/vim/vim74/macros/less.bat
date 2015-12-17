@echo off
rem batch file to start Vim with less.vim.
rem Read stdin if no arguments were given.
rem Written by Ken Takata.

if "%1"=="" (
  vim --cmd "let no_plugin_maps = 1" -c "runtime! macros/less.vim" -
) else (
  vim --cmd "let no_plugin_maps = 1" -c "runtime! macros/less.vim" %*
)
