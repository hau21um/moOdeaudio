Turn on/off GPIO depending if some music is playing. Perosnally use this with my [noOde audio players](https://moodeaudio.org), but can be used also with others simillar projects..  

Download/clone the repo to your pi and run
```bash
sudo cp amplifier-switch.sh /usr/bin/
sudo cp amplifier-switch.service /lib/systemd/system/
sudo systemctl start amplifier-switch  
sudo systemctl enable amplifier-switch
```