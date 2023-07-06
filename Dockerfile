FROM python:3.11-slim

COPY ./debug.py .

# Verify that a build arg was passed
ARG REPO_NAME
RUN test -n "$REPO_NAME"
ENV REPO_NAME $REPO_NAME

CMD [ "python3", "debug.py" ]