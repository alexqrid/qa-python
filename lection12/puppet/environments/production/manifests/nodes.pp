node "node1" {
    file { "/test" :
        ensure => absent
    }

    class { "nginx":
        ensure => 'running',
        port => '8082'
    }

    class { "jenkins_slave":
        node => 'node1',
        secret => '30417ccf853e8c325b6cfcb054985063f7e6d500b3ebc5cff2520383db0e60ea'
    }

}

node "node2" {
    file { "/test1" :
        ensure => absent
    }

    class { "nginx":
      ensure => 'running',
      port => '8083'
    }

    class { "jenkins_slave":
        node => 'node2',
        secret => '4e4b05bdd4915145607443e206d388cb04d8cbac38d81ee47eac0dd9e088fc19'
    }

}