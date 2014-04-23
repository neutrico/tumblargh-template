require 'tumblargh'

activate :tumblargh,
  api_key: 'apikey',
  blog: 'blogname.tumblr.com'

set :source, 'src'
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'
