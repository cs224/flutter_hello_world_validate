#!/usr/bin/ruby

require 'xcodeproj'
require 'yaml'

project_path = './ios/Runner.xcodeproj'
# project_path =  '/home/cs/tmp/project.pbxproj/2'
project = Xcodeproj::Project.open(project_path)

target = project.targets.first

# target.build_configurations.delete(2)

puts target.build_configurations.class

# puts target.build_configurations('Debug').class

target.build_configurations.pop

target.build_configurations.each do |config|
  puts config.name
  #config.DEVELOPMENT_TEAM = '8467KY9FLZ'
end

# https://stackoverflow.com/questions/49234751/how-to-read-ruby-object-in-yaml
#File.open("test.yml", File::RDWR|File::CREAT, 0644) {|f|
#  f.seek(0)
#  f.write YAML.dump(target)
#}

File.open "test.yml", "w" do |f|
  f.seek(0)
  f.write YAML.dump(target)
end
