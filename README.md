# utils

This repo is for the small utils I make to make my life easier


# How to use
1. Clone the repo.
2. `cd` to `setup`
3. Run `basic_ubuntu_setup.sh`


# FAQ

### **Q: How to disable Firefox download buttons delay?**

**A:** Go to URL `about:config` and set `security.dialog_enable_delay` to 0



### **Q: How to disable Windows 10 Shake-to-Minimize?**

**A:** Edit registry key `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced` and add DWORD 32bit `DisallowShaking` with value of 1



### **Q: How to disable Windows 10 web results in search?**

**A:** Edit registry key `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search` Set values to 0 for `CortanaConsent` and `BingSearchEnabled` (this one might be missing, add DWORD 32bit if so)
