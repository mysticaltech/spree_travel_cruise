### Creating calculator if not created before
Spree::TravelCalculator.where(:name => 'Spree::CalculatorCruise').first_or_create(:product_type => Spree::ProductType.find_by_name('cruise'))
