#sh gitbackup.sh gitadress

git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#origin/}" "$remote" || true; done

git remote add gitbackup $1

git push gitbackup --all