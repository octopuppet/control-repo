class profile::web {
	
	class { 'apache':
		# this is where parameter definitions would go
		default_mods => true,
	}

    firewall { '101 allow http and https access':
        dport  => [80,443],
        proto  => tcp,
        action => accept,
    }
}


	
