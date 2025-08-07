from setuptools import setup, find_packages

setup(
    name='audio-extractor',
    version='0.1',
    packages=find_packages(),
    install_requires=[],
    entry_points={
        'console_scripts': [
            'audio-extractor = audio_extractor.extractor:main',
        ],
    },
)