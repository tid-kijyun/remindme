#!/bin/bash
echo "
set myList to \"タスク\"
set myTime  to date \"$1\"
set myTitle to \"$2\"
set myBody  to \"$3\"

tell application \"Reminders\"
    set notification to make new reminder in list myList
    set name of notification to myTitle
    set body of notification to myBody
    set remind me date of notification to myTime
end tell
" | osascript -

