measures = [:Teaspoon, :Tablespoon, :Ounce, :Cup, :Pint, :Quart]

measures.each do |measure|
  name = measure.to_s.downcase
  require name
  Fixnum.send :define_method, name do
    Object.const_get(measure).new(self)
  end
  Fixnum.send :alias_method, name + 's', name
end
