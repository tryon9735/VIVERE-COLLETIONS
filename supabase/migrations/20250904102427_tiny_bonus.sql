/*
  # Populate Properties with Real Estate Images

  1. Data Population
    - Insert 30 luxury properties with real estate images from Pexels
    - Include diverse property types: apartments, houses, penthouses, villas, mansions, townhouses, lofts, castles
    - Add comprehensive features and agent information
    - Set appropriate pricing and location data

  2. Image Sources
    - All images are high-quality real estate photos from Pexels
    - Images showcase luxury properties and architectural excellence
    - Gallery images included for detailed property views
*/

-- Clear existing data
DELETE FROM properties;

-- Insert 30 luxury properties with real estate images
INSERT INTO properties (
  title, location, country, price, currency, bedrooms, bathrooms, area, type, 
  image_url, gallery_images, description, year_built, features, status, 
  agent_name, agent_email, agent_phone
) VALUES 
-- Penthouses
(
  'Sky Penthouse Monaco', 'Monte Carlo', 'Monaco', 15000000, '€', 4, 5, 450,
  'penthouse',
  'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571463/pexels-photo-1571463.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Extraordinary penthouse with panoramic Mediterranean views, featuring floor-to-ceiling windows and premium finishes throughout.',
  2020, 
  ARRAY['Panoramic Views', 'Private Terrace', 'Concierge Service', 'Wine Cellar', 'Smart Home'],
  'available', 'Sophie Laurent', 'sophie@luxe.com', '+377 93 15 06 00'
),
(
  'Manhattan Sky Residence', 'Upper East Side, New York', 'USA', 25000000, '$', 5, 6, 600,
  'penthouse',
  'https://images.pexels.com/photos/1571468/pexels-photo-1571468.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571468/pexels-photo-1571468.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571471/pexels-photo-1571471.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Iconic Manhattan penthouse with Central Park views, featuring a private elevator and rooftop terrace.',
  2019,
  ARRAY['Central Park Views', 'Private Elevator', 'Rooftop Terrace', 'Marble Finishes', 'Butler Service'],
  'available', 'James Mitchell', 'james@luxe.com', '+1 212 555 0123'
),

-- Villas
(
  'Villa Serenity', 'Côte d''Azur', 'France', 8500000, '€', 6, 7, 800,
  'villa',
  'https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1396119/pexels-photo-1396119.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Magnificent villa overlooking the Mediterranean, with private beach access and infinity pool.',
  2018,
  ARRAY['Private Beach', 'Infinity Pool', 'Wine Cellar', 'Guest House', 'Helicopter Pad'],
  'available', 'Marie Dubois', 'marie@luxe.com', '+33 4 93 76 78 24'
),
(
  'Tuscan Estate', 'Chianti', 'Italy', 6200000, '€', 8, 6, 1200,
  'villa',
  'https://images.pexels.com/photos/1396117/pexels-photo-1396117.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396117/pexels-photo-1396117.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Historic Tuscan villa surrounded by vineyards, featuring original frescoes and modern amenities.',
  1650,
  ARRAY['Historic Frescoes', 'Vineyard', 'Wine Production', 'Olive Grove', 'Chapel'],
  'available', 'Marco Rossi', 'marco@luxe.com', '+39 055 123 4567'
),

-- Mansions
(
  'Belgravia Mansion', 'Belgravia, London', 'UK', 35000000, '£', 7, 8, 1000,
  'mansion',
  'https://images.pexels.com/photos/1396118/pexels-photo-1396118.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396118/pexels-photo-1396118.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571452/pexels-photo-1571452.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Georgian mansion in prestigious Belgravia, featuring period details and contemporary luxury.',
  1820,
  ARRAY['Period Features', 'Private Garden', 'Staff Quarters', 'Wine Cellar', 'Library'],
  'available', 'Charles Pemberton', 'charles@luxe.com', '+44 20 7123 4567'
),
(
  'Beverly Hills Estate', 'Beverly Hills', 'USA', 45000000, '$', 10, 12, 1500,
  'mansion',
  'https://images.pexels.com/photos/1571457/pexels-photo-1571457.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571457/pexels-photo-1571457.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571461/pexels-photo-1571461.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Spectacular Beverly Hills mansion with city views, featuring a resort-style backyard and home theater.',
  2021,
  ARRAY['City Views', 'Resort Pool', 'Home Theater', 'Tennis Court', 'Guest House'],
  'available', 'David Chen', 'david@luxe.com', '+1 310 555 0199'
),

