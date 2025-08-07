@echo off
chcp 65001 > nul

REM Set virtual environment directory
set VENV_DIR=venv

REM Create virtual environment if it does not exist
if not exist %VENV_DIR% (
    python -m venv %VENV_DIR%
)

REM Activate virtual environment
call %VENV_DIR%\Scripts\activate.bat

REM Upgrade pip (optional)
python -m pip install --upgrade pip

REM Install package
pip install .

REM Usage instruction
echo Run 'audio-extractor' command. Example: audio-extractor videoname.mp4
pause