class Search
  def initialize title
    @title = title
    get_results
  end

  def get_results
    unparsed_results = RestClient.get "http://www.omdbapi.com/?s=#{@title}"
    @parsed_results = JSON.parse(unparsed_results.body)
  end

  def return
    return @parsed_results["Search"]
  end
end
