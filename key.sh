#/bin/sh
echo '============================
      SSH Key Installer
	      V1.0 Alpha
		Author:Kirito
============================'
cd ~
mkdir .ssh
cd .ssh
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA85CRfXAF4cu4RfGZtVsiWwez+ehuEPJr9ICU6sy8ZqKI9+KNIGjVYI0RoLH8DV8hCheB9P6s6JxHz/7SX+wzyvDYj0+iWEWoRaEmi8mENOtbGhBagmCn1p7r1+kuKJExUtUBy8uMAn+H33BqxwocbAxvzJWVdK0XtCO7VPb6qgdXoCK34OM9zVsuhLoTaE7Tb2YSFa3cVLNCzLZn/vbd0FexY0zZTRAgSiXs99Usnqe3DVBE4l9r++Hu5Af3MDz9p8Fk/LRpQFfJ0PbJ/uQ0ymeDHBQKn/VgTS1gHqBH0COwb/6z8BtzTuRFkGBtxtIwluLRHH/FR4+sKvbsUKsCJQ==' > authorized_keys
chmod 700 authorized_keys
cd ../
chmod 600 .ssh
cd /etc/ssh/
sed -i '/PasswordAuthentication/s/#PasswordAuthentication yes/PasswordAuthentication no/g' sshd_config

service sshd restart
service ssh restart
