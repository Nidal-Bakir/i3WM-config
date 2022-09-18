#!/bin/sh
WINDOWNAME="$(xdotool getwindowfocus getwindowname)"
case "${WINDOWNAME}" in
*pts/0*) # terminal window
  cat ~/.config/splatmoji/splatmoji_for_terminal_window.config > ~/.config/splatmoji/splatmoji.config
  splatmoji --disable-emoticon-db -s light copypaste
  ;;
*)
  cat ~/.config/splatmoji/splatmoji_for_any_window.config > ~/.config/splatmoji/splatmoji.config
  splatmoji --disable-emoticon-db -s light copypaste
  ;;
esac
