# Use an official Python runtime as the base image
FROM ubuntu:20.04
ENV TZ=Asia/Kolkata

# Set the working directory in the container
WORKDIR /app

RUN apt-get update && apt-get install -y ffmpeg ca-certificates


# Copy the modified mediamtx binary and videos folder to the container
COPY . /app
COPY videos /app/videos

# Define the command to run when the container starts
CMD ["./mediamtx"]
