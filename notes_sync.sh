while inotifywait -r -e modify,create,delete,move /home/brun0/Dropbox/notes/; do
    rsync -avz /home/brun0/Dropbox/notes/ /home/brun0/Sync/notes/
done
