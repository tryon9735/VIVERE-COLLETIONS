import React, { createContext, useContext, useState, useEffect, ReactNode } from 'react';
import { supabase, isSupabaseConfigured } from '../lib/supabase';
import { Property } from '../types/property';

// Mock data for when Supabase is not configured
const mockProperties: Property[] = [
  {
    id: '1',
    title: 'Sky Penthouse Monaco',
    location: 'Monte Carlo',
    country: 'Monaco',
    price: 15000000,
    currency: '€',
    bedrooms: 4,
    bathrooms: 5,
    cars: 2,
    area: 450,
    type: 'penthouse',
    image_url: 'https://images.pexels.com/photos/106399/pexels-photo-106399.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/1396122/pexels-photo-1396122.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/1571460/pexels-photo-1571460.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/2029667/pexels-photo-2029667.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Extraordinary penthouse with panoramic Mediterranean views, featuring floor-to-ceiling windows and premium finishes throughout.',
    year_built: 2020,
    features: ['Panoramic Views', 'Private Terrace', 'Concierge Service', 'Wine Cellar', 'Smart Home'],
    status: 'available',
    agent_name: 'Sophie Laurent',
    agent_email: 'sophie@luxe.com',
    agent_phone: '+377 93 15 06 00',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  },
  {
    id: '2',
    title: 'Manhattan Sky Residence',
    location: 'Upper East Side, New York',
    country: 'USA',
    price: 25000000,
    currency: '$',
    bedrooms: 5,
    bathrooms: 6,
    cars: 3,
    area: 600,
    type: 'penthouse',
    image_url: 'https://images.pexels.com/photos/323780/pexels-photo-323780.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/1571468/pexels-photo-1571468.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/1571471/pexels-photo-1571471.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Iconic Manhattan penthouse with Central Park views, featuring a private elevator and rooftop terrace.',
    year_built: 2019,
    features: ['Central Park Views', 'Private Elevator', 'Rooftop Terrace', 'Marble Finishes', 'Butler Service'],
    status: 'available',
    agent_name: 'James Mitchell',
    agent_email: 'james@luxe.com',
    agent_phone: '+1 212 555 0123',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  },
  {
    id: '3',
    title: 'Villa Serenity',
    location: 'Côte d\'Azur',
    country: 'France',
    price: 8500000,
    currency: '€',
    bedrooms: 6,
    bathrooms: 7,
    cars: 4,
    area: 800,
    type: 'villa',
    image_url: 'https://images.pexels.com/photos/1396132/pexels-photo-1396132.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/323776/pexels-photo-323776.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/2029667/pexels-photo-2029667.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Magnificent villa overlooking the Mediterranean, with private beach access and infinity pool.',
    year_built: 2018,
    features: ['Private Beach', 'Infinity Pool', 'Wine Cellar', 'Guest House', 'Helicopter Pad'],
    status: 'available',
    agent_name: 'Marie Dubois',
    agent_email: 'marie@luxe.com',
    agent_phone: '+33 4 93 76 78 24',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  },
  {
    id: '4',
    title: 'Belgravia Mansion',
    location: 'Belgravia, London',
    country: 'UK',
    price: 35000000,
    currency: '£',
    bedrooms: 7,
    bathrooms: 8,
    cars: 2,
    area: 1000,
    type: 'mansion',
    image_url: 'https://images.pexels.com/photos/2029541/pexels-photo-2029541.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/1396118/pexels-photo-1396118.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/1571452/pexels-photo-1571452.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Georgian mansion in prestigious Belgravia, featuring period details and contemporary luxury.',
    year_built: 1820,
    features: ['Period Features', 'Private Garden', 'Staff Quarters', 'Wine Cellar', 'Library'],
    status: 'available',
    agent_name: 'Charles Pemberton',
    agent_email: 'charles@luxe.com',
    agent_phone: '+44 20 7123 4567',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  },
  {
    id: '5',
    title: 'Scottish Highland Castle',
    location: 'Highlands',
    country: 'Scotland',
    price: 18000000,
    currency: '£',
    bedrooms: 12,
    bathrooms: 10,
    cars: 6,
    area: 2000,
    type: 'castle',
    image_url: 'https://images.pexels.com/photos/1643384/pexels-photo-1643384.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/1396129/pexels-photo-1396129.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/323772/pexels-photo-323772.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Historic 16th-century castle with 500 acres of pristine Highland landscape and private loch.',
    year_built: 1580,
    features: ['Historic Castle', 'Private Loch', '500 Acres', 'Great Hall', 'Tower Suites'],
    status: 'available',
    agent_name: 'Lord William MacLeod',
    agent_email: 'william@luxe.com',
    agent_phone: '+44 1463 123456',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  },
  {
    id: '6',
    title: 'SoHo Industrial Loft',
    location: 'SoHo, New York',
    country: 'USA',
    price: 7500000,
    currency: '$',
    bedrooms: 3,
    bathrooms: 3,
    cars: 1,
    area: 400,
    type: 'loft',
    image_url: 'https://images.pexels.com/photos/2724748/pexels-photo-2724748.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/1571466/pexels-photo-1571466.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/1571467/pexels-photo-1571467.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Converted industrial loft with exposed brick, soaring ceilings, and artist studio space.',
    year_built: 1890,
    features: ['Exposed Brick', 'Soaring Ceilings', 'Artist Studio', 'Freight Elevator', 'Skylights'],
    status: 'available',
    agent_name: 'Alex Rodriguez',
    agent_email: 'alex@luxe.com',
    agent_phone: '+1 212 555 0178',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  },
  {
    id: '7',
    title: 'Notting Hill Townhouse',
    location: 'Notting Hill, London',
    country: 'UK',
    price: 12500000,
    currency: '£',
    bedrooms: 5,
    bathrooms: 4,
    cars: 2,
    area: 350,
    type: 'townhouse',
    image_url: 'https://images.pexels.com/photos/1571453/pexels-photo-1571453.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/1396131/pexels-photo-1396131.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/323773/pexels-photo-323773.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Victorian townhouse in prestigious Notting Hill with private garden and period features.',
    year_built: 1880,
    features: ['Victorian Features', 'Private Garden', 'Period Details', 'Mews Access', 'Wine Storage'],
    status: 'available',
    agent_name: 'Emma Thompson',
    agent_email: 'emma@luxe.com',
    agent_phone: '+44 20 7123 4589',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  },
  {
    id: '8',
    title: 'Modern Architectural Marvel',
    location: 'Malibu',
    country: 'USA',
    price: 12000000,
    currency: '$',
    bedrooms: 5,
    bathrooms: 6,
    cars: 3,
    area: 550,
    type: 'house',
    image_url: 'https://images.pexels.com/photos/2029694/pexels-photo-2029694.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
    gallery_images: [
      'https://images.pexels.com/photos/1396125/pexels-photo-1396125.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280',
      'https://images.pexels.com/photos/1571459/pexels-photo-1571459.jpeg?auto=compress&cs=tinysrgb&w=1920&h=1280'
    ],
    description: 'Contemporary architectural masterpiece with ocean views and sustainable design elements.',
    year_built: 2022,
    features: ['Ocean Views', 'Sustainable Design', 'Solar Panels', 'Smart Home', 'Infinity Pool'],
    status: 'available',
    agent_name: 'Sarah Williams',
    agent_email: 'sarah@luxe.com',
    agent_phone: '+1 310 555 0145',
    created_at: '2024-01-01T00:00:00Z',
    updated_at: '2024-01-01T00:00:00Z'
  }
];

