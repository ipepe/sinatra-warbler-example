# run
# warble [compiled] war

Warbler::Config.new do |config|
  # Application directories to be included in the webapp.
  config.dirs = %w(config) #views, vendor

  # Additional files/directories to include, above those in config.dirs
  config.includes = FileList["config.ru", "app.rb"]

  # Name of the war file (without the .war) -- defaults to the basename
  # of RAILS_ROOT
  config.war_name = "sinatramysql"
  config.jar_name = "sinatramysql"

  # Application booter to use, one of :rack, :rails, or :merb (autodetected by default)
  # config.webxml.booter = :rack
end
