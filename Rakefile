require 'bundler'
Bundler::GemHelper.install_tasks

task :build => [:compile, :chmod]

expected_extension = RbConfig::CONFIG['target_os'].match?("darwin") ? "bundle" : "so"

task :compile do
  `ruby ext/image_science/extconf.rb`
  `make`
  `mv extension.#{expected_extension} lib/image_science/extension.#{expected_extension}`
end

task :chmod do
  File.chmod(0775, "lib/image_science/extension.#{expected_extension}")
end
