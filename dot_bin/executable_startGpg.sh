#!/bin/bash

# gpgconf --kill gpg-agent

unset SSH_AGENT_PID

if [ "${gnupg_SSHAUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

gpgconf --launch gpg-agent

export GPG_TTY=$(tty)

gpg-connect-agent updatestartuptty /bye

echo "1234" | gpg -q --batch --status-fd 1 --sign --local-user me@lgdweb.fr --passphrase-fd 0 > /dev/null && echo ok

# ssh -T git@github.com

# systemctl --user mask --now gpg-agent.service gpg-agent.socket gpg-agent-ssh.socket gpg-agent-extra.socket gpg-agent-browser.socket
