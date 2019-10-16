#!/bin/bash
rm -r ~/.kodi/*
sleep1
rsync -a /$HOME/.backup/.kodi/* /$HOME/.kodi/