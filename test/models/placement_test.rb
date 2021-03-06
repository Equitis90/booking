require 'test_helper'

class PlacementTest < ActiveSupport::TestCase

  test "should not create placement without title" do
    fixt = placements(:one)
    placement = Placement.new(title: nil, address: fixt.address, price: fixt.price)
    assert_not placement.save
  end

  test "should not create placement without address" do
    fixt = placements(:one)
    placement = Placement.new(title: 'Hotel', address: nil, price: fixt.price)
    assert_not placement.save
  end

  test "should not create placement without price" do
    fixt = placements(:one)
    placement = Placement.new(title: 'Hotel', address: fixt.address, price: nil)
    assert_not placement.save
  end

  test "should not create placement with unacceptable address" do
    fixt = placements(:one)
    placement = Placement.new(title: 'Hotel', address: 'aaaaaaaaaaaaaaa', price: fixt.price)
    assert_not placement.save
  end

  test "should not create placement with used title" do
    fixt = placements(:one)
    placement = Placement.new(title: fixt.title, address: fixt.address, price: fixt.price)
    assert_not placement.save
  end

  test "should create placement with acceptable fields" do
    fixt = placements(:two)
    placement = Placement.new(title: 'Hotel # 3', address: fixt.address, price: fixt.price)
    assert placement.save
  end
end
