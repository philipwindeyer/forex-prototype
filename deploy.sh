#!/bin/bash

readonly BACKUP_DIR="/home/ubuntu/backup"
readonly STORE_DIR="/home/ubuntu/.store"
readonly WEBAPP_DIR="/var/lib/tomcat7/webapps"
readonly CATALINA_LOG="/var/log/tomcat7/catalina.out"

TIMESTAMP="$(date +%Y-%m-%d-%T)"

if [ $USER != 'root' ]; then
    echo "Must be root to run this script. Please run as root or with \"sudo\"."
    exit 1
fi

if [[ "$1" != *.war ]]; then
    echo "Please specify a war file to deploy. E.g. $0 app.war"
    exit 1
fi

if [ ! -d $BACKUP_DIR ]; then
    echo "Backup directory doesn't exist. Creating now."
    mkdir $BACKUP_DIR
fi

if [ ! -d $STORE_DIR ]; then
    echo "Credentials Store directory doesn't exist. Creating now."
    mkdir $STORE_DIR
    chown tomcat7:ubuntu $STORE_DIR
fi

echo "Unarchiving file.."
unzip $1 -d "ROOT/"

echo "Stopping tomcat.."
service tomcat7 stop

if [ -d "$WEBAPP_DIR/ROOT/" ]; then
    echo "Backing up ROOT.."
    mkdir -p "$BACKUP_DIR/$TIMESTAMP"
    cp -R "$WEBAPP_DIR/ROOT" "$BACKUP_DIR/$TIMESTAMP/"

    echo "Clearing old app.."
    rm -Rf "$WEBAPP_DIR/ROOT/"
fi

echo "Deploying in ROOT.."
mv -f "ROOT/" "$WEBAPP_DIR/"

echo "Starting tomcat.."
service tomcat7 start

echo "Deployment complete.."
echo -e "Tailing the catalina startup log. TYPE \"Ctrl+C\" WHEN FINISHED VIEWING LOGS\n\n--------------------"
tail -F $CATALINA_LOG

exit 0

