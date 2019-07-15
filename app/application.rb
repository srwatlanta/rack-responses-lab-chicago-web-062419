class Application
  def call(env)
    resp = Rack::Response.new

    if Time.now < Time.parse("12:00:00")
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
