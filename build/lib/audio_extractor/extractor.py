#!/usr/bin/env python3
import argparse
import subprocess
import os

def main():
    parser = argparse.ArgumentParser(description="비디오 파일에서 오디오를 추출합니다.")
    parser.add_argument("input", help="입력 비디오 파일")
    parser.add_argument("--bitrate", default="128k", help="오디오 비트레이트 (예: 64k, 128k, 192k)")
    args = parser.parse_args()

    input_file = args.input
    output_file = os.path.splitext(input_file)[0] + '.mp3'

    cmd = [
        'ffmpeg',
        '-i', input_file,
        '-vn',  # 비디오 없음
        '-ab', args.bitrate,
        '-y',  # 덮어쓰기
        output_file
    ]

    subprocess.run(cmd, check=True)
    print(f"오디오가 {output_file}로 추출되었습니다.")

if __name__ == "__main__":
    main()