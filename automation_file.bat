cd C:\Recordings
@echo off
set "timestamp=%date%__%time%"
set "timestamp=%timestamp::=%"
set "timestamp=%timestamp:/=%"
set "timestamp=%timestamp: =%"
:: Start recording audio
curl -o "audio%timestamp%.mp3" http://Place_your_audio_link_here 
:end
:: Stop recording audio
