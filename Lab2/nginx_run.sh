yum install -y epel-release
yum install -y nginx
yum install nano -y

systemctl start nginx
systemctl enable nginx

# error
# rsync –av /home/vagrant/shared/index.html /temp/
# rsync –av /home/vagrant/shared/nginx.conf /etc/nginx/nginx.conf

mkdir ../../temp/ && touch ../../temp/index.html 

cat /home/vagrant/shared/index.html  > /temp/index.html 
cat /home/vagrant/shared/nginx.conf > /etc/nginx/nginx.conf

# Error
# mv /home/vagrant/shared/index.html /temp/
# mv /home/vagrant/shared/nginx.conf /etc/nginx/nginx.conf

chcon -Rt httpd_sys_content_t /temp/

systemctl restart nginx

