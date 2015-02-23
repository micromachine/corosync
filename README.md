# corosync
Puppet module for corosync - installation and basic configuration; 

# Managed by Puppet
totem {
        version: 2
        token: 3000
        token_retransmits_before_loss_const: 10
        join: 60
        consensus: 3600
        vsftype: none
        max_messages: 20
        clear_node_high_bit: yes
        secauth: false
        threads: 0
        nodeid: 
        rrp_mode:  none
        interface {
                ringnumber: 0
                bindnetaddr: 10.0.3.21 
                mcastaddr: 226.94.1.1
                mcastport: 5405
        }
}

amf {
        mode: disabled
}

quorum {
        provider: corosync_votequorum
        expected_votes: 1
}

aisexec {
        user:   root
        group:  root
}

logging {
        fileline: off
        to_stderr: yes
        to_logfile: no
        to_syslog: yes
        syslog_facility: daemon
        debug: off
        timestamp: on
        logger_subsys {
                subsys: AMF
                debug: off
                tags: enter|leave|trace1|trace2|trace3|trace4|trace6
        }
}





