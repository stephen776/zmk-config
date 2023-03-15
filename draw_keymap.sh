#!/bin/sh

echo 'Parsing ZMK keymap...'
keymap -c corne_keymap_config.yaml parse -c 10 -z ./config/corne.keymap > corne_keymap.yaml

# echo '\n\nAdjusting keymap yaml...'
# ./keymap_img_adjuster.py corne_keymap.yaml

echo '\n\nDrawing keymap...'
keymap -c corne_keymap_config.yaml draw -k crkbd/r2g corne_keymap.yaml > corne_keymap.svg
