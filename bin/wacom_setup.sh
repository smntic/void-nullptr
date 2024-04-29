#!/bin/bash

primary_display=$(xrandr | grep " primary" | cut -d ' ' -f 4)
xsetwacom --set "Wacom One by Wacom S Pen stylus" MapToOutput "$primary_display"
