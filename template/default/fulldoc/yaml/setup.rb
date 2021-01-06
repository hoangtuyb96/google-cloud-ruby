# frozen_string_literal: true
include Helpers::ModuleHelper

def init
  options.serializer = Serializers::FileSystemSerializer.new :extension => "yaml"
  # sections :index, :full_list
  options.objects.each do |object|
    begin
      serialize(object)
    rescue => e
      path = options.serializer.serialized_path(object)
      log.error "Exception occurred while generating '#{path}'"
      log.backtrace(e)
    end
  end
  serialize_index options
end

def serialize(object)
  Templates::Engine.with_serializer(object, options.serializer) do
    T('layout').run(options)
  end
end

def index
  objects = Registry.all(:class, :module).sort_by {|o| o.name.to_s }
  objects = run_verifier(objects)
  # objects.each {|o| (@objects_by_letter[o.name.to_s[0, 1].upcase] ||= []) << o }
  @objects = objects.map { |o| o.name.to_s }
  @objects.reject! { |o| o.strip.empty? }

  erb(:index)
end

def serialize_index(options)
  Templates::Engine.with_serializer('index.yaml', options.serializer) do
    T('layout').run(options.merge(:index => true))
  end
end
