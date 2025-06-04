#!/bin/bash
cd ~/mp3-player-api
source venv/bin/activate
pip install -r requirements.txt
fuser -k 8000/tcp || true
nohup uvicorn server:app --host 0.0.0.0 --port 8000 > uvicorn.log 2>&1 < /dev/null &