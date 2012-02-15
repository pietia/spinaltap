require File.expand_path(File.join(File.dirname(__FILE__), '..', '..', '..', 'test_helper'))


class TemplateGeneratorTest < Vertebrae::Generators::GeneratorTest
  tests Vertebrae::Generators::TemplateGenerator
  
  # should generate a template

  def test_should_create_a_template_file
    run_generator %w(foo)
    assert_file "#{assets_path}/templates/foo.jst.eco"
  end

  def test_should_create_a_template_file_in_nested_location
    run_generator %w(bar/baz/bat/person)
    assert_file "#{assets_path}/templates/bar/baz/bat/person.jst.eco"
  end

  def test_should_convert_file_name
    run_generator %w(FooBar)
    assert_file "#{assets_path}/templates/foo_bar.jst.eco"
  end
 
end