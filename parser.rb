#!/usr/bin/env ruby
# -*- coding: utf-8; mode:ruby; -*-

require 'json'
require 'pathname'

Dir['json/*.json'].each do |file|
  json = JSON.load(Pathname.new(file))
  JsonImport.create(json)
  puts "#{file} is finished"
end
