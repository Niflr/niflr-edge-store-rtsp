# Use an official Python runtime as the base image
FROM ubuntu:20.04
ENV TZ=Asia/Kolkata

# Set the working directory in the container
WORKDIR /app

RUN apt-get update && apt-get install -y ffmpeg

# Copy the modified mediamtx binary and ALL_VIDEOS folder to the container
COPY . /app
COPY ALL_VIDEOS /app/ALL_VIDEOS

# Define the command to run when the container starts
CMD ["./mediamtx"]
