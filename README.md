# docker-d8console

This container allows you to run drupal console against your drupal docker container.

It has been build to run with a drupal composer project, but expects the web root to be named html instead of web or docroot.

## Install

1. **Clone this repository**

```
git clone --recursive https://github.com/jespermb/docker-d8console.git
cd docker-drupalconsole
```
    
2. **Build the image**

```
docker-build -t drupalconsole .
```

## Usage

1. **Run**

```
cd /path/to/drupal-project
docker run --rm -it -v="./:/var/www" drupalconsole $rest_of_drupal_console_command
```

**for example:**

```
docker run --rm -it -v="./:/var/www" drupalconsole list
docker run --rm -it -v="./:/var/www" drupalconsole generate:module
```

#License

This project uses the same license as Drupal Console, which is posted to drupal.org and therefore uses GNU/GPL version 2 and later.