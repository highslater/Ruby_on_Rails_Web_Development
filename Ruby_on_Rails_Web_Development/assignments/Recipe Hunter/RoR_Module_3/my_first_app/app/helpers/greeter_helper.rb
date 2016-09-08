module GreeterHelper
    def formatted_time(time)
        #time string in am pm format
        time.strftime("%I:%M%p")
    end
end