-- Houses
(
  'Modern Architectural Marvel', 'Malibu', 'USA', 12000000, '$', 5, 6, 550,
  'house',
  'https://images.pexels.com/photos/1396125/pexels-photo-1396125.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396125/pexels-photo-1396125.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571459/pexels-photo-1571459.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Contemporary architectural masterpiece with ocean views and sustainable design elements.',
  2022,
  ARRAY['Ocean Views', 'Sustainable Design', 'Solar Panels', 'Smart Home', 'Infinity Pool'],
  'available', 'Sarah Williams', 'sarah@luxe.com', '+1 310 555 0145'
),
(
  'Hamptons Retreat', 'East Hampton', 'USA', 8900000, '$', 6, 5, 650,
  'house',
  'https://images.pexels.com/photos/1396127/pexels-photo-1396127.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396127/pexels-photo-1396127.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323775/pexels-photo-323775.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Classic Hamptons estate with traditional shingle style architecture and pristine gardens.',
  2017,
  ARRAY['Traditional Architecture', 'Pristine Gardens', 'Pool House', 'Tennis Court', 'Beach Access'],
  'available', 'Robert Thompson', 'robert@luxe.com', '+1 631 555 0167'
),

-- Apartments
(
  'Parisian Elegance', '7th Arrondissement, Paris', 'France', 4200000, '€', 3, 3, 200,
  'apartment',
  'https://images.pexels.com/photos/1571453/pexels-photo-1571453.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571453/pexels-photo-1571453.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571454/pexels-photo-1571454.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Elegant Haussmannian apartment with period features and modern luxury amenities.',
  1870,
  ARRAY['Period Features', 'High Ceilings', 'Herringbone Floors', 'Balcony', 'Concierge'],
  'available', 'Isabelle Martin', 'isabelle@luxe.com', '+33 1 42 86 83 26'
),
(
  'Tokyo Modern', 'Shibuya', 'Japan', 3800000, '¥', 2, 2, 120,
  'apartment',
  'https://images.pexels.com/photos/1571464/pexels-photo-1571464.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571464/pexels-photo-1571464.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571465/pexels-photo-1571465.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Ultra-modern apartment in the heart of Tokyo with minimalist design and city views.',
  2023,
  ARRAY['City Views', 'Minimalist Design', 'Smart Home', 'Gym Access', 'Rooftop Garden'],
  'available', 'Yuki Tanaka', 'yuki@luxe.com', '+81 3 1234 5678'
),

-- Castles
(
  'Scottish Highland Castle', 'Highlands', 'Scotland', 18000000, '£', 12, 10, 2000,
  'castle',
  'https://images.pexels.com/photos/1396129/pexels-photo-1396129.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396129/pexels-photo-1396129.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323772/pexels-photo-323772.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Historic 16th-century castle with 500 acres of pristine Highland landscape and private loch.',
  1580,
  ARRAY['Historic Castle', 'Private Loch', '500 Acres', 'Great Hall', 'Tower Suites'],
  'available', 'Lord William MacLeod', 'william@luxe.com', '+44 1463 123456'
),
(
  'Loire Valley Château', 'Loire Valley', 'France', 22000000, '€', 15, 12, 2500,
  'castle',
  'https://images.pexels.com/photos/1396130/pexels-photo-1396130.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396130/pexels-photo-1396130.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323774/pexels-photo-323774.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Renaissance château with formal gardens, featuring original tapestries and period furnishings.',
  1520,
  ARRAY['Renaissance Architecture', 'Formal Gardens', 'Original Tapestries', 'Moat', 'Chapel'],
  'available', 'Comte de Montclair', 'comte@luxe.com', '+33 2 47 12 34 56'
),

-- Lofts
(
  'SoHo Industrial Loft', 'SoHo, New York', 'USA', 7500000, '$', 3, 3, 400,
  'loft',
  'https://images.pexels.com/photos/1571466/pexels-photo-1571466.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571466/pexels-photo-1571466.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571467/pexels-photo-1571467.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Converted industrial loft with exposed brick, soaring ceilings, and artist studio space.',
  1890,
  ARRAY['Exposed Brick', 'Soaring Ceilings', 'Artist Studio', 'Freight Elevator', 'Skylights'],
  'available', 'Alex Rodriguez', 'alex@luxe.com', '+1 212 555 0178'
),
(
  'Berlin Creative Loft', 'Mitte', 'Germany', 2800000, '€', 2, 2, 300,
  'loft',
  'https://images.pexels.com/photos/1571469/pexels-photo-1571469.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571469/pexels-photo-1571469.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571470/pexels-photo-1571470.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Contemporary loft in historic Berlin building with industrial charm and modern amenities.',
  1920,
  ARRAY['Industrial Charm', 'Modern Amenities', 'High Ceilings', 'Courtyard Access', 'Art District'],
  'available', 'Klaus Weber', 'klaus@luxe.com', '+49 30 1234 5678'
),

