#!/bin/bash

progress_bar() {
  local progress=$1
  local width=50
  local fill=$(printf "%*s" $((progress * width / 100)) '' | tr ' ' '#')
  local empty=$(printf "%*s" $((width - progress * width / 100)) '' | tr ' ' '-')
  
  printf "\r[%s%s] %d%%" "$fill" "$empty" "$progress"
}

echo "Iniciando tarefa..."
for i in $(seq 1 100); do
  sleep 0.1
  progress_bar $i
done
echo -e "\nTarefa concluída!"
