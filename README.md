# Arabic-SR-Whisper

A web application for Arabic speech recognition and transcription using Whisper and Wav2Vec2 models.

## Overview

Arabic-SR-Whisper provides a simple web interface for transcribing Arabic speech from audio files. The application supports two state-of-the-art speech recognition models:

- **Whisper**: OpenAI's robust speech recognition model with strong Arabic language support
- **Wav2Vec2**: Facebook's speech recognition model as an alternative transcription option

## Features

- Upload audio files (.wav, .mp3) for transcription
- Choose between Whisper and Wav2Vec2 models
- Simple and intuitive web interface
- API endpoint for transcription services

## Project Structure

```
├── Dockerfile              # Container definition
├── Makefile                # Build automation
├── models                  # Pre-trained model files
├── notebooks               # Development notebooks
├── requirements.txt        # Python dependencies
└── webapp                  # Flask application
```

## Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/arabic-sr-whisper.git
   cd arabic-sr-whisper
   ```

2. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

3. Run the application:
   ```
   python webapp/app.py
   ```

## Docker

Build and run with Docker:

```
docker build -t arabic-sr-whisper .
docker run -p 5000:5000 arabic-sr-whisper
```

## Usage

1. Open the web interface at http://localhost:5000
2. Upload an audio file containing Arabic speech
3. Select your preferred model (Whisper or Wav2Vec2)
4. Submit and receive the transcription

## License

See the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.