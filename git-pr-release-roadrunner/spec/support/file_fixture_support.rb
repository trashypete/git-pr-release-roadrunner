module FileFixtureSupport
  def load_yaml(fixture_name)
    if YAML.respond_to?(:unsafe_load_file)
      YAML.unsafe_load_file(file_fixture(fixture_name))
    else
      YAML.load_file(file_fixture(fixture_name))
    end
  end

  def file_fixture(fixture_name)
    file_fixture_path = RSpec.configuration.file_fixture_path
    path = Pathname.new(File.join(file_fixture_path, fixture_name))

    if path.exist?
      path
    else
      msg = "the directory '%s' does not contain a file named '%s'"
      raise ArgumentError, msg % [file_fixture_path, fixture_name]
    end
  end
end

RSpec.configure do |config|
  config.add_setting :file_fixture_path
  config.file_fixture_path = File.expand_path("../fixtures/file", __dir__)
  config.include FileFixtureSupport
end
