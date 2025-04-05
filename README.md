# Config for neovim

This uses Lazy to handle the plugins and must be placed on /home/username/.config/nvim/

## Install Neovim

You can check the [Neovim repo](https://github.com/neovim) for the latest news about installations methods but...

You can just execute the follow commands:

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
```

Followed by updating your `.bashrc`:

```bash
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"
```

...Or if you are using a Debian distro based:

```bash
sudo apt install neovim
```

## Configuration

Remember to install at least one of the [NerdFonts](https://www.nerdfonts.com/) for your terminal on your OS to get the correct "icons" displaying on the NerdTree.

Remember, some plugins are compiled using `make` so be sure you have `build-essential` installed:

```bash
sudo apt-get install build-essential
```

