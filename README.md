# Automatic-Audio-Recording [Project time: Feb 2023 to March 2023]
<br>This project involved automating the process of audio recording and storage using scripting and
Windows Task Scheduler. The goal was to download the audio recording from a link and save it with
the date and time the recording starts every day from 12 am to the next 12 am. Additionally, a script
was developed to check if the audio recording was ON or OFF for every five minutes. If the recording
was OFF, the script would inspect internet connectivity, and if present, it would automatically run the
audio recording task from Windows Task Scheduler. If the internet connection was absent, the script
would wait until the internet connectivity was back and then run the audio recording task from
Windows Task Scheduler.</br>

Contents of this Repo:<br>
a) Two PNG files having the flowchart explanation of my project
b) Five script files 
c) One readme file</br><br>

You have to use automation.vbs and Autoruntask.vbs in task scheduler.The automation.vbs file will call automation_file.bat which is used for downloading audio from the link.
The Autoruntask.vbs will call the Autoruntask.bat and wil inspect and restart the audio recording if it failed.
Both the vbs scripts are used to make sure no console window is shown.</br>
