#!/bin/bash

cd ..
mkdir temp
cd temp
wget https://wordpress.org/latest.zip
unzip latest.zip
cp ../wp/wp-config.php wordpress/
mkdir wordpress/wp-content/mu-plugins
mkdir wordpress/wp-content/uploads
cp ../wp/wp-content/mu-plugins/serverlesswp.php wordpress/wp-content/mu-plugins/
cp ../wp/wp_content/uploads/favicon.ico wordpress/wp-content/uploads/
cp ../wp/wp_content/uploads/vimzone-logo.jpeg wordpress/wp-content/uploads/
cp ../wp/wp_content/uploads/vimzone-logo-small.jpeg wordpress/wp-content/uploads/
rm -rf wordpress/wp-content/plugins/akismet wordpress/wp-content/plugins/hello.php
rm -rf wordpress/wp-content/themes/twentytwentytwo wordpress/wp-content/themes/twentytwentyone
wget https://downloads.wordpress.org/plugin/amazon-s3-and-cloudfront.zip
unzip amazon-s3-and-cloudfront.zip
mv amazon-s3-and-cloudfront wordpress/wp-content/plugins/
rm -rf ../wp
mv wordpress ../wp
cd ..
rm -rf temp
