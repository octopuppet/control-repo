class profile::web {
	
	class { 'apache':
		# this is where parameter definitions would go
		default_mods => true,
	}
	class { 'firewall':
		dport  => [80, 443],
		proto  => tcp,
		action => accept,
	}
}


	
