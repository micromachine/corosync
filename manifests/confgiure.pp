class corosync::configure {

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
