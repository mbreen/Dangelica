require 'paperclip'

class JewelryItem < ActiveRecord::Base
  
  belongs_to :jewelry_type
  belongs_to :string_type
  belongs_to :clasp
  belongs_to :earring_type
  belongs_to :collection
  
  has_many :showcase_placements
  has_many :showcases, :through => :showcase_placements
  
  has_many :jewelry_stones
  has_many :stones, :through => :jewelry_stones
  has_many :jewelry_crystals
  has_many :crystals, :through => :jewelry_crystals
  has_many :jewelry_beads
  has_many :beads, :through => :jewelry_beads
  has_many :jewelry_filler_beads
  has_many :filler_beads, :through => :jewelry_filler_beads
  
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  attr_accessor :stone_id_list, :bead_id_list, :crystal_id_list, :filler_bead_id_list
  
  after_save :create_join_table_entries_from_id_lists
  
  def create_join_table_entries_from_id_lists
    @stone_id_list ||= []
    @bead_id_list ||= []
    @crystal_id_list ||= []
    @filler_bead_id_list ||= []

    @stone_id_list.each do |stone_id|
      stone = Stone.find(stone_id)
      JewelryStone.create!(:jewelry_item => self, :stone => stone)
    end
    @bead_id_list.each do |bead_id|
      bead = Bead.find(bead_id)
      JewelryBead.create!(:jewelry_item => self, :bead => bead)
    end
    @crystal_id_list.each do |crystal_id|
      crystal = Crystal.find(crystal_id)
      JewelryCrystal.create!(:jewelry_item => self, :crystal => crystal)
    end
    @filler_bead_id_list.each do |filler_bead_id|
      filler_bead = FillerBead.find(filler_bead_id)
      JewelryFillerBead.create!(:jewelry_item => self, :filler_bead => filler_bead)
    end
  end
end
