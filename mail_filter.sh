#!/bin/bash
INBOX="$HOME/.mutt/cache/bodies/imaps:hduong@apm.com@imap.gmail.com/INBOX/*"

# Dummy print
echo ""

# Real output
cat $INBOX | sed -n "s/^.*[<\"]\($1[^<\/\ :]*@[^>\/\ ]*\)[>\"].*$/\1/p" | sort -u
