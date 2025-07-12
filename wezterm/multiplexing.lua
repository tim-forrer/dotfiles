local module = {}

module.ssh_domains = {
	{
		name = "albus",
		remote_address = "albus",
	},
}

module.unix_domains = {
	{ name = "unix" },
}

module.default_gui_startup_args = { "connect", "unix" }
return module
