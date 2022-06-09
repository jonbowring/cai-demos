# Commands to pull and run the vanilla farmos image
docker pull farmos/farmos:latest
docker run -d -p 80:80 farmos/farmos:latest

# Commands to commit a customised version
sudo docker commit 24a713093ff8 jbowring/farmos:version1

# Command to run custom image
sudo docker run -d -p 80:80 230aca0bc346

# Location of the sql lite db (data file in data dir):
/opt/drupal/web/sites/default/files/.ht.sqlite

# User/Password
admin
P@ssw0rd123
