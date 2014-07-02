exec { "apt-update":
 command => "/usr/bin/apt-get update"
}
package { ["mysql-client", "tomcat7"]:
 ensure => installed,
 require => Exec["apt-update"],
}
