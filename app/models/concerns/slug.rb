module Slug
  def slug
    self.username.downcase.gsub(" ", "-")
  end
end

module FindBySlug
  def find_by_slug(slug)
    self.all.find{|user| user.slug == slug}
  end
end