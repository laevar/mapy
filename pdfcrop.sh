#!/bin/bash
pdfcrop $1 /tmp/out.pdf
mv /tmp/out.pdf $1
