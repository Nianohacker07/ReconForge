# 🛠️ ReconForge

**ReconForge** is a powerful, automated installer script for setting up a full bug bounty and penetration testing environment on a Debian/Ubuntu-based system. This all-in-one toolkit equips ethical hackers with the most essential tools for reconnaissance, subdomain enumeration, vulnerability scanning, URL gathering, and more — all with a single command.

> ⚠️ **Disclaimer:** This project is intended for educational and authorized security testing purposes only. Do not use against systems without proper permission.

---

## 🚀 Features

- Automates system updates and dependency installation
- Installs and configures popular Go, Python, and system tools
- Clones essential bug bounty tools from GitHub
- Sets up Python virtual environments and Go paths
- Adds tools to `$PATH` for easy access
- Lightweight, portable, and script-based

---

## 🧰 Tools Installed

### 🔍 Reconnaissance & OSINT
- [`Subfinder`](https://github.com/projectdiscovery/subfinder)
- [`Assetfinder`](https://github.com/tomnomnom/assetfinder)
- [`Findomain`](https://github.com/findomain/findomain)
- [`httpx`](https://github.com/projectdiscovery/httpx)
- [`gau`](https://github.com/lc/gau)
- [`waybackurls`](https://github.com/tomnomnom/waybackurls)
- [`hakrawler`](https://github.com/hakluke/hakrawler)
- [`gospider`](https://github.com/jaeles-project/gospider)
- [`lazyrecon`](https://github.com/nahamsec/lazyrecon)
- [`altdns`](https://github.com/infosec-au/altdns)

### 🔒 Vulnerability Scanning
- [`Nuclei`](https://github.com/projectdiscovery/nuclei)
- [`Nikto`](https://github.com/sullo/nikto)
- [`sqlmap`](https://github.com/sqlmapproject/sqlmap)
- [`XSStrike`](https://github.com/s0md3v/XSStrike)
- [`wafw00f`](https://github.com/EnableSecurity/wafw00f)
- [`subzy`](https://github.com/LukaSikic/subzy)

### 📁 Content Discovery
- [`dirsearch`](https://github.com/maurosoria/dirsearch)
- [`katana`](https://github.com/projectdiscovery/katana)
- [`cariddi`](https://github.com/edoardottt/cariddi)
- [`ParamSpider`](https://github.com/0xKayala/ParamSpider)

### 🧪 Fuzzing, Utilities & Automation
- [`gf`](https://github.com/tomnomnom/gf)
- [`anew`](https://github.com/tomnomnom/anew)
- [`qsreplace`](https://github.com/tomnomnom/qsreplace)
- [`unfurl`](https://github.com/tomnomnom/unfurl)
- [`shuffledns`](https://github.com/projectdiscovery/shuffledns)
- [`asnmap`](https://github.com/projectdiscovery/asnmap)
- [`massdns`](https://github.com/blechschmidt/massdns)
- [`mantra`](https://github.com/Brosck/mantra)
- [`Caduceus`](https://github.com/g0ldencybersec/Caduceus)
- [`Gungnir`](https://github.com/g0ldencybersec/gungnir)
- [`gauplus`](https://github.com/bp0lr/gauplus)
- [`GitDorker`](https://github.com/obheda12/GitDorker)
- [`waymore`](https://github.com/xnl-h4ck3r/waymore)

### 🔧 Other Tools
- [`Sn1per`](https://github.com/1N3/Sn1per)
- [`zphisher`](https://github.com/htr-tech/zphisher)
- [`Gopherus`](https://github.com/tarunkant/Gopherus)
- [`teh_s3_bucketeers`](https://github.com/tomdev/teh_s3_bucketeers)
- [`Eyewitness`](https://github.com/FortyNorthSecurity/EyeWitness)
- [`BackMeUp`](https://github.com/Dheerajmadhukar/back-me-up)
- [`Burp Suite`](https://portswigger.net/burp) (Unofficial Installer)

---

## 📦 Requirements

- ✅ Debian/Ubuntu-based OS
- ✅ `sudo` privileges
- ✅ Internet connection
- ✅ ZSH (or modify the script to use `.bashrc`)

---

## 🧪 Installation 

1. Clone the repository:

```bash
git clone https://github.com/Nianohacker07/ReconForge
cd ReconForge
```
## 🧪 How to Run the Script ? 

1. Make the script executable:

```bash
chmod +x install-tools.sh
```

Run the Installer

```bash
./install-tools.sh
```

## 📁 Installation Path

1. Tools are cloned to: ~/Tools
2. Executables are moved to or symlinked in: /usr/local/bin
3. Python virtual environment: ~/myenv

## 🛡️ Legal Disclaimer

This script and the tools it installs are intended only for ethical hacking, learning, and authorized penetration testing. Do not use against any system without explicit permission. You are solely responsible for your actions.

## ❤️ Contributing

Want to add tools, improve the script, or report bugs?

1. Fork the repo
2. Submit a pull request
3. Or open an issue

All contributions are welcome!


## 🙏 Credits

Huge thanks to the developers and maintainers of all the open-source tools included in ReconForge. This script simply automates their installation — all credit goes to the original creators.
