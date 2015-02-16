class corosync::configure {

	concat { '/etc/corosync/corosync.conf':
                owner   => '0',
                group   => '0',
                mode    => '0644',
                require => Package['corosync'],
                }

	concat::fragment { 'corosync.conf_header':
    		target  => "/etc/corosync/corosync.conf",
    		content => "# Managed by Puppet\n",
    		order   => 01,
  	}

  	concat::fragment { 'corosync.conf_global':
    		target  => "/etc/corosync/corosync.conf",
    		content => template('corosync/corosync_default.erb'),
    		order   => 02,
  	}
}
