#!/usr/bin/env ruby
require 'erb'

@build_dir = File.dirname(__FILE__) + '/../build'
@ebooks_dir = File.dirname(__FILE__) + '/../public/ebooks/'
@input_file = File.new(File.dirname(__FILE__) + '/../templates/index.erb', 'r')

def get_pdf
  pdf = `ls #{@build_dir}/pdf/*.pdf`.strip.split('/').last
end

def get_epub
  epub = `ls #{@build_dir}/epub/*.epub`.strip.split('/').last
end

def get_mobi
  mobi = `ls #{@build_dir}/mobi/*.mobi`.strip.split('/').last
end

def copy_files
  `cp #{@build_dir}/pdf/*.pdf #{@ebooks_dir}`
  `cp #{@build_dir}/epub/*.epub #{@ebooks_dir}`
  `cp #{@build_dir}/mobi/*.mobi #{@ebooks_dir}`
end

copy_files

@renderer = ERB.new(@input_file.read)

@output_file = File.open(File.dirname(__FILE__) + '/../public/index.html', 'w') do |file|
  file.puts @renderer.result
end
