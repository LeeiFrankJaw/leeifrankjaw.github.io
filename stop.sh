#!/usr/bin/env bash
if pgrep nginx; then
    nginx -c nginx.conf -p . -s quit
fi
