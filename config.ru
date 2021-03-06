#!/usr/bin/env rackup
# encoding: utf-8

require File.expand_path("../config/boot.rb", __FILE__)

run Rack::URLMap.new({
  "/buses" =>  GtfsToJson::Buses,
  "/routes" => GtfsToJson::Routes,
  "/stops" =>  GtfsToJson::Stops
})
