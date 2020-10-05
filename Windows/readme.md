# Registry Tweaks
Q: How to disable Win+# to open different taskbar windows?
A: `regedit` -> `HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced` and create a `String Value` called `DisabledHotkeys` and put `123456789` in it
