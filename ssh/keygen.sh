#!/bin/sh

ssh-keygen -t rsa -C "something"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