-- Townhouses
(
  'Notting Hill Townhouse', 'Notting Hill, London', 'UK', 12500000, '£', 5, 4, 350,
  'townhouse',
  'https://images.pexels.com/photos/1396131/pexels-photo-1396131.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396131/pexels-photo-1396131.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323773/pexels-photo-323773.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Victorian townhouse in prestigious Notting Hill with private garden and period features.',
  1880,
  ARRAY['Victorian Features', 'Private Garden', 'Period Details', 'Mews Access', 'Wine Storage'],
  'available', 'Emma Thompson', 'emma@luxe.com', '+44 20 7123 4589'
),
(
  'Brooklyn Heights Townhouse', 'Brooklyn Heights', 'USA', 9800000, '$', 4, 4, 420,
  'townhouse',
  'https://images.pexels.com/photos/1396133/pexels-photo-1396133.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396133/pexels-photo-1396133.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323776/pexels-photo-323776.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Historic brownstone with Manhattan skyline views and beautifully restored original details.',
  1890,
  ARRAY['Manhattan Views', 'Original Details', 'Private Roof Deck', 'Garden Level', 'Historic Charm'],
  'available', 'Michael Davis', 'michael@luxe.com', '+1 718 555 0134'
),

-- More Penthouses
(
  'Dubai Sky Palace', 'Downtown Dubai', 'UAE', 20000000, '$', 6, 7, 800,
  'penthouse',
  'https://images.pexels.com/photos/1571472/pexels-photo-1571472.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571472/pexels-photo-1571472.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571473/pexels-photo-1571473.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Ultra-modern penthouse with Burj Khalifa views and private infinity pool.',
  2023,
  ARRAY['Burj Khalifa Views', 'Private Pool', 'Smart Home', 'Concierge', 'Valet Parking'],
  'available', 'Ahmed Al-Rashid', 'ahmed@luxe.com', '+971 4 123 4567'
),
(
  'Singapore Sky Garden', 'Marina Bay', 'Singapore', 18000000, 'S$', 4, 5, 500,
  'penthouse',
  'https://images.pexels.com/photos/1571474/pexels-photo-1571474.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571474/pexels-photo-1571474.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571475/pexels-photo-1571475.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Futuristic penthouse with vertical gardens and panoramic city views.',
  2024,
  ARRAY['Vertical Gardens', 'City Views', 'Sustainable Design', 'Private Lift', 'Sky Terrace'],
  'available', 'Li Wei', 'li@luxe.com', '+65 6123 4567'
),

-- More Villas
(
  'Ibiza Sunset Villa', 'San José', 'Spain', 7200000, '€', 5, 6, 600,
  'villa',
  'https://images.pexels.com/photos/1396134/pexels-photo-1396134.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396134/pexels-photo-1396134.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323777/pexels-photo-323777.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Modern villa with spectacular sunset views over the Mediterranean and private beach club access.',
  2020,
  ARRAY['Sunset Views', 'Beach Club Access', 'Infinity Pool', 'Outdoor Kitchen', 'Guest Suites'],
  'available', 'Carlos Mendez', 'carlos@luxe.com', '+34 971 123 456'
),
(
  'Santorini Cliffside Villa', 'Oia', 'Greece', 5500000, '€', 4, 4, 350,
  'villa',
  'https://images.pexels.com/photos/1396135/pexels-photo-1396135.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396135/pexels-photo-1396135.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323778/pexels-photo-323778.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Traditional Cycladic villa with caldera views and infinity pool carved into the cliff.',
  2019,
  ARRAY['Caldera Views', 'Infinity Pool', 'Traditional Architecture', 'Private Terrace', 'Sunset Views'],
  'available', 'Nikos Papadopoulos', 'nikos@luxe.com', '+30 22860 12345'
),

