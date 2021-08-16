#!/bin/bash

export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
export GPG_TTY=$(tty)

gpgconf --reload gpg-agent

gpg-connect-agent updatestartuptty /bye > /dev/null

echo "Gpg agent is reloaded!"
