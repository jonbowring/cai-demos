# create a network for containers to communicate
sudo docker network create prestashop-net

# launch mysql 5.7 container
sudo docker run -ti --name cdp-mysql --network prestashop-net -e MYSQL_ROOT_PASSWORD=admin -p 3307:3306 -d mysql:5.7

# launch prestashop container
sudo docker run -ti --name cdp-prestashop --network prestashop-net -e PS_INSTALL_AUTO=1 -e DB_PASSWD=admin -e DB_SERVER=cdp-mysql -e PS_FOLDER_INSTALL=install-dev -e PS_FOLDER_ADMIN=admin-dev -e PS_ERASE_DB=1 -e PS_INSTALL_DB=1 -p 8080:80 -d prestashop/prestashop

# You can then use the shop by reaching http://localhost:8080.

# The MySQL server can be reached:
	# from the host using port 3307 (example: $ mysql -uroot -padmin -h localhost --port 3307)
	# from a container in the network using the URL some-mysql.

# For example, when you reach the "database configuration" install step, the installer will ask for the "server database address": input some-mysql.

#By default, we use the employee existing on the PrestaShop demo. But you can change it with the #following parameters:

#ADMIN_MAIL: Override default admin email (default value: demo@prestashop.com)
#ADMIN_PASSWD: Override default admin password (default value: prestashop_demo)
