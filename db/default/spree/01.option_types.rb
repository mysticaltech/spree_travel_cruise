### This is the data
option_types = [
  {:name => "start_date", :presentation => "Start Date", :attr_type => 'date', :short => 'Start'},
  {:name => "end_date", :presentation => "End Date", :attr_type => 'date', :short => 'End'},
  {:name => "cabin_type", :presentation => "Cabin Type", :attr_type => 'selection', :short => 'Cabin Type'},
  {:name => "adult", :presentation => "Adult", :attr_type => 'integer', :short => 'Adult'},
  {:name => "simple", :presentation => "Simple", :attr_type => 'float', :short => 'x 1'},
  {:name => "double", :presentation => "Double", :attr_type => 'float', :short => 'x 2'},
  {:name => "destination", :presentation => "Destination", :attr_type => 'destination', :short => 'Dest'},
]

### Creating Option Types
option_types.each do |ot|
  Spree::OptionType.where(:name => ot[:name]).first_or_create(:presentation => ot[:presentation], :attr_type => ot[:attr_type])
end

### Creating Destination Taxonomy
Spree::Taxonomy.first_or_create( :name => "Destination")

