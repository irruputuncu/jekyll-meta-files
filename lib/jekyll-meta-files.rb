# frozen_string_literal: true

module JekyllMetaFiles
  class Generator < Jekyll::Generator
    def generate(site)

      document_path = site.config['documents_url']

      site.static_files.each do |doc|
        meta_file = doc.path.gsub(/#{document_path}\w+\//, "#{document_path}meta/") + '.meta.yml'
        if File.exist?(meta_file)
            meta_data = SafeYAML.load_file(meta_file)
            meta_data.each { |key, value| doc.data[key] = value}
         end
      end

    end
  end
end
