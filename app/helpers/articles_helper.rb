module ArticlesHelper
  def convertTime(time)
    time.strftime('%B %e, %Y at %I:%M %p')
    timer(10)
  end
  
end
  # def convertTime(time)
  #   now = Time.now
  #   time_difference = now - time 
  #   case timeDifference
  #   when < 24  
  #     "Now "
  #   when 6
  #     "It's 6"
  #   when "foo", "bar"
  #     "It's either foo or bar"
  #   when String
  #     "You passed a string"
  #   else
  #     "You gave me #{a} -- I have no idea what to do with that."
  #   end
  #   time.strftime("%B %e, %Y at %I:%M %p")
  # end
end
