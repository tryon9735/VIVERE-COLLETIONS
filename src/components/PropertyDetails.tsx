import React from 'react';
import { useEffect } from 'react';
import { motion } from 'framer-motion';
import { useParams, useNavigate } from 'react-router-dom';
import { ArrowLeft, Bed, Bath, Square, Calendar, MapPin, Car } from 'lucide-react';
import { useProperties } from '../contexts/PropertiesContext';
import LoadingSpinner from './LoadingSpinner';

const PropertyDetails: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const navigate = useNavigate();
  const { getPropertyById, loading, error } = useProperties();
  const property = id ? getPropertyById(id) : undefined;

  // Scroll to top when component mounts
  useEffect(() => {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }, [id]);

  if (loading) {
    return (
      <div className="min-h-screen bg-white">
        <LoadingSpinner />
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <p className="text-red-500">Error loading property: {error}</p>
      </div>
    );
  }
  if (!property) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <p className="text-gray-500">Property not found</p>
      </div>
    );
  }

  const formatPrice = (price: number, currency: string) => {
    return `${currency}${(price / 1000000).toFixed(1)}M`;
  };

  return (
    <motion.div
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      transition={{ duration: 0.8 }}
      className="min-h-screen bg-white"
    >
      {/* Back Button */}
      <motion.button
        initial={{ opacity: 0, x: -50 }}
        animate={{ opacity: 1, x: 0 }}
        transition={{ duration: 0.6, delay: 0.2 }}
        onClick={() => navigate('/')}
        className="fixed top-8 left-8 z-50 p-4 bg-white/90 backdrop-blur-sm rounded-full shadow-lg hover:shadow-xl transition-all duration-300"
      >
        <ArrowLeft className="w-6 h-6 text-gray-900" />
      </motion.button>

      {/* Hero Image */}
      <motion.div
        layoutId={`property-image-${property.id}`}
        initial={{ scale: 1.05 }}
        animate={{ scale: 1 }}
        transition={{ duration: 1.5, ease: "easeOut" }}
        className="h-screen relative overflow-hidden"
      >
        <img
          src={property.image_url}
          alt={property.title}
          className="w-full h-full object-cover"
        />
        <motion.div 
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 1, delay: 0.5 }}
          className="absolute inset-0 bg-black/20" 
        />
        
        <motion.div
          initial={{ opacity: 0, y: 100 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 1.2, delay: 0.8 }}
          className="absolute bottom-16 left-16 text-white"
        >
          <motion.h1 
            layoutId={`property-title-${property.id}`}
            className="font-display text-6xl md:text-8xl font-light tracking-tight mb-4 drop-shadow-lg"
          >
            {property.title}
          </motion.h1>
          <motion.p 
            layoutId={`property-location-${property.id}`}
            className="font-body text-2xl font-light tracking-wide opacity-90 drop-shadow-md"
          >
            {property.location}
          </motion.p>
        </motion.div>
      </motion.div>

      {/* Gallery Section */}
      {property.gallery_images && property.gallery_images.length > 0 && (
        <div className="max-w-8xl mx-auto px-8 py-32">
          <motion.div
            initial={{ opacity: 0, y: 50 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 1.2, delay: 0.3 }}
          >
            <motion.h2 
              initial={{ opacity: 0, y: 30 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 1, delay: 0.5 }}
              className="font-display text-5xl md:text-6xl font-extralight text-gray-900 mb-4 tracking-tight text-center"
            >
              Gallery
            </motion.h2>
            
            <motion.div
              initial={{ width: 0 }}
              animate={{ width: '80px' }}
              transition={{ duration: 1.5, delay: 0.8 }}
              className="h-px bg-gray-300 mx-auto mb-20"
            />
            
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 md:gap-6">
              {property.gallery_images.map((image, index) => (
                <motion.div
                  key={index}
                  initial={{ opacity: 0, y: 50, scale: 0.9 }}
                  animate={{ opacity: 1, y: 0 }}
                  transition={{ 
                    duration: 0.8, 
                    delay: 0.1 + (index * 0.15),
                    ease: "easeOut"
                  }}
                  whileHover={{ 
                    scale: 1.08, 
                    y: -10,
                    rotateY: 5,
                    rotateX: 5
                  }}
                  whileTap={{ scale: 0.95 }}
                  className="relative overflow-hidden aspect-[4/5] cursor-pointer group shadow-lg hover:shadow-2xl transition-all duration-700"
                  style={{
                    transformStyle: 'preserve-3d',
                    perspective: '1000px'
                  }}
                >
                  {/* Elegant border frame */}
                  <motion.div
                    initial={{ opacity: 0 }}
                    whileHover={{ opacity: 1 }}
                    transition={{ duration: 0.4 }}
                    className="absolute inset-0 border-2 border-white/80 z-10 pointer-events-none"
                  />
                  
                  {/* Subtle glow effect */}
                  <motion.div
                    initial={{ opacity: 0 }}
                    whileHover={{ opacity: 1 }}
                    transition={{ duration: 0.5 }}
                    className="absolute -inset-1 bg-gradient-to-r from-gray-200/50 via-white/50 to-gray-200/50 blur-sm -z-10"
                  />
                  
                  <img
                    src={image}
                    alt={`${property.title} - Gallery ${index + 1}`}
                    className="w-full h-full object-cover transition-all duration-700 group-hover:scale-115 group-hover:brightness-110 group-hover:contrast-105"
                    loading="lazy"
                  />
                  
                  {/* Sophisticated overlay */}
                  <motion.div 
                    initial={{ opacity: 0 }}
                    whileHover={{ opacity: 1 }}
                    transition={{ duration: 0.4 }}
                    className="absolute inset-0 bg-gradient-to-t from-black/40 via-transparent to-transparent"
                  />
                  
                  {/* Image number indicator */}
                  <motion.div
                    initial={{ opacity: 0, scale: 0.8 }}
                    whileHover={{ opacity: 1, scale: 1 }}
                    transition={{ duration: 0.3, delay: 0.1 }}
                    className="absolute bottom-4 right-4 bg-white/90 backdrop-blur-sm px-3 py-1.5 text-xs font-light tracking-wider text-gray-800"
                  >
                    {String(index + 1).padStart(2, '0')}
                  </motion.div>
                  
                  {/* Minimalist corner accents */}
                  <motion.div
                    initial={{ opacity: 0, scale: 0 }}
                    whileHover={{ opacity: 1, scale: 1 }}
                    transition={{ duration: 0.4, delay: 0.2 }}
                    className="absolute top-4 left-4 w-4 h-4 border-l-2 border-t-2 border-white/70"
                  />
                  <motion.div
                    initial={{ opacity: 0, scale: 0 }}
                    whileHover={{ opacity: 1, scale: 1 }}
                    transition={{ duration: 0.4, delay: 0.3 }}
                    className="absolute top-4 right-4 w-4 h-4 border-r-2 border-t-2 border-white/70"
                  />
                  <motion.div
                    initial={{ opacity: 0, scale: 0 }}
                    whileHover={{ opacity: 1, scale: 1 }}
                    transition={{ duration: 0.4, delay: 0.4 }}
                    className="absolute bottom-4 left-4 w-4 h-4 border-l-2 border-b-2 border-white/70"
                  />
                </motion.div>
              ))}
            </div>
            
            {/* Elegant bottom spacing */}
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              transition={{ duration: 1, delay: 1.5 }}
              className="mt-20 text-center"
            >
              <div className="h-px bg-gradient-to-r from-transparent via-gray-200 to-transparent w-full max-w-md mx-auto" />
            </motion.div>
          </motion.div>
        </div>
      )}

      {/* Property Details */}
      <div className="max-w-6xl mx-auto px-8 py-32">
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-32">
          {/* Left Column - Details */}
          <motion.div
            initial={{ opacity: 0, x: -50 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 1, delay: 0.3 }}
            className="space-y-16"
          >
            <div>
              <motion.div
                initial={{ width: 0 }}
                animate={{ width: '100px' }}
                transition={{ duration: 1, delay: 0.6 }}
                className="h-px bg-gray-300 mb-12"
              />
              
              <h2 className="font-display text-4xl font-light text-gray-900 mb-8 tracking-wide">
                Details
              </h2>
              
              <div className="grid grid-cols-2 gap-8">
                <div className="flex items-center space-x-4">
                  <Bed className="w-6 h-6 text-gray-400" />
                  <span className="font-body text-gray-600 font-light tracking-wide">{property.bedrooms} Bedrooms</span>
                </div>
                <div className="flex items-center space-x-4">
                  <Bath className="w-6 h-6 text-gray-400" />
                  <span className="font-body text-gray-600 font-light tracking-wide">{property.bathrooms} Bathrooms</span>
                </div>
                <div className="flex items-center space-x-4">
                  <Square className="w-6 h-6 text-gray-400" />
                  <span className="font-body text-gray-600 font-light tracking-wide">{property.area}m²</span>
                </div>
                <div className="flex items-center space-x-4">
                  <Car className="w-6 h-6 text-gray-400" />
                  <span className="font-body text-gray-600 font-light tracking-wide">{property.cars} Cars</span>
                </div>
                {property.year_built && (
                  <div className="flex items-center space-x-4">
                    <Calendar className="w-6 h-6 text-gray-400" />
                    <span className="font-body text-gray-600 font-light tracking-wide">{property.year_built}</span>
                  </div>
                )}
              </div>
            </div>

            <div>
              <h3 className="font-display text-2xl font-light text-gray-900 mb-6 tracking-wide">
                Description
              </h3>
              <p className="font-body text-gray-600 font-light leading-relaxed text-lg tracking-wide">
                {property.description}
              </p>
            </div>

            {/* Features */}
            {property.features && property.features.length > 0 && (
              <div>
                <h3 className="font-display text-2xl font-light text-gray-900 mb-6 tracking-wide">
                  Features
                </h3>
                <div className="grid grid-cols-2 gap-4">
                  {property.features.map((feature, idx) => (
                    <div key={idx} className="flex items-center space-x-2">
                      <div className="w-1 h-1 bg-gray-400 rounded-full" />
                      <span className="font-body text-gray-600 font-light tracking-wide text-sm">{feature}</span>
                    </div>
                  ))}
                </div>
              </div>
            )}

            <div>
              <h3 className="font-display text-2xl font-light text-gray-900 mb-6 tracking-wide">
                Location
              </h3>
              <div className="flex items-center space-x-4">
                <MapPin className="w-6 h-6 text-gray-400" />
                <span className="font-body text-gray-600 font-light text-lg tracking-wide">{property.location}, {property.country}</span>
              </div>
            </div>
          </motion.div>

          {/* Right Column - Price & Contact */}
          <motion.div
            initial={{ opacity: 0, x: 50 }}
            animate={{ opacity: 1, x: 0 }}
            transition={{ duration: 1, delay: 0.5 }}
            className="space-y-16"
          >
            <div className="text-center">
              <motion.div
                initial={{ scale: 0.8, opacity: 0 }}
                animate={{ scale: 1, opacity: 1 }}
                transition={{ duration: 1, delay: 0.8 }}
                className="mb-8"
              >
                <motion.p 
                  layoutId={`property-price-${property.id}`}
                  className="font-display text-6xl md:text-8xl font-light text-gray-900 tracking-tight"
                >
                  {formatPrice(property.price, property.currency)}
                </motion.p>
              </motion.div>
              
              <motion.button
                initial={{ opacity: 0, y: 30 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ duration: 1, delay: 1 }}
                whileHover={{ scale: 1.05, y: -5 }}
                whileTap={{ scale: 0.95 }}
                className="font-body px-16 py-6 border border-gray-900 text-gray-900 font-light tracking-[0.2em] hover:bg-gray-900 hover:text-white transition-all duration-500 text-sm uppercase"
              >
                INQUIRE
              </motion.button>
            </div>

            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              transition={{ duration: 1, delay: 1.2 }}
              className="border-t border-gray-200 pt-16"
            >
              <h3 className="font-display text-2xl font-light text-gray-900 mb-6 tracking-wide">
                Contact
              </h3>
              <div className="space-y-4 text-gray-600 font-body font-light tracking-wide">
                <p>{property.agent_name}</p>
                <p>{property.agent_phone}</p>
                <p>{property.agent_email}</p>
                <p>Private Viewing Available</p>
              </div>
            </motion.div>
          </motion.div>
        </div>
      </div>
    </motion.div>
  );
};

export default PropertyDetails;