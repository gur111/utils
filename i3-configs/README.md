# Instructions
This is an i3 config file. Should probably be placed under `.config/i3/config` (while `config` is the file itself)


# Common Issues
1. dmenu closes immedietly on input (it actually crashed before but still visible)
**Solution**
Edit `/usr/bin/dmenu_run` and add this line: `LANG="en_GB.UTF-8"`. Should look like that:
```bash
#!/bin/sh
LANG="en_US.UTF-8"
dmenu_path | dmenu "$@" | ${SHELL:-"/bin/sh"} &
```
