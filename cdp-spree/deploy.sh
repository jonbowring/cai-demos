aws ecr get-login-password --region ap-southeast-2 | sudo docker login --username AWS --password-stdin <account id>.dkr.ecr.<region>.amazonaws.com
sudo docker tag spreecommerce/spree:3.6.4 <account id>.dkr.ecr.<region>.amazonaws.com/cdp-spree:latest
sudo docker push <account id>.dkr.ecr.<region>.amazonaws.com/cdp-spree:latest
