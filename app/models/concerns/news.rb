class News

  def initialize(query)
    url =  "http://api.npr.org/query?apiKey=#{ENV['NPR_TOKEN']}&searchTerm=#{query}
        &numResults=5&output=JSON&fields=title,teaser"
    HTTParty.get(url)
  end

end
