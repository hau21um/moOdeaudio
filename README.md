Turn on/off GPIO depending if some music is playing. Perosnally use this with my [noOde audio players](https://moodeaudio.org), but can be used also with others simillar projects..  

Install:
- Download/clone the repo to your pi.
- Edit [amplifier-switch.sh](./amplifier-switch.sh#L4) - change GPIO number, delay to switch off if no music.
- run:
    ```bash
    sudo cp amplifier-switch.sh /usr/bin/
    sudo cp amplifier-switch.service /lib/systemd/system/
    sudo systemctl start amplifier-switch  
    sudo systemctl enable amplifier-switch
    ```

Troubleshoot:  

```bash
journalctl -u amplifier-switch.service  -f
```