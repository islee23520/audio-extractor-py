@echo off

set VENV_DIR=venv

if not exist %VENV_DIR% (
    python -m venv %VENV_DIR%
)

call %VENV_DIR%\Scripts\activate.bat

pip install -e .

audio-extractor %*