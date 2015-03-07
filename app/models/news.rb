class News
  attr_reader :content
  def initialize(query)
    url =  "http://api.npr.org/query?apiKey=#{ENV['NPR_TOKEN']}&searchTerm=#{query}
        &numResults=5&fields=title,teaser"
    @content = HTTParty.get(url)
  end
end
