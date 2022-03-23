#!/usr/bin/bash

ssh brun0@server "
	mkdir n8n_backup
	n8n export:workflow --backup --output=n8n_backup
"

rsync -zaP brun0@server:/home/brun0/n8n_backup $PWD

ssh brun0@server "rm -r n8n_backup"


