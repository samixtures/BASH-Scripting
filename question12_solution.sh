#! /usr/bin/env bash
echo "Welcome to CSUF extension!"
PS3="Choose an option: "
options=(Exit Introduction Display_Files Credit)
select menu in "${options[@]}";
do
  echo -e "\nYou picked $menu ($REPLY)"
  if [[ $menu == "Display_Files" ]]; then
    ls
  elif [[ $menu == "Exit" ]]; then
    break;
  elif [[ $menu == "Introduction" ]]; then
    echo "Welcome to the CSUF Events Extension Program! This extension is meant to display all the upcoming and previous events for CSUF on an interactive calendar, please enjoy."
  elif [[ $menu == "Credit" ]]; then
    echo "Developed by Sami Bajwa, Patrick Lin, Nicholas Jones"
  else
    echo "Invalid option, choose again"
  fi
done