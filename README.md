# 🎮 Keep macOS Controllers Active

This script prevents Bluetooth game controllers from disconnecting due to macOS power-saving features. It works by simulating a key press and reconnecting controllers if necessary, but only when **Ryujinx** (or another specified app) is running.

---

## 🚀 Features
- Keeps Bluetooth controllers connected while playing
- Automatically reconnects controllers if they disconnect
- Works **only when Ryujinx is running**
- Runs automatically in the background

---

## 📥 Installation
### 1️⃣ Clone the Repository
```bash
git clone https://github.com/2t0m/keep_macos_controllers_active.git
cd keep_macos_controllers_active
```

### 2️⃣ Make the Script Executable
```bash
chmod +x keep_controllers_active.sh
```

### 3️⃣ Run the Script
```bash
./keep_controllers_active.sh
```

To stop the script, press `CTRL + C`.

---

## 🔄 Run the Script on Startup (Optional)
If you want the script to run automatically at startup:
1. Open the crontab editor:
   ```bash
   crontab -e
   ```
2. Add this line at the end:
   ```bash
   @reboot /path/to/keep_controllers_active.sh &
   ```
   (Replace `/path/to/` with the actual script location.)

---

## 🛠 Configuration
### ✏️ Update Controller MAC Addresses
Edit the `keep_controllers_active.sh` file and replace the `CONTROLLERS` array with your own controller MAC addresses:
```bash
CONTROLLERS=(
    "XX:XX:XX:XX:XX:XX"
    "YY:YY:YY:YY:YY:YY"
    "ZZ:ZZ:ZZ:ZZ:ZZ:ZZ"
    "AA:AA:AA:AA:AA:AA"
)
```
To find your controller's MAC address, use:
```bash
blueutil --paired
```

---

## 📜 License
This project is licensed under the MIT License.

---

### 🎮 Happy Gaming! 🚀
