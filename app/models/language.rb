class Language
  attr_reader :content

  def initialize(phrase)
    # url =  "https://yoda.p.mashape.com/yoda?sentence=#{phrase}",
    #         :headers => {
    #           "X-Mashape-Key" => "XugzD5SqdYmshxOU35YE3pbnKGn5p16YlqgjsnVdKGdFyEY3s0",
    #           "Accept" => "text/plain"
    #         }
    @content = HTTParty.get("https://yoda.p.mashape.com/yoda?sentence=#{phrase}",
            :headers => {
              "X-Mashape-Key" => "XugzD5SqdYmshxOU35YE3pbnKGn5p16YlqgjsnVdKGdFyEY3s0",
              "Accept" => "text/plain"
            })
  end
end

# # These code snippets use an open-source library.
# response = Unirest.get "https://yoda.p.mashape.com/yoda?sentence=You+will+learn+how+to+speak+like+me+someday.++Oh+wait.",
# headers:{
#   "X-Mashape-Key" => "XugzD5SqdYmshxOU35YE3pbnKGn5p16YlqgjsnVdKGdFyEY3s0",
#   "Accept" => "text/plain"
# }
#
# response = HTTParty.get(
#     "https://api.github.com/users/#{username}",
#     :headers => {"Authorization" => "token #{ENV['GITHUB_TOKEN']}",
#                  "User-Agent" => "anyone"
#                 }
# )
