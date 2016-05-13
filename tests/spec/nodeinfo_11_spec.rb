require "spec_helper"

RSpec.describe "NodeInfo schema 1.1" do
  it "is a valid draf4 json schema" do
    expect(schema_for("1.1")).to match_json_schema :json_schema_draft4
  end

  it "validates the example" do
    expect(example_for("1.1")).to match_json_schema :nodeinfo_11
  end
end
