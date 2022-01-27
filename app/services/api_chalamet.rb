class ApiChalamet

  def all_quotes
    response = HTTParty.get('http://localhost:3001/quotes')

  end
  def get_random_quote
    response = HTTParty.get('http://localhost:3001/quotes/random')
  end
  def get_random_photo_path
    response = HTTParty.get('http://localhost:3001/photos/random')
  end
  def post_quote(content)
    response = HTTParty.post('http://localhost:3001/quotes?content=' + content)
  end
  def post_photo(path)
    response = HTTParty.post('http://localhost:3001/quotes?file_path' + path)
  end
end