Winery.create(:location => 'Bordeaux', :name => 'S. Marmy Estates')
Winery.create(:location => 'Napa Valley ', :name => "Slaw Sauvignon")
Winery.create(:location => 'Cosa Nostra ', :name => "Vinnie's Vines")
Wine.create(:description => 'Tasty', :name => 'Cab', :winery_id => 1)
Wine.create(:description => 'Not so tasty...', :name => 'Chard', :winery_id => 1)
Wine.create(:description => 'Bubbly. Notes of bubbles. Not much else', :name => 'Bland de blancs', :winery_id => 3)
# Not the best idea to arbitrarily assign winery_ids...

puts "#{Winery.count + Wine.count} sample data points created."
# Count is off if assets already exist before seeding.