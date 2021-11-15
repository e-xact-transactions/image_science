require 'mkmf'

include_path = '/usr/local/include:/usr/include:/opt/homebrew/include/:/opt/local/include:/opt/include:/app/.heroku/vendor/include'
lib_path = '/usr/local/lib:/usr/lib:/opt/homebrew/lib/:/opt/local/lib:/opt/lib:/app/.heroku/vendor/lib'

dir_config("image_science", include_path, lib_path)

have_library('freeimage')

create_makefile("image_science/extension")
