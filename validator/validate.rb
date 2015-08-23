#!/usr/bin/env ruby
require "bundler/setup"
require "json"
require "json-schema"

schema = File.read File.expand_path "#{__dir__}/../schemas/1.0/schema.json"
json = JSON.parse(ARGF.read)

messages = JSON::Validator.fully_validate(schema, json)

if messages.empty?
  puts "Everything valid!"
else
  puts messages
end

