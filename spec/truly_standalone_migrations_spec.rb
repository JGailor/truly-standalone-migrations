require "spec_helper"

RSpec.describe TrulyStandaloneMigrations do
  it "has a version number" do
    expect(TrulyStandaloneMigrations::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
