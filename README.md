tumblargh-template
==================

Tumblargh template set up for Tumblr theme development with Bootstrap 3

Usage on Ubuntu 14.04 platform.

1. Remove all debianized Ruby packages.

```
sudo apt-get --purge remove ruby-*
```

2. Install minimal necessary Ruby packages and enable gem system updates for root user.

```
sudo apt-get install ruby ruby-dev
sudo echo 'export REALLY_GEM_UPDATE_SYSTEM=1' >> ~/.profile
```
3. Update gems and install Middleman

```
sudo gem update --system
sudo gem install bundler
sudo gem install middleman
```

4. Install Middleman template
```
mkdir -p ~/.middleman
cd ~/.middleman
git clone git@github.com:neutrico/tumblargh-template.git
```

5. Create Tumblr theme project from template

```
mkdir -p ~/someproject
cd ~/someproject

middleman init test --template=tumblargh-template

cd test

bundle exec middleman server

```

6. Replace apikey and name in config.rb

7. Go to http:/0.0.0.0:4567/__middleman to preview and development.

8. Go to ~/someproject/src to create and edit *.html.erb files.

9. Use livereload or mozrepl to view changes immediately.
