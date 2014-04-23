###
# Settings
###

# Remove .html extension from pages
activate :directory_indexes

# require 'tumblargh'

# activate :tumblargh,
#   api_key: 'apikey',
#   blog: 'blogname.tumblr.com'

###
# Source
###
set :source, 'src'

###
# Assets
###
set :css_dir, 'assets/css'
set :js_dir, 'assets/js'
set :images_dir, 'assets/img'

###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.sass_options = {:debug_info => true}
  config.output_style = :compact
  config.line_comments = false
end


###
# Deployment
###
activate :deploy do |deploy|
  deploy.method   = :ftp
  deploy.host     = ""
  deploy.path     = ""
  deploy.user     = ""
  deploy.password = ""
  deploy.build_before = true # default: false
end

activate :i18n, :mount_at_root => :pl

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

configure :build do

  # For example, change the Compass output style for deployment
  compass_config do |config|
    config.sass_options = {:debug_info => false}
    config.sass_options = {:line_comments => false}
    config.output_style = :compact
    # config.line_comments = false
  end

  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Minify HTML on build
  activate :minify_html

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  activate :gzip

end
