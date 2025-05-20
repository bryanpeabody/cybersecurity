#!/bin/bash

# Gobuster throttle wrapper

# === CONFIG ===
TARGET="http://192.168.1.202"
WORDLIST="/Users/bryanpeabody/Source/SecLists/Discovery/Web-Content/raft-small-words.txt"
THREADS=5
DELAY="500ms"
OUTPUT="meross.txt"

# === RUN ===
gobuster dir \
  -u "$TARGET" \
  -w "$WORDLIST" \
  -t "$THREADS" \
  --delay "$DELAY" \
  -o "$OUTPUT" \
  -q --no-error