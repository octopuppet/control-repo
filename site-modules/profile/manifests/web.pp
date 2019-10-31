class profile::web {
<<<<<<< HEAD
=======
	
	class { 'apache':
		# this is where parameter definitions would go
		default_mods => true,
	}
}
>>>>>>> parent of a3e71a2... added firewall

    firewall { '100 allow httpd':
        chain   => 'INPUT',
        state   => ['NEW'],
        dport   => '80',
        proto   => 'tcp',
        action  => 'accept',
    }  
  
    package { 'httpd':
        ensure  => present,
        before  => File['/etc/httpd/conf/httpd.conf'],
    }
  
    file { '/etc/httpd/conf/httpd.conf':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        source  => "puppet:///modules/httpd/httpd.conf",
    }
  
    service { 'httpd':
        ensure     => running,
        enable     => true,
        subscribe  => File['/etc/httpd/conf/httpd.conf'],
    }

}
