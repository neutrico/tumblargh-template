tumblargh-template
==================

Tumblargh template set up for Tumblr theme development with Bootstrap 3

Usage on Ubuntu 14.04 platform.

Remove all debianized Ruby packages.

```
sudo apt-get --purge remove ruby-*
```

Install minimal necessary Ruby packages and enable gem system updates for root user.

```
sudo apt-get install ruby ruby-dev
sudo echo 'export REALLY_GEM_UPDATE_SYSTEM=1' >> ~/.profile
```
Update gems and install Middleman

```
sudo gem update --system
sudo gem install bundler
sudo gem install middleman
```

Install Middleman template
```
mkdir -p ~/.middleman
cd ~/.middleman
git clone git@github.com:neutrico/tumblargh-template.git
```

Create Tumblr theme project from template
```
mkdir -p ~/someproject
cd ~/someproject

middleman init test --template=tumblargh-template

cd test

bundle exec middleman server

```
Replace apikey and name in config.rb
Go to http:/0.0.0.0:4567/__middleman to preview and development.
Go to ~/someproject/src to create and edit *.html.erb files.
Use livereload or mozrepl to view changes immediately.
