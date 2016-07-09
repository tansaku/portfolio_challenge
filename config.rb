require 'extensions/build_cleaner'

configure :build do
  activate :relative_assets
  activate :build_cleaner
end
###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript
end

set :relative_links, true

activate :google_analytics do |ga|
  ga.tracking_id = 'UA-80535304-1'

  # Removing the last octet of the IP address (default = false)
  ga.anonymize_ip = false

  # Tracking across a domain and its subdomains (default = nil)
  ga.domain_name = '//luciademoja.github.io/portfolio_challenge/'

  # Tracking across multiple domains and subdomains (default = false)
  ga.allow_linker = false

  # Enhanced Link Attribution (default = false)
  ga.enhanced_link_attribution = false

  # Tracking Code Debugger (default = false)
  ga.debug = false

  # Tracking in development environment (default = true)
  ga.development = true

  # Compress the JavaScript code (default = false)
  ga.minify = false

  # Output style - :html includes <script> tag (default = :html)
  ga.output = :js
end
