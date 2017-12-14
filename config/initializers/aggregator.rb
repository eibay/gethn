require 'HTTParty'

def is_story_id_uniq?(id)
  Article.exists?(id) ? false : true
end

def collectDetails(article, title)
  status = is_story_id_uniq?(article["objectID"])
  puts status
  if status == true
    Article.create({
      title: title,
      id: article["objectID"],
      created_at: article["created_at"]
      })
  end
end

titles = []
url = "http://hn.algolia.com/api/v1/search_by_date?query=nodejs"
response = HTTParty.get(url, :headers =>{'Content-Type' => 'application/json'})
response["hits"].map do |hit|
  ( hit["title"] ? titles << hit["title"] : titles << hit["story_title"] )
  ( hit["title"] ? collectDetails(hit, hit["title"]) : collectDetails(hit, hit["story_title"]))
end
puts titles.uniq

