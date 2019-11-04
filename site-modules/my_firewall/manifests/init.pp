 class my_firewall {

   stage { 'fw_pre':  before  => Stage['main']; }
   stage { 'fw_post': require => Stage['main']; }

   class { 'my_fw::pre':
     stage => 'fw_pre',
   }

   class { 'my_fw::post':
     stage => 'fw_post',
   }

  resources { "firewall":
     purge => true
  }

}
