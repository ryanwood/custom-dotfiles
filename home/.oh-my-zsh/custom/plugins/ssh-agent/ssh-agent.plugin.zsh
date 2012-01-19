# Function for persisting SSH agent forwarding in a screen/tmux session after
# you've logged out and back into the server
#
# Source: http://www.tolaris.com/2011/07/12/reconnecting-your-ssh-agent-to-a-detached-gnu-screen-session/
function reload_ssh_sock() {
  export SSH_AUTH_SOCK=$(find /tmp/ssh-* -user `whoami` -name agent\* | tail -n 1)
}
