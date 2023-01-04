FROM python:3.11-slim

COPY ./debug.py .
CMD [ "python3", "debug.py" ]