# frozen_string_literal: true

RSpec.describe Git::Pr::Release::Roadrunner do
  it "has a version number" do
    expect(Git::Pr::Release::Roadrunner::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
