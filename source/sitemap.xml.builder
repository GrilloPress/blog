# source/sitemap.xml.builder
xml.instruct!
xml.urlset "xmlns" => "http://www.sitemaps.org/schemas/sitemap/0.9" do
  sitemap.resources.each do |resource|
    xml.url do
      xml.loc "#{"https://grillopress.github.io"}#{resource.url}"
    end if resource.url !~ /\.(css|js|eot|svg|woff|ttf|png|jpg)$/ 
  end
end