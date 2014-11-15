# TMUX
if which tmux 2>&1 >/dev/null; then
    #if not inside a tmux session, and if no session is started, start a new session
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi

# path
export PATH=$PATH:/opt/AWS-ElasticBeanstalk-CLI-2.6.2/eb/linux/python2.7/
