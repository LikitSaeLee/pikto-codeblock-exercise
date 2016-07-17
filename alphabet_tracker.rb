class AlphabetTracker
  @@tracker_count = 0
  attr_reader :alp_list

  def initialize( alp_list )
    @alp_list = alp_list
    @@tracker_count += 1
  end

  def self.tracker_count
    @@tracker_count
  end

  def transform_list
    @alp_list = self.alp_list.map { |c| yield( c ) }
  end
end
