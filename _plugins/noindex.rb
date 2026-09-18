# Keep search engines on the homepage only.
# robots.txt + sitemap already hide other URLs; this meta tag covers cases
# where a crawler still finds /cv/, /publications/, or leftover demo pages.
Jekyll::Hooks.register [:pages, :documents], :post_render do |item|
  next unless item.output_ext == ".html"
  next unless item.output&.include?("<head")

  url = item.url.to_s.chomp("index.html")
  url = "/" if url.empty?
  next if url == "/"

  item.output.sub!(/<head[^>]*>/i, "\\0\n    <meta name=\"robots\" content=\"noindex, follow\">")
end
