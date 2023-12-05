require "pathname"
require "json-schema-rspec"

def base_path
  Pathname.new(__dir__).join("../..").expand_path
end

def vendor_path
  base_path.join "tests/assets"
end

def schemas_path
  base_path.join "schemas"
end

def schema_path version
  schemas_path.join version, "schema.json"
end

def example_path version
  schemas_path.join version, "example.json"
end

def schema_for version
  File.read schema_path(version)
end

def example_for version
  File.read example_path(version)
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.disable_monkey_patching!

  config.default_formatter = "doc" if config.files_to_run.one?

  config.profile_examples = 10

  config.order = :random

  Kernel.srand config.seed

  config.include JSON::SchemaMatchers

  config.json_schemas[:json_schema_draft4] = vendor_path.join("json-schema_draft4_core_validation.json").to_s

  Pathname.glob(schemas_path.join("*/schema.json")).each do |path|
    config.json_schemas[:"nodeinfo_#{path.dirname.basename.to_s.delete(".")}"] = path.to_s
  end
end
