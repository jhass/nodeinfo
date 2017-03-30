require "spec_helper"

RSpec.describe "NodeInfo schema 2.0" do
  it "is a valid draft4 json schema" do
    expect(schema_for("2.0")).to match_json_schema :json_schema_draft4
  end

  it "validates the example" do
    expect(example_for("2.0")).to match_json_schema :nodeinfo_20
  end
end
