module PlacementHelper
  def google_map(center)
    "https://maps.googleapis.com/maps/api/staticmap?center=#{center}&size=300x300&zoom=17&markers=size:mid%7Ccolor:0x005fff%7Clabel:%7C#{center}"
  end
end
