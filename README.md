# Audio Extractor

비디오 파일에서 오디오를 추출하는 Python 패키지입니다.

## 설치 및 실행

### macOS/Linux:
1. `./run.sh` 실행
2. `audio-extractor videoname.mp4` (옵션: `--bitrate 64k`)

### Windows:
1. `run.bat` 실행
2. `audio-extractor videoname.mp4` (옵션: `--bitrate 64k`)

## 의존성
- ffmpeg 설치 필요 (Windows: https://ffmpeg.org/download.html 에서 다운로드하고 PATH에 추가)

## 사용 예시
- 기본: `audio-extractor videoname.mp4`
- 비트레이트 지정: `audio-extractor videoname.mp4 --bitrate 192k`