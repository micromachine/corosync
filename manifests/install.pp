class corosync::install { 


        package { "corosync":
                ensure => present
                }
        service {'corosync' :
                ensure => 'running',
                require => Package['corosync'],
		enable  => true,
                }
	file { '/etc/default/corosync':
                content => 'START=no',
                require => Package['haproxy'],
                }
  	file { '/etc/corosync/corosync.conf':
    		mode    => '0644',
    		owner   => 'root',
    		group   => 'root',
    		require => Package['corosync'],
  	     }
} 
