alias clear="printf '\033[2J\033[3J\033[1;1H';clear"

if (($RANDOM%2)); then
    clear
    echo
    neofetch
    echo
else
    clear
    cowsay Hello, Arch user! | lolcat
    echo
fi