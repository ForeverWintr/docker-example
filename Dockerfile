FROM python:3.11-slim

COPY ./debug.py .

# Verify that a build arg was passed
ARG REPO_NAME
RUN test -n "$REPO_NAME" || (echo "REPO_NAME  not set" && false)
ENV REPO_NAME $REPO_NAME

CMD [ "python3", "debug.py" ]