class Application
  def call(env)
    resp = Rack::Response.new
    currentTime = Time.now

    if currentTime.hour < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end