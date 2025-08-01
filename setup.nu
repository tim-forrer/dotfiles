def link [src:string dest:string] {
  if (($dest | path type) != "symlink") {
    ln -s $src $dest
    print $"Linked ($src) -> ($dest)"
  } else {
    print $"($src) is already a symlink"
  }
}

let dotfiles = $env.HOME | path join "dotfiles"
let config_dir = $env.HOME | path join ".config"
let apps = [ghostty lazygit nvim nushell]

let apps = match $nu.os-info.name {
  "macos" => {
    $apps | append karabiner
  },
  "linux" => {
    $apps | append xremap
  },
  _ => {
    return "Couldn't match OS name"
  }
}

$apps | each {
  |elt| link $"($dotfiles)/($elt)" $"($config_dir)/($elt)"
}
