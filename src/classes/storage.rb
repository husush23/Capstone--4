require 'json'

# Class Storage
class Storage
  def initialize
    @file_extension = 'json'
    @base_url = './data/'
  end

  def save_data(class_name, object)
    File.write("#{@base_url}#{class_name}.#{@file_extension}", JSON.generate(object.to_json))
  end
end
