# The Gigabox

## Setup guide

1. Follow the below instruction guides to intially configure barebones arch linux setup,
up to but not including the "install desktop environment step":
    - [arch linux wiki installation guide](https://wiki.archlinux.org/title/installation_guide)
    - [itsfoss guide](https://itsfoss.com/install-arch-linux/)
    - NOTE: You may need to install dhcpcd and configure it to autostart with systemctl:
        `sudo systemctl enable dhcpcd.service`

2. Restart system and login as dupe user:
    - exit chroot
    - unmount /mnt
    - shutdown now

3. Install git then configure ssh auth
    - install ssh-keygen: `pacman -S openssh`
    - follow keygen instructions at [github.com](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

4. git clone dotfiles-redux

5. run gigabox-setup.sh script

6. run gigaclie-setup.sh script

