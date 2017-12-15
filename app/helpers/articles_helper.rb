module ArticlesHelper
  def convertTime(time)
    time.strftime('%B %e, %Y at %I:%M %p')
  end
end
