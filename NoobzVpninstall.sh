#!/bin/bash

apt update

git clone https://github.com/noobz-id/noobzvpns.git

cd noobzvpns/

./install.sh

systemctl start noobzvpns.service

systemctl enable noobzvpns.service

systemctl status noobzvpns.service -l

clear

noobzvpns --add-user test iman0011

noobzvpns --expired-user test 15

noobzvpns --password-user test iman0000

noobzvpns --remove-user test

noobzvpns --add-user iman iman0011 --expired-user iman 10