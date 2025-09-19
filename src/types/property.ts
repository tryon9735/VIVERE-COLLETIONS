export interface Property {
  id: string;
  title: string;
  location: string;
  country: string;
  price: number;
  currency: string;
  bedrooms: number;
  bathrooms: number;
  cars: number;
  area: number;
  type: 'apartment' | 'house' | 'penthouse' | 'villa' | 'mansion' | 'townhouse' | 'loft' | 'castle';
  image_url: string;
  gallery_images?: string[];
  description: string;
  year_built?: number;
  features: string[];
  status: 'available' | 'sold' | 'pending' | 'off-market';
  agent_name: string;
  agent_email: string;
  agent_phone: string;
  created_at: string;
  updated_at: string;
}