interface PropertiesContextType {
  properties: Property[];
  loading: boolean;
  error: string | null;
  getPropertyById: (id: string) => Property | undefined;
  getPropertiesByType: (type: string) => Property[];
  refetch: () => Promise<void>;
}

const PropertiesContext = createContext<PropertiesContextType | undefined>(undefined);

interface PropertiesProviderProps {
  children: ReactNode;
}

export const PropertiesProvider: React.FC<PropertiesProviderProps> = ({ children }) => {
  const [properties, setProperties] = useState<Property[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const fetchProperties = async () => {
    try {
      setLoading(true);
      setError(null);
      
      if (isSupabaseConfigured && supabase) {
        const { data, error } = await supabase
          .from('properties')
          .select('*')
          .eq('status', 'available')
          .order('created_at', { ascending: false });

        if (error) throw error;
        setProperties(data || []);
      } else {
        // Use mock data when Supabase is not configured
        await new Promise(resolve => setTimeout(resolve, 1000)); // Simulate loading
        setProperties(mockProperties);
      }
    } catch (err) {
      console.warn('Supabase connection failed, using mock data:', err);
      setProperties(mockProperties);
      setError(null); // Don't show error to user, just use mock data
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchProperties();
  }, []);

  const getPropertyById = (id: string): Property | undefined => {
    return properties.find(property => property.id === id);
  };

  const getPropertiesByType = (type: string): Property[] => {
    if (type === 'all') return properties;
    return properties.filter(property => property.type === type);
  };

  const value: PropertiesContextType = {
    properties,
    loading,
    error,
    getPropertyById,
    getPropertiesByType,
    refetch: fetchProperties
  };

  return (
    <PropertiesContext.Provider value={value}>
      {children}
    </PropertiesContext.Provider>
  );
};

export const useProperties = (): PropertiesContextType => {
  const context = useContext(PropertiesContext);
  if (context === undefined) {
    throw new Error('useProperties must be used within a PropertiesProvider');
  }
  return context;
};