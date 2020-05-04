require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'csv-master/csv'

CsvMaster.perform