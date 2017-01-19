real_name=$(dialog --stdout \
                  --title "IRC Name" \
                  --backtitle "Irssi" \
                  --defaultno \
                  --ok-label "Next" \
                  --nocancel \
                  --inputbox "What is your real name?" 8 55 "$name")
sed -i -e "s/real_name = \"\"/real_name = \"$real_name\"/" config


nick_name=$(dialog --stdout \
                  --title "IRC Name" \
                  --backtitle "Irssi" \
                  --defaultno \
                  --ok-label "Next" \
                  --nocancel \
                  --inputbox "What is your nick name?" 8 55 "$name")
sed -i -e "s/nick = \"\"/nick= \"$nick_name\"/" config
sed -i -e "s/user_name = \"\"/user_name = \"$nick_name\"/" config


password=$(dialog --stdout \
                           --title "Freenode Password" \
                           --backtitle "Irssi" \
                           --ok-label "Write" \
                           --nocancel \
                           --passwordbox "What's your Freenode password?" 8 50)
sed -i -e "s/password = \"\"/password = \"$password\"/" config
echo "Bye"

