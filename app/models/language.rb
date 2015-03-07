class Language
  attr_reader :content

  def initialize(phrase)
    phrase = phrase.gsub(/[^[a-zA-Z.!?,\s\d]]/, "").split.join("+")
    @content = HTTParty.get("https://yoda.p.mashape.com/yoda?sentence=#{phrase}",
            :headers => {
              "X-Mashape-Key" => "XugzD5SqdYmshxOU35YE3pbnKGn5p16YlqgjsnVdKGdFyEY3s0",
              "Accept" => "text/plain"
            })
  end
end
