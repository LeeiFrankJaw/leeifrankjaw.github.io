#!/usr/bin/env bash
python3 src/walk.py &&
    m4 src/main.m4 > src/main.js
