json.array!(@blogs) do |blog|
  json.extract! blog, :id, :name, :no_of_blogs, :lead
  json.url blog_url(blog, format: :json)
end
