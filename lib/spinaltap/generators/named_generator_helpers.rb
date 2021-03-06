module Spinaltap
  module Generators
    module NamedGeneratorHelpers
      include Spinaltap::Generators::GeneratorHelpers

      def model_namespace
        javascript_namespace_for "Models", file_name.singularize.camelize
      end

      def collection_namespace
        javascript_namespace_for "Collections", plural_file_name.camelize
      end

      def view_namespace
        javascript_namespace_for "Views", file_name.camelize
      end

      def template_namespace
        [class_path, file_name.underscore].flatten.join('/')
      end

      def javascript_namespace_for(folder, file)
        [
          app_name,                        # name of the rails application
          folder.camelize,                 # folder passed as argument
          class_path.map(&:camelize),      # path extracted from file name
          file                             # file name without path
        ].flatten.join(".")
      end
        
    end
  end
end