-- More Houses
(
  'Swiss Alpine Chalet', 'Verbier', 'Switzerland', 11000000, 'CHF', 6, 5, 450,
  'house',
  'https://images.pexels.com/photos/1396136/pexels-photo-1396136.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396136/pexels-photo-1396136.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323779/pexels-photo-323779.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Luxury alpine chalet with ski-in/ski-out access and panoramic mountain views.',
  2021,
  ARRAY['Ski-in/Ski-out', 'Mountain Views', 'Wine Cellar', 'Spa', 'Fireplace'],
  'available', 'Hans Mueller', 'hans@luxe.com', '+41 27 123 45 67'
),
(
  'Australian Beach House', 'Bondi Beach, Sydney', 'Australia', 8200000, 'A$', 4, 3, 380,
  'house',
  'https://images.pexels.com/photos/1396137/pexels-photo-1396137.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396137/pexels-photo-1396137.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323781/pexels-photo-323781.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Contemporary beach house with direct ocean access and seamless indoor-outdoor living.',
  2022,
  ARRAY['Ocean Access', 'Indoor-Outdoor Living', 'Surf Storage', 'Outdoor Shower', 'Deck'],
  'available', 'Sophie Anderson', 'sophie.au@luxe.com', '+61 2 9123 4567'
),

-- More Apartments
(
  'Milan Design Apartment', 'Brera', 'Italy', 3200000, '€', 3, 2, 180,
  'apartment',
  'https://images.pexels.com/photos/1571476/pexels-photo-1571476.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571476/pexels-photo-1571476.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571477/pexels-photo-1571477.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Designer apartment in Milan''s fashion district with contemporary art and luxury finishes.',
  2020,
  ARRAY['Fashion District', 'Contemporary Art', 'Designer Finishes', 'Balcony', 'Concierge'],
  'available', 'Giulia Ferrari', 'giulia@luxe.com', '+39 02 1234 5678'
),
(
  'Hong Kong Harbor View', 'Central', 'Hong Kong', 15000000, 'HK$', 3, 3, 250,
  'apartment',
  'https://images.pexels.com/photos/1571478/pexels-photo-1571478.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571478/pexels-photo-1571478.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571479/pexels-photo-1571479.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Luxury apartment with Victoria Harbor views and premium building amenities.',
  2023,
  ARRAY['Harbor Views', 'Premium Amenities', 'Concierge', 'Gym', 'Pool'],
  'available', 'Catherine Wong', 'catherine@luxe.com', '+852 2123 4567'
),

-- More Mansions
(
  'Aspen Mountain Estate', 'Aspen', 'USA', 28000000, '$', 8, 9, 1200,
  'mansion',
  'https://images.pexels.com/photos/1396138/pexels-photo-1396138.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396138/pexels-photo-1396138.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323782/pexels-photo-323782.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Mountain mansion with ski access and panoramic views of the Rocky Mountains.',
  2018,
  ARRAY['Ski Access', 'Mountain Views', 'Wine Cellar', 'Home Theater', 'Guest Wing'],
  'available', 'Jennifer Walsh', 'jennifer@luxe.com', '+1 970 555 0156'
),
(
  'Miami Beach Mansion', 'Star Island', 'USA', 32000000, '$', 9, 10, 1400,
  'mansion',
  'https://images.pexels.com/photos/1396139/pexels-photo-1396139.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396139/pexels-photo-1396139.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323783/pexels-photo-323783.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Waterfront mansion on exclusive Star Island with private dock and resort-style amenities.',
  2022,
  ARRAY['Waterfront', 'Private Dock', 'Resort Pool', 'Tennis Court', 'Guest House'],
  'available', 'Ricardo Santos', 'ricardo@luxe.com', '+1 305 555 0189'
),

