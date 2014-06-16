module P3P
  class Middleware
    def initialize app
      @app = app
    end

    def call env
      res           = @app.call(env)
      res[1]["P3P"] = 'CP="ALL ADM DEV COM OUR STP IND"'
      res
    end
  end
end
