#!/bin/sh

if [ ! -f "$XDG_CONFIG_HOME/first_start" ]; then
    echo "First start: running kbuildsycoca6"
    touch $XDG_CONFIG_HOME/first_start
    # Dolphin requires that ksycoca cache exists, but cannot run kbuildsycoca6
    # automatically (because KDED lives outside of the sandbox).
    # As a workaround we force-run it ourselves. It's really only needed once.
    kbuildsycoca6
fi

exec dolphin-bin "$@"
