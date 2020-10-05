# Registry Tweaks

### **Q: How to disable Win+# to open different taskbar windows?**

**A:** `regedit` -> `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced` and create a `String Value` called `DisabledHotkeys` and put `123456789` in it



### **Q: How to disable Windows 10 Shake-to-Minimize?**

**A:** Edit registry key `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced` and add DWORD 32bit `DisallowShaking` with value of 1


### **Q: How to disable Windows 10 web results in search?**

**A:** Edit registry key `HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search` Set values to 0 for `CortanaConsent` and `BingSearchEnabled` (this one might be missing, add DWORD 32bit if so)

### **Q: How to remap CapsLock on Windows 10?**
**A:** Download SharpKeys: https://www.randyrants.com/category/sharpkeys/. 
