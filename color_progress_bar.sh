#!/bin/bash

progress_bar() {
  local progress=$1
  local width=50
  local fill=$(printf "%*s" $((progress * width / 100)) '' | tr ' ' '#')
  local empty=$(printf "%*s" $((width - progress * width / 100)) '' | tr ' ' '-')
  local spinner=("|" "/" "-" "\\")
  local color="\033[1;32m"
  local reset="\033[0m"

  printf "\r${color}[%s%s] %d%% %s${reset}" "$fill" "$empty" "$progress" "${spinner[i % 4]}"
}

echo "Iniciando tarefa..."
for i in $(seq 1 100); do
  sleep 0.1
  progress_bar $i
  ((i++))
done
echo -e "\nTarefa concluída!"
