require_relative '../number_tracker.rb'
require_relative '../alphabet_tracker.rb'

# Exercise 1
describe NumberTracker do
  let( :integers ) { [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ] }
  let( :number_tracker ) { NumberTracker.new( integers ) }

  describe 'instance states' do
    it 'store an array of integer' do
      expect( number_tracker.num_list ).to eq( [ 1, 2, 3, 4, 5, 6, 7, 8, 9 ] )
    end
  end

  describe '#transform_list' do
    it 'transform the number list by taking custom mathematical expression' do
      number_tracker.transform_list { |n| n*2 }
      expect( number_tracker.num_list ).to eq( [ 2, 4, 6, 8, 10, 12, 14, 16, 18 ] )
    end
  end

  describe '.tracker_count' do
    it 'count the number of initialized number tracker instance' do
      3.times { NumberTracker.new( integers ) }
      expect( NumberTracker.tracker_count ).to eq 3
    end
  end
end

# Exercise 2
# remove the skip: true and implement the AlphabetTracker

describe AlphabetTracker, skip: true do
  let( :alphabets ) { [ 'a', 'e', 'i', 'o', 'u' ] }
  let( :alphabet_tracker ) { AlphabetTracker.new( alphabets ) }

  describe 'instance states' do
    it 'store an array of alphabet' do
      expect( alphabet_tracker.alp_list ).to eq( [ 'a', 'e', 'i', 'o', 'u' ] )
    end
  end

  describe '#transform_list' do
    it 'transform the alphabet list by taking custom expression' do
      alphabet_tracker.transform_list { |c| c*2 }
      expect( alphabet_tracker.num_list ).to eq( [ 'aa', 'ee', 'ii', 'oo', 'uu' ] )
    end
  end

  describe '.tracker_count' do
    it 'count the number of initialized number tracker instance' do
      3.times { AlphabetTracker.new( integers ) }
      expect( AlphabetTracker.tracker_count ).to eq 3
    end
  end
end

# Exercise 3
# Create a parent class name Tracker and extract the common method of NumberTracker and AlphabetTracker to its parent class.
