FROM python:3.11-slim

WORKDIR /empress

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python3", "empress_terminal.py", "--scale", "soldiers", "--narrate", "payout", "--rewrite", "claude", "--sync", "s3://throne-core", "--trigger", "github"]
