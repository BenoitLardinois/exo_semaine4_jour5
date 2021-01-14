require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'controller'
require 'gossip'
require 'router'
require 'view'

$:.unshift File.expand_path("./../db", __FILE__)
require 'gossip'


Router.new.perform


#binding.pry
