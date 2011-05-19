require 'rubygems'
require 'bundler'

Bundler.require

task :default do
  puts `rake -T` # lazy
end

desc "Deploy staging site"
task :deploy_staging do
  system 'bundle exec jekyll && rsync -avz --delete _site/ kingpin.dreamhost.com:staging.lstoll.net'
end

desc "Deploy prod site"
task :deploy_prod do
  system 'bundle exec jekyll && rsync -avz --delete _site/ kingpin.dreamhost.com:lstoll.net'
end

desc "Dev server"
task :dev_server do
  system 'bundle exec jekyll --server --auto'
end
