if status is-interactive
    # Commands to run in interactive sessions can go here
end

if status --is-login
  set -gx XDG_CONFIG_HOME "$HOME/.config"
  set PATH $PATH ~/.cargo/bin
end
