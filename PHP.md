# PHP

https://www.php.net/

A popular general-purpose scripting language that is especially suited to web development.
Fast, flexible and pragmatic, PHP powers everything from your blog to the most popular websites in the world.

Numbers Only

```
function numbers_only($_input) { 
    return (float) preg_replace('/[^0-9.]*/','',$_input); 
}
```

Clean Code

[http://www.slideshare.net/rdohms/your-code-sucks-lets-fix-it-15000359](http://www.slideshare.net/rdohms/your-code-sucks-lets-fix-it-15000359)

# Composer

> A Dependency Manager for PHP

[Website](https://getcomposer.org)

## Dump Autoload

```
composer dump-autoload -o
```

# Xdebug

> Xdebug is an extension for PHP to assist with debugging and development.

[Website](https://xdebug.org/docs/)

Settings

```
zend_extension=/usr/local/Cellar/php@7.1/7.1.24_2/pecl/20160303/xdebug.so
xdebug.remote_port=9001
xdebug.remote_enable=1
xdebug.remote_host=localhost
xdebug.idekey=PHPSTORM
```

Add to bash_profile. 

```
export XDEBUG_CONFIG="remote_enable=1 remote_mode=req remote_port=9000 remote_host=127.0.0.1 remote_connect_back=0”
```

# Codeception

[Website](https://codeception.com)

```
codecept run --env=gburns
```

**Carbon**

[http://carbon.nesbot.com/](http://carbon.nesbot.com/)

composer require nesbot/carbon

# Anonymous functions

[https://www.php.net/manual/en/functions.anonymous.php](https://www.php.net/manual/en/functions.anonymous.php)

Anonymous functions, also known as closures, allow the creation of functions which have no specified name. They are most useful as the value of [callable](https://www.php.net/manual/en/language.types.callable.php) parameters, but they have many other uses.

## Use

A closure has the use language construct to pass variables from parent scope.

```
function($validator) use ($input) {
```
