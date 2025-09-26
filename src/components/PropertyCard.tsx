import React from 'react';
import { motion } from 'framer-motion';
import { useNavigate } from 'react-router-dom';
import { Property } from '../types/property';
import { MapPin, Bed, Bath, Car, Square } from 'lucide-react';

interface PropertyCardProps {
  property: Property;
  index: number;
}

const PropertyCard: React.FC<PropertyCardProps> = ({ property, index }) => {
  const navigate = useNavigate();

  const formatPrice = (price: number, currency: string) => {
    return `${currency}${(price / 1000000).toFixed(1)}M`;
  };

  const handleClick = () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
    navigate(`/property/${property.id}`);
  };

  return (
    <motion.div
      onClick={handleClick}
      whileHover={{ 
        y: -12,
        transition: { duration: 0.3, ease: [0.25, 0.46, 0.45, 0.94] }
      }}
      whileTap={{ scale: 0.98 }}
      className="group cursor-pointer overflow-hidden relative bg-white shadow-sm hover:shadow-2xl transition-all duration-300 border border-gray-100 hover:border-gray-900"
    >
      {/* Image Container - Perfect Square */}
      <motion.div 
        className="relative overflow-hidden aspect-square"
        layoutId={`property-image-${property.id}`}
      >
        <motion.img
          src={property.image_url}
          alt={property.title}
          className="w-full h-full object-cover transition-all duration-300 group-hover:scale-110"
          loading="lazy"
        />
        
        {/* Minimalist overlay */}
        <motion.div
          initial={{ opacity: 0 }}
          whileHover={{ opacity: 1 }}
          className="absolute inset-0 bg-black/40"
          transition={{ duration: 0.3 }}
        />
        
        {/* Type Badge - Top Right */}
        <div className="absolute top-4 right-4 bg-white px-3 py-1 shadow-sm">
          <span className="font-body text-gray-900 text-xs font-medium tracking-wider uppercase">
            {property.type}
          </span>
        </div>

        {/* Price Badge - Top Left */}
        <div className="absolute top-4 left-4 bg-black text-white px-3 py-1">
          <span className="font-display text-sm font-light tracking-wide">
            {formatPrice(property.price, property.currency)}
          </span>
        </div>

        {/* Hover Content - Centered */}
        <motion.div
          initial={{ opacity: 0, scale: 0.9 }}
          whileHover={{ opacity: 1, scale: 1 }}
          className="absolute inset-0 flex items-center justify-center text-white z-10"
          transition={{ duration: 0.3 }}
        >
          <div className="text-center">
            <motion.h3 
              layoutId={`property-title-${property.id}`}
              className="font-display text-2xl font-light mb-2 tracking-wide"
            >
              {property.title}
            </motion.h3>
            
            <motion.div 
              layoutId={`property-location-${property.id}`}
              className="flex items-center justify-center space-x-2 mb-4"
            >
              <MapPin className="w-4 h-4" />
              <span className="font-body text-sm font-light tracking-wide">
                {property.location}
              </span>
            </motion.div>
              {/* Essential Details */}
            {/* Minimalist Stats */}
            <div className="flex items-center justify-center space-x-6 text-sm">
              <div className="flex items-center space-x-1">
                <Bed className="w-4 h-4" />
                <span>{property.bedrooms}</span>
              </div>
              <div className="flex items-center space-x-1">
                <Bath className="w-4 h-4" />
                <span>{property.bathrooms}</span>
              </div>
              <div className="flex items-center space-x-1">
                <Square className="w-4 h-4" />
                <span>{property.area}m²</span>
              </div>
            </div>
          </div>
        </motion.div>
      </motion.div>

      {/* Property Summary */}
      <div className="p-4 bg-white border-t border-gray-100">
        <div className="flex items-center justify-between">
          <div>
            <h3 className="font-display text-lg font-light text-gray-900 tracking-wide truncate">
              {property.title}
            </h3>
            <div className="flex items-center space-x-1 mt-1">
              <MapPin className="w-3 h-3 text-gray-400" />
              <span className="font-body text-xs text-gray-500 tracking-wide">
                {property.location}
              </span>
            </div>
          </div>
          <div className="text-right">
            <div className="font-display text-lg font-light text-gray-900">
              {formatPrice(property.price, property.currency)}
            </div>
            <div className="text-xs text-gray-400 uppercase tracking-wider">
              Available
            </div>
          </div>
        </div>

        {/* Property Details */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.2 }}
          className="flex items-center justify-between mt-3 pt-3 border-t border-gray-50"
        >
          <div className="flex items-center space-x-4 text-xs text-gray-400">
            <span className="flex items-center space-x-1">
              <Bed className="w-3 h-3" />
              <span>{property.bedrooms}</span>
            </span>
            <span className="flex items-center space-x-1">
              <Bath className="w-3 h-3" />
              <span>{property.bathrooms}</span>
            </span>
            <span className="flex items-center space-x-1">
              <Square className="w-3 h-3" />
              <span>{property.area}m²</span>
            </span>
          </div>
          <div className="text-xs text-gray-400 uppercase tracking-wider group-hover:text-gray-600 transition-colors duration-300">
            Explore →
          </div>
        </motion.div>
      </div>
    </motion.div>
  );
};

export default PropertyCard;