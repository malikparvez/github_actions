require 'json'

# Read metadata.json
version = JSON.parse(File.read('metadata.json'))['version']

# Version string matching regex
semver_regex = /\A(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-([0-9A-Za-z-]+(?:\.[0-9A-Za-z-]+)*))?(?:\+([0-9A-Za-z-]+(?:\.[0-9A-Za-z-]+)*))?\z/

if version&.match?(semver_regex)
  puts version
else
  raise "Version #{version} is invalid. Exiting workflow."
end
