export ZPLUG_HOME=/usr/local/opt/zplug/
source $ZPLUG_HOME/init.zsh

zplug "raabf/gitmoji-fuzzy-hook", \
    from:gitlab

eval $(poetry env activate)
