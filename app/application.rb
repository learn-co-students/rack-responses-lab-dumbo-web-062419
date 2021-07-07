class Application
 
    def call(env)
        
        # currentTime = time.strftime("%H:%M:%S")
      resp = Rack::Response.new
      time = Time.now
      
        if time.hour >= 12
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end

      resp.finish
    end
   
  end