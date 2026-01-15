#!/usr/bin/env bash

# Terminar instancias de polybar
killall -q polybar

# Esperar a que termine
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Lanzar polybar
polybar example &
