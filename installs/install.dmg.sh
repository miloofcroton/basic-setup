set -e

VERSION="2.3.3e"
URL="https://github.com/PostgresApp/PostgresApp/releases/download/v${VERSION}/Postgres-${VERSION}-10-11-12.dmg"
APP_NAME="Postgres.app"
APP_DIR="/Applications"

if [[ -d $APP_DIR/$APP_NAME ]]; then
  echo "$APP_NAME is already installed."
  read -p "Want to try installing $APP_NAME anyway? [Yn]: " choice
  [ "$choice" = 'Y' ] || exit
fi

echo "Downloading $APP_NAME from $URL"
TMPFILE="/tmp/$APP_NAME.dmg"
curl -\# -Lo $TMPFILE $URL

if [ "$choice" = 'Y' ]; then
  read -p "Removing $APP_DIR/$APP_NAME... You sure you want this? [Yn]: " choice
  [ "$choice" = 'Y' ] && rm -rf $APP_DIR/$APP_NAME
fi

echo "Installing..."
OUTPUT=$(hdiutil mount $TMPFILE)
VOLUME=$(echo ${OUTPUT##* } | xargs) # Get last word in string (volume) and trim leading whitespace
cp -R $VOLUME/$APP_NAME $APP_DIR

echo "Cleaning up..."
hdiutil unmount $VOLUME > /dev/null
rm $TMPFILE

echo "Done."
