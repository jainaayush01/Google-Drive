path="/home/aayush/criodo/Google-Drive"
while true
do
	inotifywait --recursive -qq -e attrib,create,delete,modify,delete_self,move,move_self,close_write $path
	cd $path
	git add --all
	now=$(date)
	git commit -m "Auto-Commit at : $now"
	git pull
	git push -u origin master
done
