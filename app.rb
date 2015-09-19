require 'haml'
require 'yaml'
require 'sass'
require 'fileutils'

def delete_export_directory
  FileUtils.remove_entry 'export' if File.directory? 'export' 
end

def copy_assets
  if File.directory? 'assets'
    Dir.entries('assets').each do |dir|
      FileUtils.copy_entry "assets/#{dir}", "export/#{dir}" unless dir =~ /^\./
    end
  end
end

def create_export_directory
  Dir.mkdir 'export'
end

def generate_html
  data = YAML.load_file 'data/info.yaml'
  template = File.read 'templates/index.haml'
  haml_engine = Haml::Engine.new(template)
  output = haml_engine.render Object.new, {:data => data }
  File.open('export/index.html', 'w') { |file|
    file.write output 
  }
end

def generate_css
  sass_engine = Sass::Engine.for_file('sass/base.scss', {})
  output = sass_engine.render 
  File.open('export/public.css', 'w') { |file|
    file.write output
  }
end

delete_export_directory
create_export_directory
generate_html
generate_css
copy_assets
