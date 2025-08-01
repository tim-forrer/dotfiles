# config.nu
# version = "0.106.1"
#
# See https://www.nushell.sh/book/configuration.html
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R

use std/util "path add"

path add "/opt/homebrew/bin"
path add "/opt/homebrew/sbin"

$env.config.buffer_editor = "nvim"