-- Additional Properties for Variety
(
  'Kyoto Traditional House', 'Gion District', 'Japan', 4500000, '¥', 5, 3, 280,
  'house',
  'https://images.pexels.com/photos/1396140/pexels-photo-1396140.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396140/pexels-photo-1396140.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323784/pexels-photo-323784.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Traditional Japanese house in historic Gion district with authentic architecture and zen garden.',
  1750,
  ARRAY['Traditional Architecture', 'Zen Garden', 'Tea House', 'Historic District', 'Tatami Rooms'],
  'available', 'Hiroshi Yamamoto', 'hiroshi@luxe.com', '+81 75 1234 5678'
),
(
  'Cape Town Modern Villa', 'Clifton', 'South Africa', 6800000, 'R', 5, 5, 500,
  'villa',
  'https://images.pexels.com/photos/1396141/pexels-photo-1396141.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396141/pexels-photo-1396141.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323785/pexels-photo-323785.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Contemporary villa with Atlantic Ocean views and Table Mountain backdrop.',
  2021,
  ARRAY['Ocean Views', 'Mountain Backdrop', 'Infinity Pool', 'Wine Cellar', 'Guest Suite'],
  'available', 'Thabo Mthembu', 'thabo@luxe.com', '+27 21 123 4567'
),
(
  'Stockholm Archipelago House', 'Archipelago', 'Sweden', 4200000, 'SEK', 4, 3, 320,
  'house',
  'https://images.pexels.com/photos/1396142/pexels-photo-1396142.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396142/pexels-photo-1396142.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323786/pexels-photo-323786.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Scandinavian design house on private island with sustainable features and natural materials.',
  2020,
  ARRAY['Private Island', 'Sustainable Design', 'Natural Materials', 'Sauna', 'Boat Dock'],
  'available', 'Astrid Lindqvist', 'astrid@luxe.com', '+46 8 123 456 78'
),
(
  'Vancouver Glass House', 'West Vancouver', 'Canada', 9500000, 'C$', 4, 4, 450,
  'house',
  'https://images.pexels.com/photos/1396143/pexels-photo-1396143.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396143/pexels-photo-1396143.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323787/pexels-photo-323787.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Glass house with forest and ocean views, featuring sustainable architecture and natural integration.',
  2023,
  ARRAY['Forest Views', 'Ocean Views', 'Glass Architecture', 'Sustainable', 'Natural Integration'],
  'available', 'Emily Chen', 'emily@luxe.com', '+1 604 555 0123'
),
(
  'Moroccan Riad Palace', 'Marrakech', 'Morocco', 3800000, 'MAD', 8, 6, 700,
  'house',
  'https://images.pexels.com/photos/1396144/pexels-photo-1396144.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396144/pexels-photo-1396144.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323788/pexels-photo-323788.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Traditional riad with authentic Moroccan architecture, courtyards, and luxury amenities.',
  1650,
  ARRAY['Traditional Architecture', 'Courtyards', 'Rooftop Terrace', 'Fountain', 'Authentic Details'],
  'available', 'Amina Benali', 'amina@luxe.com', '+212 524 123 456'
),

-- More Lofts
(
  'Amsterdam Canal Loft', 'Jordaan', 'Netherlands', 2200000, '€', 2, 2, 200,
  'loft',
  'https://images.pexels.com/photos/1571480/pexels-photo-1571480.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571480/pexels-photo-1571480.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571481/pexels-photo-1571481.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Historic canal house converted to modern loft with original beams and canal views.',
  1680,
  ARRAY['Canal Views', 'Original Beams', 'Historic Building', 'Modern Conversion', 'Bike Storage'],
  'available', 'Pieter van der Berg', 'pieter@luxe.com', '+31 20 123 4567'
),
(
  'Barcelona Industrial Loft', 'El Born', 'Spain', 1800000, '€', 2, 2, 180,
  'loft',
  'https://images.pexels.com/photos/1571482/pexels-photo-1571482.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571482/pexels-photo-1571482.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571483/pexels-photo-1571483.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Industrial loft in trendy El Born with exposed brick and contemporary design.',
  1920,
  ARRAY['Exposed Brick', 'Contemporary Design', 'High Ceilings', 'Trendy Location', 'Rooftop Access'],
  'available', 'Pablo Garcia', 'pablo@luxe.com', '+34 93 123 4567'
),

-- More Townhouses
(
  'Georgetown Federal Townhouse', 'Georgetown, Washington DC', 'USA', 8500000, '$', 4, 4, 380,
  'townhouse',
  'https://images.pexels.com/photos/1396145/pexels-photo-1396145.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396145/pexels-photo-1396145.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323789/pexels-photo-323789.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Historic Federal-style townhouse in prestigious Georgetown with period details and modern updates.',
  1820,
  ARRAY['Federal Architecture', 'Period Details', 'Modern Updates', 'Private Garden', 'Historic District'],
  'available', 'Patricia Wilson', 'patricia@luxe.com', '+1 202 555 0145'
),
(
  'Chelsea Mews House', 'Chelsea', 'UK', 7800000, '£', 3, 3, 250,
  'townhouse',
  'https://images.pexels.com/photos/1396146/pexels-photo-1396146.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396146/pexels-photo-1396146.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323790/pexels-photo-323790.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Charming mews house in exclusive Chelsea with cobblestone courtyard and modern luxury.',
  1890,
  ARRAY['Mews Location', 'Cobblestone Courtyard', 'Modern Luxury', 'Private Entrance', 'Garden'],
  'available', 'Oliver Hartwell', 'oliver@luxe.com', '+44 20 7123 4590'
),

