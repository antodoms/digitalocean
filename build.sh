#!/bin/bash
input=".env.development"
while IFS= read -r line; do eval "export $line"; done < "$input"

packer build marketplace-image.json