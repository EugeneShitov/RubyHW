class Pet
  def call(env)
    Rack::Response.new('Hey pet').finish
  end
end