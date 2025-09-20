import React from 'react';
import { motion } from 'framer-motion';
import { useNavigate } from 'react-router-dom';
import { useProperties } from '../contexts/PropertiesContext';
import { MapPin, Bed, Bath, Square, ArrowRight } from 'lucide-react';

interface FeaturedPropertyProps {
  propertyId: string;
  sectionTitle: string;
  subtitle?: string;
}

const FeaturedProperty: React.FC<FeaturedPropertyProps> = ({ 
  propertyId, 
  sectionTitle, 
  subtitle 
}) => {
  const navigate = useNavigate();
  const { getPropertyById } = useProperties();
  const property = getPropertyById(propertyId);

  if (!property) {
    return null;
  }

  const formatPrice = (price: number, currency: string) => {
    return `${currency}${(price / 1000000).toFixed(1)}M`;
  };

  const handleViewProperty = () => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
    navigate(`/property/${property.id}`);
  };

  return (
    <section className="py-20 md:py-32 bg-white relative overflow-hidden">
      <div className="max-w-7xl mx-auto px-6 md:px-8">
        {/* Section Header */}
        <motion.div
          initial={{ opacity: 0, y: 50 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 1.2 }}
          viewport={{ once: true }}
          className="text-center mb-16 md:mb-24"
        >
          <motion.h2 
            className="font-display text-4xl md:text-6xl lg:text-7xl font-light text-gray-900 mb-6 tracking-tight"
            initial={{ opacity: 0, scale: 0.9 }}
            whileInView={{ opacity: 1, scale: 1 }}
            transition={{ duration: 1, delay: 0.2 }}
            viewport={{ once: true }}
          >
            {sectionTitle}
          </motion.h2>
          
          {subtitle && (
            <motion.p
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 1, delay: 0.4 }}
              viewport={{ once: true }}
              className="font-body text-lg md:text-xl text-gray-600 font-light tracking-wide max-w-2xl mx-auto"
            >
              {subtitle}
            </motion.p>
          )}
          
          <motion.div
            initial={{ width: 0 }}
            whileInView={{ width: '120px' }}
            transition={{ duration: 1.5, delay: 0.6 }}
            viewport={{ once: true }}
            className="h-px bg-gray-300 mx-auto mt-8"
          />
        </motion.div>

        {/* Featured Property Content */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-12 lg:gap-20 items-center">
          {/* Property Image */}
          <motion.div
            initial={{ opacity: 0, x: -50 }}
            whileInView={{ opacity: 1, x: 0 }}
            transition={{ duration: 1.2, delay: 0.3 }}
            viewport={{ once: true }}
            className="relative group cursor-pointer"
            onClick={handleViewProperty}
          >
            <motion.div
              whileHover={{ scale: 1.02 }}
              transition={{ duration: 0.6, ease: "easeOut" }}
              className="relative overflow-hidden aspect-[4/3] shadow-2xl"
            >
              <img
                src={property.image_url}
                alt={property.title}
                className="w-full h-full object-cover transition-all duration-700 group-hover:scale-110"
              />
              
              {/* Elegant overlay */}
              <motion.div
                initial={{ opacity: 0 }}
                whileHover={{ opacity: 1 }}
                transition={{ duration: 0.4 }}
                className="absolute inset-0 bg-black/20"
              />
              
              {/* Price badge */}
              <div className="absolute top-6 left-6 bg-black text-white px-4 py-2">
                <span className="font-display text-lg font-light tracking-wide">
                  {formatPrice(property.price, property.currency)}
                </span>
              </div>
              
              {/* View property indicator */}
              <motion.div
                initial={{ opacity: 0, scale: 0.8 }}
                whileHover={{ opacity: 1, scale: 1 }}
                transition={{ duration: 0.3 }}
                className="absolute bottom-6 right-6 bg-white/90 backdrop-blur-sm p-3 rounded-full"
              >
                <ArrowRight className="w-5 h-5 text-gray-900" />
              </motion.div>
            </motion.div>
          </motion.div>

          {/* Property Details */}
          <motion.div
            initial={{ opacity: 0, x: 50 }}
            whileInView={{ opacity: 1, x: 0 }}
            transition={{ duration: 1.2, delay: 0.5 }}
            viewport={{ once: true }}
            className="space-y-8"
          >
            {/* Title and Location */}
            <div>
              <motion.h3 
                className="font-display text-3xl md:text-4xl lg:text-5xl font-light text-gray-900 mb-4 tracking-tight"
                initial={{ opacity: 0, y: 20 }}
                whileInView={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.8, delay: 0.7 }}
                viewport={{ once: true }}
              >
                {property.title}
              </motion.h3>
              
              <motion.div 
                className="flex items-center space-x-3 mb-6"
                initial={{ opacity: 0, y: 20 }}
                whileInView={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.8, delay: 0.8 }}
                viewport={{ once: true }}
              >
                <MapPin className="w-5 h-5 text-gray-400" />
                <span className="font-body text-lg text-gray-600 font-light tracking-wide">
                  {property.location}, {property.country}
                </span>
              </motion.div>
            </div>

            {/* Description */}
            <motion.p
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 0.9 }}
              viewport={{ once: true }}
              className="font-body text-lg text-gray-600 font-light leading-relaxed tracking-wide"
            >
              {property.description}
            </motion.p>

            {/* Property Stats */}
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 1 }}
              viewport={{ once: true }}
              className="grid grid-cols-2 md:grid-cols-4 gap-6"
            >
              <div className="text-center">
                <Bed className="w-6 h-6 text-gray-400 mx-auto mb-2" />
                <div className="font-display text-2xl font-light text-gray-900">{property.bedrooms}</div>
                <div className="font-body text-sm text-gray-500 uppercase tracking-wider">Bedrooms</div>
              </div>
              <div className="text-center">
                <Bath className="w-6 h-6 text-gray-400 mx-auto mb-2" />
                <div className="font-display text-2xl font-light text-gray-900">{property.bathrooms}</div>
                <div className="font-body text-sm text-gray-500 uppercase tracking-wider">Bathrooms</div>
              </div>
              <div className="text-center">
                <Square className="w-6 h-6 text-gray-400 mx-auto mb-2" />
                <div className="font-display text-2xl font-light text-gray-900">{property.area}</div>
                <div className="font-body text-sm text-gray-500 uppercase tracking-wider">SQ M</div>
              </div>
              <div className="text-center">
                <div className="w-6 h-6 bg-gray-400 rounded mx-auto mb-2" />
                <div className="font-display text-2xl font-light text-gray-900">{property.year_built}</div>
                <div className="font-body text-sm text-gray-500 uppercase tracking-wider">Built</div>
              </div>
            </motion.div>

            {/* Key Features */}
            {property.features && property.features.length > 0 && (
              <motion.div
                initial={{ opacity: 0, y: 20 }}
                whileInView={{ opacity: 1, y: 0 }}
                transition={{ duration: 0.8, delay: 1.1 }}
                viewport={{ once: true }}
                className="space-y-4"
              >
                <h4 className="font-display text-xl font-light text-gray-900 tracking-wide">
                  Distinguished Features
                </h4>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
                  {property.features.slice(0, 6).map((feature, idx) => (
                    <div key={idx} className="flex items-center space-x-3">
                      <div className="w-1.5 h-1.5 bg-gray-400 rounded-full" />
                      <span className="font-body text-gray-600 font-light tracking-wide text-sm">
                        {feature}
                      </span>
                    </div>
                  ))}
                </div>
              </motion.div>
            )}

            {/* Call to Action */}
            <motion.div
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 1.2 }}
              viewport={{ once: true }}
              className="pt-6"
            >
              <motion.button
                onClick={handleViewProperty}
                whileHover={{ scale: 1.02, y: -2 }}
                whileTap={{ scale: 0.98 }}
                className="font-body px-8 py-4 border border-gray-900 text-gray-900 font-light tracking-[0.2em] hover:bg-gray-900 hover:text-white transition-all duration-500 text-sm uppercase group"
              >
                <span className="flex items-center space-x-3">
                  <span>Explore Property</span>
                  <ArrowRight className="w-4 h-4 group-hover:translate-x-1 transition-transform duration-300" />
                </span>
              </motion.button>
            </motion.div>
          </motion.div>
        </div>
      </div>
    </section>
  );
};

export default FeaturedProperty;