-- Additional Unique Properties
(
  'Napa Valley Vineyard Estate', 'Napa Valley', 'USA', 16000000, '$', 6, 7, 900,
  'mansion',
  'https://images.pexels.com/photos/1396147/pexels-photo-1396147.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396147/pexels-photo-1396147.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323791/pexels-photo-323791.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Wine estate with working vineyard, tasting room, and panoramic valley views.',
  2019,
  ARRAY['Working Vineyard', 'Tasting Room', 'Valley Views', 'Wine Production', 'Guest Cottage'],
  'available', 'Victoria Sterling', 'victoria@luxe.com', '+1 707 555 0167'
),
(
  'Bali Tropical Villa', 'Seminyak', 'Indonesia', 2500000, '$', 5, 5, 400,
  'villa',
  'https://images.pexels.com/photos/1396148/pexels-photo-1396148.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396148/pexels-photo-1396148.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323792/pexels-photo-323792.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Tropical villa with rice field views, infinity pool, and traditional Balinese architecture.',
  2020,
  ARRAY['Rice Field Views', 'Infinity Pool', 'Traditional Architecture', 'Spa', 'Tropical Gardens'],
  'available', 'Made Sutrisna', 'made@luxe.com', '+62 361 123 456'
),
(
  'Costa Rica Eco Mansion', 'Manuel Antonio', 'Costa Rica', 4800000, '$', 6, 6, 650,
  'mansion',
  'https://images.pexels.com/photos/1396149/pexels-photo-1396149.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396149/pexels-photo-1396149.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323793/pexels-photo-323793.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Sustainable mansion in rainforest setting with ocean views and eco-friendly features.',
  2021,
  ARRAY['Rainforest Setting', 'Ocean Views', 'Sustainable Design', 'Solar Power', 'Wildlife Viewing'],
  'available', 'Carlos Mendoza', 'carlos.cr@luxe.com', '+506 2777 1234'
),
(
  'Norwegian Fjord House', 'Geiranger', 'Norway', 3200000, 'NOK', 4, 3, 300,
  'house',
  'https://images.pexels.com/photos/1396150/pexels-photo-1396150.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396150/pexels-photo-1396150.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323794/pexels-photo-323794.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Modern house with dramatic fjord views and sustainable Scandinavian design.',
  2022,
  ARRAY['Fjord Views', 'Scandinavian Design', 'Sustainable Features', 'Fireplace', 'Mountain Access'],
  'available', 'Erik Andersen', 'erik@luxe.com', '+47 70 12 34 56'
),
(
  'Dubai Marina Penthouse', 'Dubai Marina', 'UAE', 12000000, 'AED', 4, 5, 400,
  'penthouse',
  'https://images.pexels.com/photos/1571484/pexels-photo-1571484.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571484/pexels-photo-1571484.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571485/pexels-photo-1571485.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Luxury penthouse with marina views and access to world-class amenities.',
  2023,
  ARRAY['Marina Views', 'World-class Amenities', 'Private Pool', 'Concierge', 'Valet'],
  'available', 'Fatima Al-Zahra', 'fatima@luxe.com', '+971 4 123 4568'
),
(
  'São Paulo Modern Apartment', 'Jardins', 'Brazil', 2800000, 'R$', 3, 3, 220,
  'apartment',
  'https://images.pexels.com/photos/1571486/pexels-photo-1571486.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571486/pexels-photo-1571486.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571487/pexels-photo-1571487.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Contemporary apartment in upscale Jardins with city views and premium amenities.',
  2022,
  ARRAY['City Views', 'Premium Amenities', 'Modern Design', 'Gym', 'Pool'],
  'available', 'Ana Silva', 'ana@luxe.com', '+55 11 1234 5678'
),
(
  'Irish Castle Estate', 'County Cork', 'Ireland', 14000000, '€', 20, 15, 3000,
  'castle',
  'https://images.pexels.com/photos/1396151/pexels-photo-1396151.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396151/pexels-photo-1396151.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323795/pexels-photo-323795.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Medieval castle with 1000 acres of countryside, featuring restored great hall and modern amenities.',
  1400,
  ARRAY['Medieval Castle', '1000 Acres', 'Great Hall', 'Modern Amenities', 'Stables'],
  'available', 'Seamus O''Brien', 'seamus@luxe.com', '+353 21 123 4567'
),
(
  'Tel Aviv Bauhaus Apartment', 'White City', 'Israel', 2200000, '₪', 3, 2, 150,
  'apartment',
  'https://images.pexels.com/photos/1571488/pexels-photo-1571488.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571488/pexels-photo-1571488.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571489/pexels-photo-1571489.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Restored Bauhaus apartment in UNESCO World Heritage White City with original features.',
  1935,
  ARRAY['Bauhaus Architecture', 'UNESCO Heritage', 'Original Features', 'Balcony', 'Historic District'],
  'available', 'Rachel Cohen', 'rachel@luxe.com', '+972 3 123 4567'
),
(
  'Mumbai Sky Penthouse', 'Bandra', 'India', 8500000, '₹', 4, 4, 350,
  'penthouse',
  'https://images.pexels.com/photos/1571490/pexels-photo-1571490.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571490/pexels-photo-1571490.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571491/pexels-photo-1571491.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Luxury penthouse with Arabian Sea views and access to exclusive club amenities.',
  2023,
  ARRAY['Sea Views', 'Club Amenities', 'Private Pool', 'Concierge', 'Valet Parking'],
  'available', 'Priya Sharma', 'priya@luxe.com', '+91 22 1234 5678'
),
(
  'Buenos Aires Palermo Loft', 'Palermo', 'Argentina', 1200000, '$', 2, 2, 160,
  'loft',
  'https://images.pexels.com/photos/1571492/pexels-photo-1571492.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571492/pexels-photo-1571492.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571493/pexels-photo-1571493.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Converted warehouse loft in trendy Palermo with exposed brick and modern amenities.',
  1940,
  ARRAY['Exposed Brick', 'Modern Amenities', 'High Ceilings', 'Trendy Location', 'Rooftop Terrace'],
  'available', 'Diego Martinez', 'diego@luxe.com', '+54 11 1234 5678'
),
(
  'Seoul Gangnam Tower', 'Gangnam', 'South Korea', 4500000, '₩', 3, 3, 200,
  'apartment',
  'https://images.pexels.com/photos/1571494/pexels-photo-1571494.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571494/pexels-photo-1571494.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571495/pexels-photo-1571495.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Ultra-modern apartment in prestigious Gangnam district with Han River views.',
  2024,
  ARRAY['River Views', 'Modern Design', 'Premium Location', 'Smart Home', 'Concierge'],
  'available', 'Min-jun Kim', 'minjun@luxe.com', '+82 2 1234 5678'
),
(
  'Vienna Imperial Apartment', 'Innere Stadt', 'Austria', 3500000, '€', 4, 3, 280,
  'apartment',
  'https://images.pexels.com/photos/1571496/pexels-photo-1571496.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571496/pexels-photo-1571496.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571497/pexels-photo-1571497.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Imperial apartment in historic Vienna center with original stucco and modern luxury.',
  1750,
  ARRAY['Imperial Architecture', 'Original Stucco', 'Historic Center', 'High Ceilings', 'Period Details'],
  'available', 'Franz Weber', 'franz@luxe.com', '+43 1 123 4567'
),
(
  'Mexican Hacienda', 'San Miguel de Allende', 'Mexico', 3200000, '$', 7, 6, 800,
  'house',
  'https://images.pexels.com/photos/1396152/pexels-photo-1396152.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396152/pexels-photo-1396152.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323796/pexels-photo-323796.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Colonial hacienda with courtyards, fountains, and authentic Mexican architecture.',
  1750,
  ARRAY['Colonial Architecture', 'Courtyards', 'Fountains', 'Authentic Details', 'Gardens'],
  'available', 'Isabella Rodriguez', 'isabella@luxe.com', '+52 415 123 4567'
),
(
  'Russian Palace Apartment', 'St. Petersburg', 'Russia', 5500000, '₽', 5, 4, 400,
  'apartment',
  'https://images.pexels.com/photos/1571498/pexels-photo-1571498.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571498/pexels-photo-1571498.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571499/pexels-photo-1571499.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Palace apartment with Neva River views and restored imperial details.',
  1850,
  ARRAY['River Views', 'Imperial Details', 'Palace Building', 'High Ceilings', 'Historic Location'],
  'available', 'Anastasia Volkov', 'anastasia@luxe.com', '+7 812 123 4567'
),
(
  'Dubai Palm Villa', 'Palm Jumeirah', 'UAE', 18000000, 'AED', 6, 7, 700,
  'villa',
  'https://images.pexels.com/photos/1396153/pexels-photo-1396153.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396153/pexels-photo-1396153.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323797/pexels-photo-323797.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Beachfront villa on Palm Jumeirah with private beach and panoramic Gulf views.',
  2020,
  ARRAY['Private Beach', 'Gulf Views', 'Infinity Pool', 'Smart Home', 'Boat Dock'],
  'available', 'Omar Hassan', 'omar@luxe.com', '+971 4 123 4569'
),
(
  'Zurich Lake House', 'Zurich', 'Switzerland', 8800000, 'CHF', 5, 4, 450,
  'house',
  'https://images.pexels.com/photos/1396154/pexels-photo-1396154.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396154/pexels-photo-1396154.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323798/pexels-photo-323798.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Modern lakefront house with Alpine views and premium Swiss craftsmanship.',
  2021,
  ARRAY['Lake Views', 'Alpine Views', 'Swiss Craftsmanship', 'Private Dock', 'Wine Cellar'],
  'available', 'Klaus Zimmermann', 'klaus@luxe.com', '+41 44 123 45 67'
),
(
  'Portuguese Coastal Villa', 'Cascais', 'Portugal', 4200000, '€', 5, 5, 480,
  'villa',
  'https://images.pexels.com/photos/1396155/pexels-photo-1396155.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396155/pexels-photo-1396155.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323799/pexels-photo-323799.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Coastal villa with Atlantic Ocean views and traditional Portuguese architecture.',
  2019,
  ARRAY['Ocean Views', 'Traditional Architecture', 'Coastal Location', 'Pool', 'Gardens'],
  'available', 'João Santos', 'joao@luxe.com', '+351 21 123 4567'
),
(
  'Danish Design House', 'Copenhagen', 'Denmark', 3800000, 'DKK', 4, 3, 280,
  'house',
  'https://images.pexels.com/photos/1396156/pexels-photo-1396156.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396156/pexels-photo-1396156.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323800/pexels-photo-323800.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Minimalist Danish design house with sustainable features and harbor views.',
  2023,
  ARRAY['Danish Design', 'Sustainable Features', 'Harbor Views', 'Minimalist', 'Smart Home'],
  'available', 'Lars Nielsen', 'lars@luxe.com', '+45 33 12 34 56'
),
(
  'Finnish Lake Mansion', 'Helsinki', 'Finland', 4500000, '€', 6, 5, 500,
  'mansion',
  'https://images.pexels.com/photos/1396157/pexels-photo-1396157.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396157/pexels-photo-1396157.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323801/pexels-photo-323801.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Lakefront mansion with sauna, private island access, and Nordic design elements.',
  2020,
  ARRAY['Lake Views', 'Private Island', 'Sauna', 'Nordic Design', 'Boat House'],
  'available', 'Aino Virtanen', 'aino@luxe.com', '+358 9 123 4567'
),
(
  'Belgian Townhouse', 'Brussels', 'Belgium', 2800000, '€', 4, 3, 250,
  'townhouse',
  'https://images.pexels.com/photos/1396158/pexels-photo-1396158.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1396158/pexels-photo-1396158.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/323802/pexels-photo-323802.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Historic Brussels townhouse with Art Nouveau details and modern renovations.',
  1900,
  ARRAY['Art Nouveau', 'Historic Details', 'Modern Renovations', 'Garden', 'Period Features'],
  'available', 'Philippe Dubois', 'philippe@luxe.com', '+32 2 123 4567'
),
(
  'Czech Castle Apartment', 'Prague', 'Czech Republic', 2500000, 'CZK', 3, 2, 200,
  'apartment',
  'https://images.pexels.com/photos/1571500/pexels-photo-1571500.jpeg?auto=compress&cs=tinysrgb&w=800',
  ARRAY[
    'https://images.pexels.com/photos/1571500/pexels-photo-1571500.jpeg?auto=compress&cs=tinysrgb&w=1200',
    'https://images.pexels.com/photos/1571501/pexels-photo-1571501.jpeg?auto=compress&cs=tinysrgb&w=1200'
  ],
  'Apartment in historic castle with Vltava River views and Gothic architecture.',
  1350,
  ARRAY['Castle Location', 'River Views', 'Gothic Architecture', 'Historic Details', 'Vaulted Ceilings'],
  'available', 'Pavel Novák', 'pavel@luxe.com', '+420 2 1234 5678'
);