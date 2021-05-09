# pert
Pert programming language

# Install

## Making Binaries
The first line makes the excutable file using PyInstaller, the second line moves the executable into the binaries directory.
*IF YOU JUST WANT TO USE THE PRE-BUILT BINARY, JUST RUN THE SECOND LINE FROM THE MAIN PROJECT DIRECTORY, BUT **THEY MAY BE OLDER VERSIONS***
### Making Binaries Mac/Linux
With PyInstaller from main project directory
```
python3 -m pyinstaller --onefile pert/pert.py
mv dist/pert /usr/local/bin
```

### Making Binaries Windows (use PowerShell)
```
py.exe -m pyinstaller --onefile pert\pert.py
mv dist\pert.exe c:\WINDOWS
```

# Run
Open interactive shell
```
pert 
```
Run a .pert file
```
pert file.pert
```

# How To Write 
## Coming Soon

# VIM
I assume if you are using Vim you know how to install external syntax. Just merge the Vim files with your config directory for Vim or NeoVim. 