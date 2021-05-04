<h1 align="center">
  My-Machine
</h1>

<p align="center">
  This is the Linux distro and its corresponding configuration files which I use on my laptop.
</p>

### Checklist

- Use [Garuda KDE Dr460nized](https://garudalinux.org/downloads.html) as distro - which is based on Arch Linux
- Use [aconfmgr](https://github.com/CyberShadow/aconfmgr) to track and version the state
- Partition Layout 
  - omit swap because of enough memory
  - separate partition for home - which fs?
  - check if there are any common partitioning schemas
- Choose KDE as Desktop Environment
  - Configure Faces
  - Configure Widgets: e.g. monitoring, [nvidia switch](https://store.kde.org/browse/cat/425/order/latest/) or [nvitel](https://store.kde.org/p/1455101/), consider placing data dog dashboards on desktop using [Webslice](https://store.kde.org/p/998902/)
  - Configure Status Bar, e.g. network speed and audio device chooser
  - Install screenshot tool 
- Configure Lenovo Xtreme 3 specific stuff: sound
- Configure distro and desktop manager specific stuff, e.g.: [touchpad](https://wiki.garudalinux.org/en/tap-to-click)
- Consider using Awesome WM as window manager --> predifined apps on multi-monitor scenarios for better monitoring of Nesto's infra
- Use rofi as window switcher and app launcher
- Stick to standard Garuda fish shell and alacritty terminal emulator
- Support for nvidia and [Optimus Manager](https://github.com/Askannz/optimus-manager) - ideally with a switch built into the UI
- Use xserver instead of Wayland
- Wallpaper, Screensaver and Lockscreen customizations
- Security Features such as UsbGuard, Ubikey with push button enabled, SSH/GPG keys stored on yubikey, 
- Fingerprint support for Login using fprintd
- Ledger Support for Crypto
- Useful tools such as: speedtest by Ookla, keybase
- Brave as Browser
  - do not forget to install extensions such as grammar.ly, dashlane
  - install [start.me](https://support.start.me/hc/en-us/articles/360004527979-Use-start-me-in-the-Brave-browser)
  - install [plasma extensions](https://chrome.google.com/webstore/detail/plasma-integration/cimiefiiaegbelhefglklhhakcgmhkai)
- Establish bookmarks system for work and private
- Establish hierarchy for git projects
- Install docker and use it for building complex things instead of polluting the system
- Try new software such as Mosh as SSH replacement for customer appointments
- Optimize the system for customer appointments --> How to create checklists and stuff?
- Email-Client: [hiri](https://www.hiri.com/product/)
- Sharepoint-Client: ???
- Configure all the original development stuff: git, vscode, git commit signing, vscode extensions (live share, auto-imports etc.)
- Configure vpn with auto-login on start using ykman integration
- Use bitwarden as Nesto password manager 
- Install pet as snippet manager
- Install text editor (??) and hex-viewer
- Configure comms: msteams, zoom, todoist
- KVM: Window for PowerPoint
- Latex via vscode
