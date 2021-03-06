desc "Print out all defined initializers in the order they are invoked by Rails."
task initializer: :environment do
  Rails.application.initializers.tsort_each do |initializer|
    puts initializer.name
  end
end
