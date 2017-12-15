require 'HTTParty'
require 'rufus-scheduler'

def is_story_id_uniq?(id)
  Article.exists?(story_id: id) ? false : true
end

def collectDetails(article, title)
  if is_story_id_uniq?(article["_tags"][2])
    Article.create({
      title: title,
      author: article["author"],
      created_at: article["created_at"],
      story_id: article["_tags"][2]
      })
  end
end

def fetchData()
  titles = []
  url = "http://hn.algolia.com/api/v1/search_by_date?query=nodejs"
  response = HTTParty.get(url, :headers =>{'Content-Type' => 'application/json'})
  response["hits"].each do |story|
    ( story["title"] ? collectDetails(story, story["title"]) : collectDetails(story, story["story_title"]))
  end
end

scheduler = Rufus::Scheduler.singleton
hourly_fetch = scheduler.every '1m' do 
  puts "Fetching now..#{Time.now.strftime('%X')}!"
  fetchData
end
