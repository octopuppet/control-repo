class profile::web {
	
	class { '::apache':
		# this is where parameter definitions would go
		default_mods => true,
	}
}


	
