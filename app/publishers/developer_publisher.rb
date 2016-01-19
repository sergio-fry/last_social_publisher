class DeveloperPublisher
  def initialize(credentials=nil)
  end

  def publish(post)
    link = random_link

    File.open(File.join(Rails.root, "log", "publisher_developer.log"), "a") do |file|
      file.puts "START" + "=" * 75
      file.puts "== #{post.title}"
      file.puts "#{post.description}"
      file.puts "-" * 80
      file.puts "#{post.body}"
      file.puts "-" * 80
      file.puts "#{link}"
      file.puts "END" + "=" * 77
    end

    Posting.create! post: post, link: link
  end

  private

  def random_link
    "http://example.com/posting/#{Time.now.to_date}/#{Time.now.to_f}/#{rand}"
  end
end
