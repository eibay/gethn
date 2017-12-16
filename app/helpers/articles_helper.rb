module ArticlesHelper
  def convertTime(time)
    time.strftime('%v %R')
  end
end
