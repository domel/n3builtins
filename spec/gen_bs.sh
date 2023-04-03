#!/bin/bash
if command -v python3 &>/dev/null; then
    python3 create-markdown.py > index.bs
else
    python create-markdown.py > index.bs
fi
