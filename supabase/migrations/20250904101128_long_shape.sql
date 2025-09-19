/*
  # Create Properties Table for Luxury Real Estate

  1. New Tables
    - `properties`
      - `id` (uuid, primary key)
      - `title` (text, property name)
      - `location` (text, city/area)
      - `country` (text, country)
      - `price` (bigint, price in euros)
      - `currency` (text, currency symbol)
      - `bedrooms` (integer, number of bedrooms)
      - `bathrooms` (integer, number of bathrooms)
      - `area` (integer, area in square meters)
      - `type` (text, property type)
      - `image_url` (text, main property image)
      - `gallery_images` (text array, additional images)
      - `description` (text, property description)
      - `year_built` (integer, construction year)
      - `features` (text array, property features)
      - `status` (text, availability status)
      - `agent_name` (text, responsible agent)
      - `agent_email` (text, agent contact)
      - `agent_phone` (text, agent phone)
      - `created_at` (timestamp)
      - `updated_at` (timestamp)

  2. Security
    - Enable RLS on `properties` table
    - Add policy for public read access (properties are public listings)
    - Add policy for authenticated users to manage properties
*/

CREATE TABLE IF NOT EXISTS properties (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title text NOT NULL,
  location text NOT NULL,
  country text NOT NULL,
  price bigint NOT NULL,
  currency text NOT NULL DEFAULT '€',
  bedrooms integer NOT NULL,
  bathrooms integer NOT NULL,
  area integer NOT NULL,
  type text NOT NULL CHECK (type IN ('apartment', 'house', 'penthouse', 'villa', 'mansion', 'townhouse', 'loft', 'castle')),
  image_url text NOT NULL,
  gallery_images text[] DEFAULT '{}',
  description text NOT NULL,
  year_built integer,
  features text[] DEFAULT '{}',
  status text NOT NULL DEFAULT 'available' CHECK (status IN ('available', 'sold', 'pending', 'off-market')),
  agent_name text NOT NULL DEFAULT 'Luxury Properties Team',
  agent_email text NOT NULL DEFAULT 'contact@luxe.com',
  agent_phone text NOT NULL DEFAULT '+33 1 42 86 83 26',
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Enable RLS
ALTER TABLE properties ENABLE ROW LEVEL SECURITY;

-- Policy for public read access (anyone can view properties)
CREATE POLICY "Properties are publicly readable"
  ON properties
  FOR SELECT
  TO public
  USING (status = 'available');

-- Policy for authenticated users to manage properties
CREATE POLICY "Authenticated users can manage properties"
  ON properties
  FOR ALL
  TO authenticated
  USING (true);

-- Insert 30 luxury properties
INSERT INTO properties (title, location, country, price, bedrooms, bathrooms, area, type, image_url, description, year_built, features) VALUES
('Penthouse Monaco', 'Monte Carlo', 'Monaco', 18500000, 4, 5, 450, 'penthouse', 'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Exceptional penthouse with panoramic Mediterranean views and private terrace', 2022, '{"Private Terrace", "Sea Views", "Concierge", "Parking"}'),

('Château Versailles', 'Versailles', 'France', 24000000, 8, 10, 800, 'mansion', 'https://images.pexels.com/photos/1396125/pexels-photo-1396125.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Historic château with classical French architecture and manicured gardens', 1890, '{"Historic", "Gardens", "Wine Cellar", "Staff Quarters"}'),

('Mayfair Residence', 'London', 'United Kingdom', 15200000, 6, 7, 520, 'townhouse', 'https://images.pexels.com/photos/1396117/pexels-photo-1396117.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Georgian townhouse in prestigious Mayfair with period features', 1820, '{"Period Features", "Garden", "Mews Access", "Wine Cellar"}'),

('Manhattan Penthouse', 'New York', 'United States', 22300000, 3, 4, 380, 'penthouse', 'https://images.pexels.com/photos/1396133/pexels-photo-1396133.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Sophisticated apartment with Central Park views and modern amenities', 2021, '{"Central Park Views", "Doorman", "Gym", "Roof Terrace"}'),

('Villa Como', 'Lake Como', 'Italy', 12750000, 5, 6, 600, 'villa', 'https://images.pexels.com/photos/1396135/pexels-photo-1396135.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Historic villa with direct lake access and mountain views', 1650, '{"Lake Access", "Boat Dock", "Gardens", "Historic"}'),

('Dubai Marina Tower', 'Dubai', 'United Arab Emirates', 9200000, 4, 5, 420, 'penthouse', 'https://images.pexels.com/photos/1396137/pexels-photo-1396137.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Ultra-modern penthouse with marina views and smart home technology', 2023, '{"Smart Home", "Marina Views", "Pool", "Concierge"}'),

('Beverly Hills Estate', 'Los Angeles', 'United States', 28500000, 7, 9, 950, 'mansion', 'https://images.pexels.com/photos/1396140/pexels-photo-1396140.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Contemporary mansion with infinity pool and city views', 2020, '{"Infinity Pool", "Home Theater", "Wine Cellar", "Guest House"}'),

('Tokyo Penthouse', 'Shibuya', 'Japan', 16800000, 3, 3, 280, 'penthouse', 'https://images.pexels.com/photos/1396142/pexels-photo-1396142.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Minimalist penthouse with Mount Fuji views and Japanese design', 2022, '{"Mount Fuji Views", "Minimalist Design", "Zen Garden", "Smart Home"}'),

('Swiss Chalet', 'Zermatt', 'Switzerland', 11200000, 6, 5, 480, 'house', 'https://images.pexels.com/photos/1396144/pexels-photo-1396144.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Luxury alpine chalet with Matterhorn views and ski access', 2019, '{"Ski Access", "Mountain Views", "Fireplace", "Spa"}'),

('Santorini Villa', 'Oia', 'Greece', 8900000, 4, 4, 350, 'villa', 'https://images.pexels.com/photos/1396146/pexels-photo-1396146.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Cycladic villa with infinity pool and sunset views', 2021, '{"Infinity Pool", "Sunset Views", "Private Beach", "Traditional Architecture"}'),

('Singapore Penthouse', 'Marina Bay', 'Singapore', 19500000, 4, 5, 420, 'penthouse', 'https://images.pexels.com/photos/1396148/pexels-photo-1396148.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Ultra-modern penthouse with skyline views and rooftop garden', 2023, '{"Skyline Views", "Rooftop Garden", "Smart Home", "Concierge"}'),

('Tuscan Estate', 'Chianti', 'Italy', 14300000, 8, 7, 720, 'villa', 'https://images.pexels.com/photos/1396150/pexels-photo-1396150.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Historic Tuscan estate with vineyard and olive groves', 1750, '{"Vineyard", "Olive Groves", "Wine Cellar", "Historic"}'),

('Sydney Harbour Apartment', 'Sydney', 'Australia', 13700000, 3, 3, 320, 'apartment', 'https://images.pexels.com/photos/1396152/pexels-photo-1396152.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Luxury apartment with Opera House and harbour views', 2022, '{"Harbour Views", "Opera House Views", "Concierge", "Pool"}'),

('Aspen Mountain Lodge', 'Aspen', 'United States', 17900000, 6, 7, 580, 'house', 'https://images.pexels.com/photos/1396154/pexels-photo-1396154.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Luxury mountain lodge with ski-in/ski-out access', 2020, '{"Ski Access", "Mountain Views", "Hot Tub", "Fireplace"}'),

('Parisian Hôtel Particulier', 'Saint-Germain', 'France', 21600000, 7, 6, 650, 'mansion', 'https://images.pexels.com/photos/1396156/pexels-photo-1396156.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Historic private mansion in prestigious Saint-Germain district', 1880, '{"Historic", "Private Garden", "Period Features", "Wine Cellar"}'),

('Miami Beach Penthouse', 'Miami Beach', 'United States', 12400000, 3, 4, 380, 'penthouse', 'https://images.pexels.com/photos/1396158/pexels-photo-1396158.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modern penthouse with ocean views and private beach access', 2023, '{"Ocean Views", "Private Beach", "Pool", "Smart Home"}'),

('Hong Kong Peak Mansion', 'The Peak', 'Hong Kong', 26800000, 5, 6, 480, 'mansion', 'https://images.pexels.com/photos/1396160/pexels-photo-1396160.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Exclusive mansion with panoramic harbour views', 2021, '{"Harbour Views", "Private Garden", "Pool", "Garage"}'),

('Barcelona Modernist House', 'Eixample', 'Spain', 9800000, 5, 4, 420, 'house', 'https://images.pexels.com/photos/1396162/pexels-photo-1396162.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modernist house with original Gaudí-inspired features', 1920, '{"Modernist Architecture", "Original Features", "Rooftop", "Historic"}'),

('Malibu Beach House', 'Malibu', 'United States', 18700000, 4, 5, 450, 'house', 'https://images.pexels.com/photos/1396164/pexels-photo-1396164.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Contemporary beach house with direct ocean access', 2022, '{"Ocean Access", "Private Beach", "Pool", "Guest House"}'),

('London Penthouse', 'Knightsbridge', 'United Kingdom', 23500000, 4, 5, 400, 'penthouse', 'https://images.pexels.com/photos/1396166/pexels-photo-1396166.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Luxury penthouse overlooking Hyde Park', 2023, '{"Hyde Park Views", "Concierge", "Gym", "Terrace"}'),

('Côte d''Azur Villa', 'Cannes', 'France', 16200000, 6, 7, 550, 'villa', 'https://images.pexels.com/photos/1396168/pexels-photo-1396168.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Mediterranean villa with sea views and private beach', 2021, '{"Sea Views", "Private Beach", "Pool", "Gardens"}'),

('Amsterdam Canal House', 'Jordaan', 'Netherlands', 7800000, 4, 3, 320, 'townhouse', 'https://images.pexels.com/photos/1396170/pexels-photo-1396170.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Historic canal house with modern renovations', 1680, '{"Canal Views", "Historic", "Modern Renovation", "Garden"}'),

('Toronto Penthouse', 'Yorkville', 'Canada', 8900000, 3, 3, 280, 'penthouse', 'https://images.pexels.com/photos/1396172/pexels-photo-1396172.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modern penthouse with city skyline views', 2022, '{"City Views", "Concierge", "Gym", "Terrace"}'),

('Scottish Castle', 'Highlands', 'United Kingdom', 19800000, 12, 8, 1200, 'castle', 'https://images.pexels.com/photos/1396174/pexels-photo-1396174.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Medieval castle with extensive grounds and loch views', 1450, '{"Historic", "Loch Views", "Extensive Grounds", "Great Hall"}'),

('Ibiza Villa', 'San José', 'Spain', 11500000, 5, 6, 480, 'villa', 'https://images.pexels.com/photos/1396176/pexels-photo-1396176.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modern villa with sea views and infinity pool', 2023, '{"Sea Views", "Infinity Pool", "Guest House", "Entertainment Area"}'),

('Vienna Palace Apartment', 'Innere Stadt', 'Austria', 13400000, 5, 4, 380, 'apartment', 'https://images.pexels.com/photos/1396178/pexels-photo-1396178.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Imperial apartment in historic Viennese palace', 1750, '{"Historic Palace", "High Ceilings", "Period Features", "Central Location"}'),

('Stockholm Archipelago House', 'Stockholm', 'Sweden', 6700000, 4, 3, 280, 'house', 'https://images.pexels.com/photos/1396180/pexels-photo-1396180.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modern house on private island with water access', 2021, '{"Private Island", "Water Access", "Sauna", "Modern Design"}'),

('Rio Penthouse', 'Ipanema', 'Brazil', 7200000, 4, 4, 350, 'penthouse', 'https://images.pexels.com/photos/1396182/pexels-photo-1396182.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Beachfront penthouse with Copacabana views', 2022, '{"Beach Views", "Rooftop Pool", "Concierge", "Private Elevator"}'),

('Prague Castle View', 'Malá Strana', 'Czech Republic', 5800000, 3, 3, 250, 'apartment', 'https://images.pexels.com/photos/1396184/pexels-photo-1396184.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Historic apartment with Prague Castle views', 1650, '{"Castle Views", "Historic", "High Ceilings", "Period Features"}'),

('Hamptons Estate', 'East Hampton', 'United States', 32500000, 9, 11, 1100, 'mansion', 'https://images.pexels.com/photos/1396186/pexels-photo-1396186.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Oceanfront estate with private beach and tennis court', 2019, '{"Ocean Front", "Private Beach", "Tennis Court", "Pool House"}'),

('Edinburgh New Town', 'Edinburgh', 'United Kingdom', 4900000, 4, 3, 320, 'townhouse', 'https://images.pexels.com/photos/1396188/pexels-photo-1396188.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Georgian townhouse in UNESCO World Heritage site', 1820, '{"UNESCO Heritage", "Period Features", "Garden", "Original Features"}'),

('Zurich Lake House', 'Zurich', 'Switzerland', 14800000, 5, 5, 420, 'house', 'https://images.pexels.com/photos/1396190/pexels-photo-1396190.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modern house with Lake Zurich views and private dock', 2022, '{"Lake Views", "Private Dock", "Modern Design", "Garden"}'),

('Roman Palazzo', 'Trastevere', 'Italy', 18900000, 6, 5, 580, 'mansion', 'https://images.pexels.com/photos/1396192/pexels-photo-1396192.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Renaissance palazzo with frescoed ceilings and courtyard', 1580, '{"Renaissance", "Frescoed Ceilings", "Courtyard", "Historic"}'),

('Copenhagen Waterfront', 'Østerbro', 'Denmark', 8300000, 4, 4, 320, 'apartment', 'https://images.pexels.com/photos/1396194/pexels-photo-1396194.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modern waterfront apartment with harbor views', 2023, '{"Harbor Views", "Modern Design", "Balcony", "Concierge"}'),

('Lisbon Palácio', 'Príncipe Real', 'Portugal', 6400000, 5, 4, 380, 'mansion', 'https://images.pexels.com/photos/1396196/pexels-photo-1396196.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Restored 18th-century palace with modern amenities', 1750, '{"Historic Palace", "Restored", "Garden", "Modern Amenities"}'),

('Vancouver Penthouse', 'Coal Harbour', 'Canada', 11800000, 3, 4, 350, 'penthouse', 'https://images.pexels.com/photos/1396198/pexels-photo-1396198.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Glass penthouse with mountain and ocean views', 2022, '{"Mountain Views", "Ocean Views", "Floor-to-Ceiling Windows", "Concierge"}'),

('Berlin Loft', 'Mitte', 'Germany', 4200000, 2, 2, 180, 'loft', 'https://images.pexels.com/photos/1396200/pexels-photo-1396200.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Industrial loft in converted factory with high ceilings', 1920, '{"High Ceilings", "Industrial Design", "Exposed Brick", "Rooftop Access"}'),

('Melbourne Penthouse', 'South Yarra', 'Australia', 9600000, 3, 3, 280, 'penthouse', 'https://images.pexels.com/photos/1396202/pexels-photo-1396202.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Contemporary penthouse with Yarra River views', 2023, '{"River Views", "Modern Design", "Balcony", "Concierge"}'),

('Irish Castle', 'County Cork', 'Ireland', 8700000, 10, 6, 850, 'castle', 'https://images.pexels.com/photos/1396204/pexels-photo-1396204.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Medieval castle with extensive grounds and sea views', 1350, '{"Medieval", "Sea Views", "Extensive Grounds", "Historic"}'),

('Tel Aviv Penthouse', 'Tel Aviv', 'Israel', 7800000, 4, 4, 320, 'penthouse', 'https://images.pexels.com/photos/1396206/pexels-photo-1396206.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Modern penthouse with Mediterranean Sea views', 2022, '{"Sea Views", "Modern Design", "Rooftop Terrace", "Smart Home"}'),

('Buenos Aires Penthouse', 'Palermo', 'Argentina', 3200000, 3, 3, 250, 'penthouse', 'https://images.pexels.com/photos/1396208/pexels-photo-1396208.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Art Deco penthouse with city views and rooftop garden', 1930, '{"Art Deco", "City Views", "Rooftop Garden", "Historic"}'),

('Cape Town Villa', 'Clifton', 'South Africa', 5900000, 4, 5, 380, 'villa', 'https://images.pexels.com/photos/1396210/pexels-photo-1396210.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280', 'Contemporary villa with Table Mountain and ocean views', 2021, '{"Mountain Views", "Ocean Views", "Pool", "Wine Cellar"}');