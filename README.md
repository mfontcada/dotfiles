# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Setup on a new machine
```bash
git clone https://github.com/<your-user>/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow -vt "$HOME" bash
```

## Usage
- **Add configs**:  
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

- **Remove configs**:  
  ```bash
  stow -Dvt "$HOME" <folder>
  ```

- **Adopt existing configs** (move files from `$HOME` into the repo):  
  ```bash
  stow --adopt -vt "$HOME" <folder>
  ```
