class NumberTracker
  @@tracker_count = 0
  attr_reader :num_list

  def initialize( num_list )
    @num_list = num_list
    @@tracker_count += 1
  end

  def self.tracker_count
    @@tracker_count
  end

  def transform_list
    @num_list = self.num_list.map { |n| yield( n ) }
  end
end
