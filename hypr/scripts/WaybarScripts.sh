# Check if $term is set correctly
if [[ -z "$term" ]]; then
    echo test
    notify-send -u low -i "$HOME/.config/swaync/images/error.png" "Waybar: defaultapps" "Terminal not set correctly."
    exit 1
fi

# Check if $files is set correctly
if [[ -z "$files" ]]; then
    notify-send -u low -i "$HOME/.config/swaync/images/error.png" "Waybar: defaultapps" "File explorer not set correctly."
    exit 1
fi


if [[ "$1" == "--btop" ]]; then
    $term --title btop sh -c 'btop'
elif [[ "$1" == "--nvtop" ]]; then
    $term --title nvtop sh -c 'nvtop'
elif [[ "$1" == "--nmtui" ]]; then
    $term nmtui
elif [[ "$1" == "--term" ]]; then
    $term &
elif [[ "$1" == "--files" ]]; then
    $files
else
    echo "Usage: $0 [--btop | --nvtop | --nmtui | --term]"
    echo "--btop       : Open btop in a new term"
    echo "--nvtop      : Open nvtop in a new term"
    echo "--nmtui      : Open nmtui in a new term"
    echo "--term   : Launch a term window"
    echo "--files  : Launch a file manager"
fi
