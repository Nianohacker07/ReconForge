#!/bin/bash

# ╔═════════════════════════════════════════════════════════════════════╗
# ║ 🎁 A Gift for the Bug Bounty Community                             ║
# ║ 🛠️  ReconForge - Bug Bounty Toolkit Installer                       ║
# ║                                                                    ║
# ║ 🔧 Automates the setup of tools for reconnaissance, scanning,      ║
# ║    fuzzing, subdomain enumeration, and more.                       ║
# ║                                                                    ║
# ║ 👨‍💻 Made by: N14N0_H4ck3r                                          ║
# ║ 🙏 Credits: github.com/Nianohacker07                                ║
# ╚═════════════════════════════════════════════════════════════════════╝

# ========================
# 📁 Setup Tools Directory
# ========================
TOOLS_DIR=~/Tools
mkdir -p "$TOOLS_DIR"
chmod 755 "$TOOLS_DIR"
cd "$TOOLS_DIR" || exit

# ===============================
# 🔄 Update System & Dependencies
# ===============================
echo "[*] Updating system and installing dependencies..."
sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y
sudo apt install -y curl unzip git figlet lolcat snapd python3 python3-pip golang pipx build-essential make gcc ruby ruby-dev libcurl4-openssl-dev libxml2 libxslt1-dev zlib1g-dev

# ====================
# 📦 Install Go Tools
# ====================
echo "[*] Installing Go tools..."

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# Add to .zshrc (change to .bashrc if needed)
echo -e "\n# Go environment setup" >> ~/.zshrc
echo "export GOPATH=\$HOME/go" >> ~/.zshrc
echo "export PATH=\$PATH:\$GOPATH/bin" >> ~/.zshrc

GO_TOOLS=(
  github.com/tomnomnom/gf
  github.com/lc/gau/v2/cmd/gau
  github.com/tomnomnom/anew
  github.com/tomnomnom/qsreplace
  github.com/tomnomnom/waybackurls
  github.com/tomnomnom/assetfinder
  github.com/projectdiscovery/httpx/cmd/httpx
  github.com/projectdiscovery/katana/cmd/katana
  github.com/projectdiscovery/asnmap/cmd/asnmap
  github.com/projectdiscovery/shuffledns/cmd/shuffledns
  github.com/Brosck/mantra
  github.com/lc/subjs
  github.com/projectdiscovery/subfinder/v2/cmd/subfinder
  github.com/tomnomnom/unfurl
)
for tool in "${GO_TOOLS[@]}"; do
  go install "$tool@latest"
done

# ============================
# 📦 Install Python/Pipx Tools
# ============================
echo "[*] Installing waymore..."
pipx install git+https://github.com/xnl-h4ck3r/waymore.git

# =======================
# 🧰 Clone Useful Repos
# =======================
echo "[*] Cloning repositories into $TOOLS_DIR..."
REPOS=(
  "https://github.com/m4ll0k/SecretFinder.git"
  "https://github.com/htr-tech/zphisher.git"
  "https://github.com/LukaSikic/subzy.git"
  "https://github.com/1N3/Sn1per.git"
  "https://github.com/tarunkant/Gopherus.git"
  "https://github.com/NitinYadav00/Bug-Bounty-Search-Engine.git"
  "https://github.com/maurosoria/dirsearch.git"
  "https://github.com/nahamsec/lazyrecon.git"
  "https://github.com/tomdev/teh_s3_bucketeers.git"
  "https://github.com/wpscanteam/wpscan.git"
  "https://github.com/sqlmapproject/sqlmap.git"
  "https://github.com/obheda12/GitDorker.git"
  "https://github.com/0xKayala/ParamSpider.git"
  "https://github.com/sullo/nikto.git"
  "https://github.com/s0md3v/XSStrike.git"
  "https://github.com/Dheerajmadhukar/back-me-up.git"
  "https://github.com/infosec-au/altdns.git"
)
for repo in "${REPOS[@]}"; do
  git clone "$repo"
done

# ========================
# 🔨 Build & Install Tools
# ========================
echo "[*] Building and installing Subzy..."
cd "$TOOLS_DIR/subzy" && go build -o subzy main.go && sudo mv subzy /usr/local/bin/ && cd "$TOOLS_DIR"

echo "[*] Installing BackMeUp..."
cd "$TOOLS_DIR/back-me-up" && bash backmeup.sh -i && cd "$TOOLS_DIR"

echo "[*] Setting up Nikto..."
cd "$TOOLS_DIR/nikto/program" && sudo chmod +x nikto.pl && sudo ln -sf "$PWD/nikto.pl" /usr/local/bin/nikto && cd "$TOOLS_DIR"

echo "[*] Installing Findomain..."
curl -LO https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
unzip findomain-linux.zip && chmod +x findomain && sudo mv findomain /usr/local/bin/ && rm findomain-linux.zip

echo "[*] Installing XSStrike requirements..."
cd "$TOOLS_DIR/XSStrike" && pip install -r requirements.txt && cd "$TOOLS_DIR"

echo "[*] Installing Massdns..."
git clone https://github.com/blechschmidt/massdns.git
cd massdns && make && sudo make install && cd "$TOOLS_DIR"

echo "[*] Installing WafW00f..."
pip3 install git+https://github.com/EnableSecurity/wafw00f

# =============================
# 🐍 Setup Python Environment
# =============================
echo "[*] Installing Python virtual environment tools..."
sudo apt install -y python3-venv
python3 -m venv ~/myenv
source ~/myenv/bin/activate
pip install --upgrade pip pipx
pipx install jsbeautifier --force
pipx install eyewitness
pipx install py-altdns==1.0.2
deactivate

# ===================
# 🧪 Install BurpSuite
# ===================
echo "[*] Installing BurpSuite..."
curl -LO https://raw.githubusercontent.com/xiv3r/Burpsuite-Professional/main/install.sh
sudo bash install.sh

# ===========================
# ⚙️ Install Additional Tools
# ===========================
echo "[*] Installing additional tools..."
go install github.com/edoardottt/cariddi/cmd/cariddi@latest
go install github.com/hakluke/hakrawler@latest
go install -v github.com/s0rg/crawley/cmd/crawley@latest
go install github.com/jaeles-project/gospider@latest
go install github.com/g0ldencybersec/Caduceus/cmd/caduceus@latest
go install github.com/g0ldencybersec/gungnir/cmd/gungnir@latest
go install github.com/bp0lr/gauplus@latest
go install github.com/tomnomnom/unfurl@latest
go install github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest

# =====================
# ✅ Done
# =====================
echo "[*] Installation complete! All tools are installed in ~/Tools and system path as appropriate."
