# Define helper methods for integrating Flutter plugins into the iOS project.

# Install all Flutter plugins into the specified iOS application target.
def flutter_install_all_ios_pods(flutter_application_path = nil)
  raise 'You must specify the Flutter application path' unless flutter_application_path

  # Read the .flutter-plugins-dependencies file to get the list of plugins.
  dependencies_file = File.join(flutter_application_path, '.flutter-plugins-dependencies')
  if File.exist?(dependencies_file)
    plugin_pods = flutter_parse_dependencies_file(flutter_application_path)
    plugin_pods.each do |plugin|
      install_plugin_pod(plugin['name'], plugin['path'])
    end
  else
    puts "Warning: .flutter-plugins-dependencies file not found."
  end
end

# Parse the .flutter-plugins-dependencies file to get the list of plugins.
def flutter_parse_dependencies_file(flutter_application_path)
  plugin_pods = []

  dependencies_file = File.join(flutter_application_path, '.flutter-plugins-dependencies')
  raise 'Dependencies file not found' unless File.exist?(dependencies_file)

  dependencies = JSON.parse(File.read(dependencies_file))
  dependencies['plugins']['ios'].each do |plugin|
    plugin_pods << {
      'name' => plugin['name'],
      'path' => plugin['path']
    }
  end

  plugin_pods
end

# Install a Flutter plugin pod into the specified iOS application target.
def install_plugin_pod(name, path)
  symlink = File.join('.symlinks', 'plugins', name)
  FileUtils.mkdir_p(symlink)
  FileUtils.ln_sf(path, symlink)

  if path.include? '.podspec'
    pod name, :path => File.join(symlink, File.basename(path))
  else
    pod name, :path => symlink
  end
end
