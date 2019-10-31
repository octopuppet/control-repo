class profile::base {

  #the base profile should include component modules that will be on all nodes

    resources { 'firewall':
        purge => true,
    }

    Firewall {
        before  => Class['my_firewall::post'],
        require => Class['my_firewall::pre'],
    }

    class { ['my_firewall::pre', 'my_firewall::post']: }

    class { 'firewall': }

}
