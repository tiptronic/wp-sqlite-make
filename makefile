all: 

	wget http://wordpress.org/latest.zip

	unzip -q latest.zip -d ./

	mv wordpress/* ./

	rm -rf latest.zip wordpress
	
	wget https://downloads.wordpress.org/plugin/sqlite-integration.latest-stable.zip

	unzip sqlite-integration.latest-stable.zip -d wp-content/plugins/

	rm sqlite-integration.latest-stable.zip

	cp wp-content/plugins/sqlite-integration/db.php wp-content/

	cp wp-config-sample.php wp-config.php
