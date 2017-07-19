exec {
	"apt-get update":
	command => "/usr/bin/apt-get update",
}
#exec {
#	"prepare vagrant/www":
#	command => "mkdir /vagrant/www && rm -rf /var/www",
#}

package {
	"apache2":
	require => Exec["apt-get update"],
}

file {
	"/var/www":
	ensure => link,
	target => "/vagrant/www",
	force => true,	
}
