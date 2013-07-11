require 'spec_helper'

describe Winery do
	it 'is valid with valid attributes' do
		Winery.new(:name => 'Winestyr Estates',:location => 'Chicago').should be_valid
	end

	it 'is not valid without a name' do
		Winery.new(:name => nil).should_not be_valid
	end
end