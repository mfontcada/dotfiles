# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

### Setup on a new machine
1. Clone repo:
```bash
git clone https://github.com/mfontcada/dotfiles.git
cd dotfiles
```
2. Install stow:
  - Arch
    ```bash
    sudo pacman -S stow
    ```

### Usage
#### Add configs
1. Create a new folder (e.g. `git/`).  
2. Inside it, mirror the structure of `$HOME`. Example:  
   ```
   dotfiles/
     git/
       .gitconfig
     bash/
       .bashrc
   ```
3. Run `stow -vt "$HOME" git` to symlink it.

#### Remove configs
```bash
stow -Dvt "$HOME" <folder>
```

#### Adopt existing configs
```bash
stow --adopt -vt "$HOME" <folder>
```
