
class Sprockets::DirectiveProcessor
  def process_depend_on_locales_directive
    Dir.glob(Rails.root.join("config", "locales", "**.yml").to_s).each do |path|
      resolve(File.basename(path))
    end
  end
end
