Rails.configuration.x.publishers = []

unless Rails.env.match(/stage|production/)
  Rails.configuration.x.publishers << DeveloperPublisher
end

