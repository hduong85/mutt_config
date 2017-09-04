#!/bin/bash
cat ~/.mutt/cache/bodies/imaps\:hduong@apm.com@imap.gmail.com/INBOX/* |\
grep --regex "<$1.*@.*>" |\
perl -pe "s|.*<$1([^@]*?)@(.*?)>.*|$1\1@\2|g"
