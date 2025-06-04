#!/bin/bash
cd ~/language-app-api
source venv/bin/activate
pip install -r requirements.txt
fuser -k 8000/tcp || true
nohup uvicorn main:app --host 0.0.0.0 --port 8000 &