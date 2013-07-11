require 'spec_helper'

describe Wine do
	it 'is valid with valid attributes' do
		Wine.new(:winery_id => 99, :name => 'Winestyr Estates Beaujolais Nouveau', :description => 'A new wine from your new wine shop').should be_valid
	end
	
	it 'is not valid without a name' do
		Wine.new(:name => nil).should_not be_valid
	end
end