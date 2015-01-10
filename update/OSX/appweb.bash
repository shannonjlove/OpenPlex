if [ -s __HOME__/Library/Application\ Support/OpenPlex/10.6/OpenPlex.app ]
then rm -Rf __HOME__/Library/Application\ Support/OpenPlex/10.6/OpenPlex.app
fi
if [ -s __HOME__/Library/Application\ Support/OpenPlex/10.6/OpenPlex.app ]
then rm -Rf __HOME__/Library/Application\ Support/OpenPlex/10.6/OpenPlex.app
fi
if [ -s __HOME__/Library/Application\ Support/OpenPlex/10.6/OpenPlex.app ]
then rm -Rf __HOME__/Library/Application\ Support/OpenPlex/10.6/OpenPlex.app
fi
export PATH=/usr/local/git/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
cd __HOME__/Library/Application\ Support/OpenPlex
# fetch changes, git stores them in FETCH_HEAD
git fetch
# check for remote changes in origin repository
newUpdatesAvailable=`git diff HEAD FETCH_HEAD`
if [ "$newUpdatesAvailable" != "" ]
then
## get update
echo "OpenPlex update available, Installing..."
killall updater
updatewcbash.bash
cd __HOME__/Library/Application\ Support/OpenPlex/updater
ditto -xk updater.zip __HOME__/Library/Application\ Support/OpenPlex
cd __HOME__/Library/Application\ Support/OpenPlex
open updater.app
git pull
git reset --hard
else
echo "no updates available"
fi
# Allow OpenPlex git and app to update to display proper git HEAD commit
sleep 1