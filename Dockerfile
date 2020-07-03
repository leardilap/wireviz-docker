# Use the official image as a parent image.
FROM ubuntu:20.04

# Run the command inside your image filesystem.
RUN export DEBIAN_FRONTEND=noninteractive && \
apt-get update -qq && apt-get install -qqy python3 python3-pip git graphviz && \
rm -rf /var/lib/apt/lists/* && \
git clone https://github.com/formatc1702/WireViz.git && \
cd WireViz && \
pip3 install -e .
