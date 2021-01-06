def init
  sections :index
end

def index
  objects = Registry.all(:class, :module).sort_by {|o| o.name.to_s }
  objects = run_verifier(objects)
  # objects.each {|o| (@objects_by_letter[o.name.to_s[0, 1].upcase] ||= []) << o }
  @objects = objects.map { |o| o.name.to_s }
  @objects.reject! { |o| o.strip.empty? }
  p "howdy"
  erb(:index)
end