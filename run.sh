#!/bin/bash

VENV_DIR="venv"

if [ ! -d "$VENV_DIR" ]; then
    python3 -m venv $VENV_DIR
fi

source $VENV_DIR/bin/activate

pip install .

echo "이제 'audio-extractor' 명령어로 실행하세요. 예: audio-extractor videoname.mp4"