require "spec_helper"

RSpec.describe "NodeInfo schema 2.2" do
  it "is a valid draft7 json schema" do
    expect(schema_for("2.2")).to match_json_schema :json_schema_draft4
  end

  it "validates the example" do
    expect(example_for("2.2")).to match_json_schema :nodeinfo_22
  end
end
