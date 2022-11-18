#!/bin/bash

if [ -z "$USERNAME" ]
then
  USERNAME="webdav"
fi

if [ -z "$PASSWORD" ]
then
  PASSWORD="default_KRyX69Ll"
fi

echo "Your account passwords are: $USERNAME, $PASSWORD"

htpasswd -bc /etc/nginx/htpasswd "$USERNAME" "$PASSWORD"
