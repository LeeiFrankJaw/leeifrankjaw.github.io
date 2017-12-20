#!/usr/bin/env bash
if ! pgrep nginx; then
    sudo nginx -c nginx.conf -p .
fi
