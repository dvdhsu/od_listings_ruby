namespace :listings do
  require 'csv'

  desc "imports listings from CSV files"
  task import: :environment do
    path = Rails.root.join('listings.csv')
    CSV.foreach(path, headers: true) do |row|
      listing = row.to_hash
      listing["od_id"] = listing["id"]
      listing["id"] = nil
      Listing.create!(listing)
    end
  end
end
