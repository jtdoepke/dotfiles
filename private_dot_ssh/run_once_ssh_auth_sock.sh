#!/bin/sh
ln -sf "/run/user/$(id -u)/gnupg/S.gpg-agent.ssh" ~/.ssh/ssh_auth_sock
