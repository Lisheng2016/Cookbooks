execute "sudo apt-get update"
package "apache2"
execute "sudo rm -rf /var/www"
execute "mkdir /vagrant/www&&echo 'This is a test page'>index.html"
link "/var/www" do
	to "/vagrant/www"
end
