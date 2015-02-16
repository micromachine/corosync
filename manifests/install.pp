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
                require => Package['corosync'],
                }
} 
