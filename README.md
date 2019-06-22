# Restituto

This is Ansible playbook for provisioning my personal system.

Idea is to automate installation of my system so I can be up and running really fast on multiple machines (say desktop, laptop etc).

This playbook is intended to provision Arch or any Arch based distro (I'm using Manjaro).

## What is included

**1.)**
Applications that will be removed:

- HP Device Manager
- Kvantum Manager
- Gnome ToDo
- Simple Scan
- Evolution
- Empathy
- HexChat
- Microsoft Office Online
- Transmission GTK
- uGet
- Timeshift

**2.)**
Applications that will be installed:

- Albert
- Android Studio
- Binutils
- Bitwarden
- Blender
- Calibre
- Dbeaver
- Docker
- Draw IO
- Firefox
- FiraCode
- Git
- GitKraken
- Google Chrome
- IntelliJ Community
- Nativefier
- Notion
- pCloud
- PHP Storm
- Plank Dock
- Postman
- qBitTorrent
- Slack
- Spotify
- Sublime Text
- Telegram
- Todoist
- Trizen
- Vagrant
- Viber
- Virtual Box
- Visual Studio Code
- VLC Player
- VMware Workstation
- Vysor
- Whatsie
- Patch
- Yay

**3.)**
Dotfiles

I've included my dotfiles configuration, You can find it [here](https://github.com/aleksa-sukovic/dotfiles).

**4.)**
Gnome Tweaks

This playbook contains custom Gnome DE configuration including themes, icons, keyboard shortcuts and much more.

## How to configure

You can configure entire provisioning process through `restituto.yml` playbook.

Here I'll list all available settings with allowed values.

  - `username`

    - Username You set during system installation.

  - `group`

    - Primary group to which Your user belongs to (usually same as username).

  - `git_username`

    - Username You wish to use with Git.

  - `git_email`

    - Email You wish to use with Git.

  - `calibre_library`

    - Path where You wish to store Calibre library.

  - `vbox_module_id`

    - Number of kernel module to be installed.
    - First find out Your kernel number with `uname -r`.
    - Then You can find out which module is appropriate by running `sudo pacman -S virtualbox`.

      - This will try to install VirtualBox, but will first ask You to choose kernel module.
      - Note the number that matches Your kernel. There is no need to proceed with installation.
      - **This is the number You need to enter as value for this config.**

  - `plank_theme`

    - Theme that is used for Plank Dock.
    - Allowed values: [ *mac-round*, *mac-square*, *mojave-dark*, *mojave-light* ]

  - `gnome_theme`

    - Theme that is used for Gnome DE.
    - Allowed values: [ *mojave-light*, *mojave-light-solid*, *mojave-light-alt*, *mojave-light-solid-alt*, *mojave-dark*, *mojave-dark-solid*, *mojave-dark-alt*, *mojave-dark-solid-alt* ]

  - `gnome_icons_theme`

    - Theme that is used for Gnome DE icons.
    - Allowed values: [ *'mojave-icons'* ]

  - `gnome_wallpaper`

    - Main desktop wallpaper.
    - Allowed values: [ *'mojave-light.jpg'*, *'mojave-dark.jpg'*, *'solid.jpg'* ]

  - `gnome_lockscreen`

    - Lockscreen wallpaper.
    - Allowed values: [ *'lockscreen.jpg*', *'solid.jpg'*  ]

  - `gnome_extensions`

    - List of gnome extensions to be installed.
    - Extensions are identified using unique *id*.
    - To find extension *id* [search for extension](https://extensions.gnome.org/) and note it's which is found in extension URL.
    - Allowed values: *any valid Gnome extension id.*

## How to run?

In order to run this playbook You must follow several steps. I assume You've already set preferred variables in `restituto.yml` playbook. (check *Configuration* section).

1. ) Install Arch or any Arch based distro on Your system as You would normally.
2. ) Install Ansible manually.
3. ) Clone this repository anywhere You want.
4. ) Navigate to repository folder.
5. ) Run `sudo ansible-playbook playbooks/init.yml`
6. ) Run `sudo ansible-playbook playbooks/restituto.yml`
7. ) Reboot Your system.

Some applications required additional steps in order to complete full configuration:

1. ) VMware

   - Run `sudo ~/.config/vmware/vmware-setup.sh`

2. ) PHP Storm, Android Studio, IntelliJ Community

   - My settings are exported and saved in `~/.config/jetbrains-zip-config/`
   - You need to import them manually from application GUI.

## What have I learned ?
1. Ansible (advance concepts).
2. Improved my scripting skills.
3. General details about Linux systems and their organization.

## Images

### *Before*
![Before](https://api.pcloud.com/getpubthumb?code=XZDlfa7ZlQCKgCLEN4pgFdoE2AuMCLEoqrHy&linkpassword=undefined&size=1257x914&crop=0&type=auto)

### *After*
![After](https://api.pcloud.com/getpubthumb?code=XZaFDa7ZF7AoNj3l4zy0E4C8iTJbLS44mIck&linkpassword=undefined&size=1365x886&crop=0&type=auto)
