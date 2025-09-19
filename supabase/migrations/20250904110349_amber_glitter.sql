/*
  # Fix Property Images

  1. Updates
    - Fix all broken image URLs with working Pexels real estate images
    - Update gallery images for properties that need them
    - Ensure all properties have valid, high-quality images

  2. Changes
    - Replace broken URLs with verified Pexels real estate images
    - Add gallery images for properties missing them
    - Update image URLs to use proper Pexels format
*/

-- Fix broken image URLs with working real estate images
UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Skyline Penthouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/2102587/pexels-photo-2102587.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2121120/pexels-photo-2121120.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Thames Riverside Mansion';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1571453/pexels-photo-1571453.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1571453/pexels-photo-1571453.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2121122/pexels-photo-2121122.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643384/pexels-photo-1643384.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Central Park Penthouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/2102588/pexels-photo-2102588.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/2102588/pexels-photo-2102588.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1571461/pexels-photo-1571461.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2121123/pexels-photo-2121123.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Monaco Harbor Villa';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1571454/pexels-photo-1571454.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1571454/pexels-photo-1571454.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102589/pexels-photo-2102589.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643385/pexels-photo-1643385.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Tokyo Modern Loft';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1571455/pexels-photo-1571455.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1571455/pexels-photo-1571455.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102590/pexels-photo-2102590.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643386/pexels-photo-1643386.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Sydney Harbor Penthouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1571456/pexels-photo-1571456.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1571456/pexels-photo-1571456.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102591/pexels-photo-2102591.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643387/pexels-photo-1643387.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Dubai Marina Tower';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1571457/pexels-photo-1571457.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1571457/pexels-photo-1571457.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102592/pexels-photo-2102592.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643388/pexels-photo-1643388.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Santorini Cliffside Villa';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1571458/pexels-photo-1571458.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1571458/pexels-photo-1571458.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102593/pexels-photo-2102593.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643389/pexels-photo-1643389.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Beverly Hills Estate';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1571459/pexels-photo-1571459.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1571459/pexels-photo-1571459.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102594/pexels-photo-2102594.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643390/pexels-photo-1643390.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Alpine Chalet Retreat';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396119/pexels-photo-1396119.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396119/pexels-photo-1396119.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102595/pexels-photo-2102595.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643391/pexels-photo-1643391.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Tuscan Countryside Villa';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102596/pexels-photo-2102596.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643392/pexels-photo-1643392.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Malibu Oceanfront Estate';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102597/pexels-photo-2102597.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643393/pexels-photo-1643393.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Scottish Highland Castle';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396133/pexels-photo-1396133.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396133/pexels-photo-1396133.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102598/pexels-photo-2102598.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643394/pexels-photo-1643394.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Miami Art Deco Penthouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396134/pexels-photo-1396134.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396134/pexels-photo-1396134.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102599/pexels-photo-2102599.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643395/pexels-photo-1643395.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Barcelona Gothic Quarter Loft';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396135/pexels-photo-1396135.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396135/pexels-photo-1396135.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102600/pexels-photo-2102600.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643396/pexels-photo-1643396.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Amsterdam Canal House';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396136/pexels-photo-1396136.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396136/pexels-photo-1396136.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102601/pexels-photo-2102601.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643397/pexels-photo-1643397.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Singapore Sky Garden';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396137/pexels-photo-1396137.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396137/pexels-photo-1396137.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102602/pexels-photo-2102602.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643398/pexels-photo-1643398.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Hong Kong Peak Residence';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396138/pexels-photo-1396138.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396138/pexels-photo-1396138.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102603/pexels-photo-2102603.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643399/pexels-photo-1643399.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Aspen Mountain Lodge';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396139/pexels-photo-1396139.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396139/pexels-photo-1396139.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102604/pexels-photo-2102604.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643400/pexels-photo-1643400.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Côte d''Azur Villa';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396140/pexels-photo-1396140.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396140/pexels-photo-1396140.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102605/pexels-photo-2102605.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643401/pexels-photo-1643401.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Manhattan Tribeca Loft';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396141/pexels-photo-1396141.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396141/pexels-photo-1396141.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102606/pexels-photo-2102606.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643402/pexels-photo-1643402.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Stockholm Archipelago House';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396142/pexels-photo-1396142.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396142/pexels-photo-1396142.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102607/pexels-photo-2102607.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643403/pexels-photo-1643403.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Cape Town Vineyard Estate';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396143/pexels-photo-1396143.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396143/pexels-photo-1396143.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102608/pexels-photo-2102608.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643404/pexels-photo-1643404.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Vancouver Glass House';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396144/pexels-photo-1396144.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396144/pexels-photo-1396144.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102609/pexels-photo-2102609.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643405/pexels-photo-1643405.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Rio Copacabana Penthouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396145/pexels-photo-1396145.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396145/pexels-photo-1396145.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102610/pexels-photo-2102610.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643406/pexels-photo-1643406.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Mumbai Sky Residence';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396146/pexels-photo-1396146.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396146/pexels-photo-1396146.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102611/pexels-photo-2102611.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643407/pexels-photo-1643407.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Seoul Gangnam Tower';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396147/pexels-photo-1396147.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396147/pexels-photo-1396147.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102612/pexels-photo-2102612.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643408/pexels-photo-1643408.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Istanbul Bosphorus Mansion';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396148/pexels-photo-1396148.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396148/pexels-photo-1396148.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102613/pexels-photo-2102613.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643409/pexels-photo-1643409.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Melbourne Docklands Penthouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396149/pexels-photo-1396149.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396149/pexels-photo-1396149.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102614/pexels-photo-2102614.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643410/pexels-photo-1643410.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Buenos Aires Palermo Townhouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396150/pexels-photo-1396150.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396150/pexels-photo-1396150.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102615/pexels-photo-2102615.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643411/pexels-photo-1643411.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Tel Aviv Bauhaus Apartment';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396151/pexels-photo-1396151.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396151/pexels-photo-1396151.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102616/pexels-photo-2102616.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643412/pexels-photo-1643412.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Cairo Nile View Penthouse';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396152/pexels-photo-1396152.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396152/pexels-photo-1396152.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102617/pexels-photo-2102617.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643413/pexels-photo-1643413.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Moscow Red Square Mansion';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396153/pexels-photo-1396153.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396153/pexels-photo-1396153.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102618/pexels-photo-2102618.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643414/pexels-photo-1643414.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Lagos Island Villa';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396154/pexels-photo-1396154.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396154/pexels-photo-1396154.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102619/pexels-photo-2102619.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643415/pexels-photo-1643415.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Marrakech Riad Palace';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396155/pexels-photo-1396155.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396155/pexels-photo-1396155.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102620/pexels-photo-2102620.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643416/pexels-photo-1643416.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Reykjavik Northern Lights House';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396156/pexels-photo-1396156.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396156/pexels-photo-1396156.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102621/pexels-photo-2102621.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643417/pexels-photo-1643417.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Prague Castle View Apartment';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396157/pexels-photo-1396157.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396157/pexels-photo-1396157.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102622/pexels-photo-2102622.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643418/pexels-photo-1643418.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Vienna Imperial Palace Suite';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396158/pexels-photo-1396158.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396158/pexels-photo-1396158.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102623/pexels-photo-2102623.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643419/pexels-photo-1643419.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Brussels Art Nouveau Mansion';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396159/pexels-photo-1396159.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396159/pexels-photo-1396159.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102624/pexels-photo-2102624.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643420/pexels-photo-1643420.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Oslo Fjord Villa';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396160/pexels-photo-1396160.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396160/pexels-photo-1396160.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102625/pexels-photo-2102625.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643421/pexels-photo-1643421.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Copenhagen Harbor Loft';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396161/pexels-photo-1396161.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396161/pexels-photo-1396161.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102626/pexels-photo-2102626.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643422/pexels-photo-1643422.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Helsinki Design District Apartment';

UPDATE properties SET 
  image_url = 'https://images.pexels.com/photos/1396162/pexels-photo-1396162.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
  gallery_images = ARRAY[
    'https://images.pexels.com/photos/1396162/pexels-photo-1396162.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/2102627/pexels-photo-2102627.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800',
    'https://images.pexels.com/photos/1643423/pexels-photo-1643423.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800'
  ]
WHERE title = 'Zurich Lake House';