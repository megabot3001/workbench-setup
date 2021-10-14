# Workbench Setup

## MacOS
1. Switch default shell to bash - https://itnext.io/upgrading-bash-on-macos-7138bd1066ba
2. Install homebrew
3. Install pyenv
   - the newer python version was not getting activated. This is because pyenv env vars were not getting added. Adding the `pyenv init --path` command to `~/.bashrc` fixed it.
4. Install VSCode
- VSCode customizations:
    - Choose terminal profile - set to upgraded bash from step 1
    - Install 'code' command in PATH to be able to launch VSCode from command prompt
        - If you see an EACCESS error it's because the app is not properly symlinked.
        Correct path should look like this - 
        ```bash
        lrwxr-xr-x  1 root  wheel  68 Oct 13 19:02 code -> /Applications/Visual Studio Code.app/Contents/Resources/app/bin/code
        ```
        If `code` from terminal is broken, then remove the symlink `/usr/local/bin/code` and re-run the shell install code in VS Code
5. bashrc and bash_profile customizations - see files in this repo