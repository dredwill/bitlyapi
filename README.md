# Bitlyapi test work

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
wamp or xampp(php=> v. 7.2 )
composer
```

### Launch Instructions

1. Create new database. 
2. Dump of the worksheet must be imported from the bitly.sql
3. The database connection parameters are located [config.php](https://github.com/dredwill/bitlyapi/blob/master/config.php) 
```php
define ('DB_HOST', 'localhost');
define ('DB_NAME', 'database_name');
define ('DB_USER', 'root');
define ('DB_PASS', '');
```
4. Run composer install
```
composer install
```
