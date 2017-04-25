#!/usr/bin/env ruby
require "bundler/setup"
require "json"
require "json-schema"

json = JSON.parse(ARGF.read)
version = json["version"] || "2.0"
schema_path = File.expand_path "#{__dir__}/../schemas/#{version}/schema.json"
abort "Invalid schema version #{version}" unless File.exist? schema_path
schema = File.read schema_path

messages = JSON::Validator.fully_validate(schema, json)

if messages.empty?
  puts "Everything valid!"
else
  puts messages
end

