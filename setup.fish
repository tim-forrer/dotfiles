function link
    set src $argv[1]
    set dest $argv[2]

    if not test -L $dest
        ln -s $src $dest
        echo "Linked $src -> $dest"
    else
        echo "$src is already a symlink"
    end
end

set dotfiles "$HOME/dotfiles"
set config_dir "$HOME/.config"
set apps ghostty lazygit nvim fish wezterm

# Detect OS
set os_name (uname | string lower)

switch $os_name
    case "darwin"
        set apps $apps karabiner
    case "linux"
        set apps $apps xremap
    case '*'
        echo "Couldn't match OS name"
        exit 1
end

for app in $apps
    link "$dotfiles/$app" "$config_dir/$app"
end
