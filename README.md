# Install Mac Commandline Tools
xcode-select --install

# Install nix-darwin

nix-build https://github.com/LnL7/nix-darwin/archive/master.tar.gz -A installer

./result/bin/darwin-installer



$ printf 'run\tprivate/var/run\n' | sudo tee -a /etc/synthetic.conf
$ /System/Library/Filesystems/apfs.fs/Contents/Resources/apfs.util -B # For Catalina
$ /System/Library/Filesystems/apfs.fs/Contents/Resources/apfs.util -t # For Big Sur and later



./result/sw/bin/darwin-rebuild switch --flake ~/.config/darwin

