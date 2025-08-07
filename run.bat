@echo off

set VENV_DIR=venv

if not exist %VENV_DIR% (
    python -m venv %VENV_DIR%
)

call %VENV_DIR%\Scripts\activate.bat

pip install .

echo 이제 'audio-extractor' 명령어로 실행하세요. 예: audio-extractor videoname.mp4