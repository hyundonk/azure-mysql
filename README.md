# azure-mysql
## Creating Azure MySQL Database using Azure CLI

    $ az group create --name myresourcegroup --location westus
    $ az mysql server create --resource-group myresourcegroup --name hyukserver4demo --location westus --admin-user myadmin --admin-password Passw0rd! --performance-tier Standard --compute-units 100
    $ az mysql server update --resource-group myresourcegroup --name hyukserver4demo --ssl-enforcement Disabled
    $ az mysql server firewall-rule create --resource-group myresourcegroup --server hyukserver4demo --name AllowYourIP --start-ip-address 0.0.0.0 --end-ip-address 255.255.255.255
    $ az mysql server show --resource-group myresourcegroup --name hyukserver4demo


    $ mysql -h hyukserver4demo.mysql.database.azure.com -u myadmin@hyukserver4demo -p
    Enter password:
    Welcome to the MySQL monitor.  Commands end with ; or \g.
    Your MySQL connection id is 65362
    Server version: 5.6.26.0 MySQL Community Server (GPL)
    
    Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.
    
    Oracle is a registered trademark of Oracle Corporation and/or its affiliates. Other names may be trademarks of their respective owners.
    
    Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
    
    mysql>status
    mysql  Ver 14.14 Distrib 5.7.21, for Linux (x86_64) using  EditLine wrapper
    
    Connection id:          65362
    Current database:
    Current user:           myadmin@221.167.207.246
    SSL:                    Cipher in use is AES256-SHA
    Current pager:          stdout
    Using outfile:          ''
    Using delimiter:        ;
    Server version:         5.6.26.0 MySQL Community Server (GPL)
    Protocol version:       10
    Connection:             hyukserver4demo.mysql.database.azure.com via TCP/IP
    Server characterset:    latin1
    Db     characterset:    latin1
    Client characterset:    utf8
    Conn.  characterset:    utf8
    TCP port:               3306
    Uptime:                 12 min 5 sec
    
    Threads: 5  Questions: 252  Slow queries: 0  Opens: 121  Flush tables: 2  Open tables: 3  Queries per second avg: 0.347
    --------------
    
    mysql>

## Connect Azure MySQL database using MySQL Workbench
1) Download MySQL Workbench from https://dev.mysql.com/downloads/workbench/
2) Connect to MySQL server provisioned

    Setting	Suggested Value	Description
    Hostname	myserver4demo.mysql.database.azure.com	
    Port	3306
    Username	myadmin@myserver4demo
    The server admin login you previously noted.
    Password	****

## Connect & Query with python
    sudo apt-get install python-pip
    sudo pip install mysql-connector-python-rf
    


