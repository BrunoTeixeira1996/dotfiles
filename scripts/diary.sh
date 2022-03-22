#!/usr/bin/bash

today_date=$(date +'%d_%m_%Y')

mkdir "$today_date"
echo -e "#+SEQ_TODO: TODO DOING_IT ON_HOLD | DONE CANCELED\n#+TITLE: $today_date\n#+AUTHOR: Bruno Teixeira\n\n* Todo Today (Estágio)\n\n\n* Todo Today (Universidade)" > "$today_date"/notes.org
