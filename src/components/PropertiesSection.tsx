import React, { useState, useMemo } from 'react';
import { motion, AnimatePresence } from 'framer-motion';
import { useProperties } from '../contexts/PropertiesContext';
import PropertyCard from './PropertyCard';
import LoadingSpinner from './LoadingSpinner';

const PropertiesSection: React.FC = () => {
  const [selectedCategory, setSelectedCategory] = useState<string>('all');
  const [displayCount, setDisplayCount] = useState(8);
  const { properties, loading, error, getPropertiesByType } = useProperties();

  const categories = [
    { id: 'all', label: 'All Properties', count: properties.length },
    { id: 'penthouse', label: 'Penthouses', count: properties.filter(p => p.type === 'penthouse').length },
    { id: 'house', label: 'Houses', count: properties.filter(p => p.type === 'house').length },
    { id: 'villa', label: 'Villas', count: properties.filter(p => p.type === 'villa').length },
    { id: 'mansion', label: 'Mansions', count: properties.filter(p => p.type === 'mansion').length },
    { id: 'castle', label: 'Castles', count: properties.filter(p => p.type === 'castle').length }
  ];

  const filteredProperties = useMemo(() => 
    getPropertiesByType(selectedCategory), 
    [selectedCategory, properties]
  );

  const displayedProperties = useMemo(() => 
    filteredProperties.slice(0, displayCount), 
    [filteredProperties, displayCount]
  );

  const hasMore = filteredProperties.length > displayCount;

  const handleLoadMore = () => {
    setDisplayCount(prev => prev + 8);
  };

  const handleCategoryChange = (categoryId: string) => {
    setSelectedCategory(categoryId);
    setDisplayCount(8);
  };

  if (loading) {
    return (
      <section id="properties" className="min-h-screen bg-black relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-black via-gray-900 to-black" />
        <div className="relative z-10 flex items-center justify-center min-h-screen">
          <LoadingSpinner />
        </div>
      </section>
    );
  }

  if (error) {
    return (
      <section id="properties" className="min-h-screen bg-black relative overflow-hidden">
        <div className="absolute inset-0 bg-gradient-to-br from-black via-gray-900 to-black" />
        <div className="relative z-10 flex items-center justify-center min-h-screen">
          <p className="text-red-400 font-light text-xl">Error loading properties: {error}</p>
        </div>
      </section>
    );
  }

  return (
    <section id="properties" className="min-h-screen bg-white relative overflow-hidden">
      {/* VIVERE Watermark */}
      <div className="vivere-watermark">V</div>
      
      {/* Cinematic Background */}

      {/* Content Layer */}
      <div className="relative z-10 min-h-screen">

        {/* Hero Header */}
        <div className="pt-32 pb-20 text-center relative z-40">
          <motion.div
            initial={{ opacity: 0, y: 100 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 2, delay: 1.5, ease: [0.25, 0.46, 0.45, 0.94] }}
            className="max-w-6xl mx-auto px-6"
          >
            <motion.h2 
              className="font-display text-7xl md:text-9xl font-light text-deep-black mb-8 tracking-tight leading-none"
              initial={{ opacity: 0, scale: 0.8 }}
              animate={{ opacity: 1, scale: 1 }}
              transition={{ duration: 2, delay: 2 }}
            >
              Curated
              <motion.span 
                className="block italic text-6xl md:text-8xl mt-4"
                initial={{ opacity: 0, x: -100 }}
                animate={{ opacity: 1, x: 0 }}
                transition={{ duration: 1.5, delay: 2.5 }}
              >
                Collection
              </motion.span>
            </motion.h2>
            
            <motion.div
              initial={{ width: 0 }}
              animate={{ width: '200px' }}
              transition={{ duration: 2, delay: 3 }}
              className="h-px bg-gradient-to-r from-transparent via-champagne-gold to-transparent mx-auto mb-12"
            />
            
            <motion.p
              initial={{ opacity: 0, y: 30 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 1, delay: 3.5 }}
              className="font-body text-xl md:text-2xl text-luxury-gray font-light leading-relaxed max-w-3xl mx-auto tracking-wide"
            >
              Each residence in our collection represents architectural excellence, 
              prime location, and uncompromising quality—curated for the most discerning collectors
            </motion.p>
          </motion.div>
        </div>

        {/* Floating Filter Navigation */}
        <motion.div
          initial={{ opacity: 0, y: 50 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 1, delay: 4 }}
          className="flex justify-center mb-20 px-6"
        >
          <div className="bg-white border border-gray-100 shadow-sm p-2">
            <div className="flex flex-wrap justify-center gap-2">
              {categories.map((category, index) => (
                <motion.button
                  key={category.id}
                  initial={{ opacity: 0, y: 20, scale: 0.9 }}
                  animate={{ opacity: 1, y: 0, scale: 1 }}
                  transition={{ 
                    duration: 0.6, 
                    delay: index * 0.1,
                    ease: [0.25, 0.46, 0.45, 0.94]
                  }}
                  whileHover={{ 
                    scale: 1.05,
                    y: -3,
                    transition: { duration: 0.2 }
                  }}
                  whileTap={{ scale: 0.95 }}
                  onClick={() => handleCategoryChange(category.id)}
                  className={`relative px-8 py-4 font-body text-sm font-medium tracking-wider transition-all duration-500 overflow-hidden group ${
                    selectedCategory === category.id
                      ? 'text-white bg-champagne-gold shadow-lg border border-champagne-gold'
                      : 'text-luxury-gray hover:text-champagne-gold bg-white hover:bg-champagne-gold/5 border border-gray-200 hover:border-champagne-gold/40'
                  }`}
                >
                  {/* Background Effects */}
                  {selectedCategory !== category.id && (
                    <motion.div
                      className="absolute inset-0 bg-gradient-to-r from-champagne-gold/0 via-champagne-gold/10 to-champagne-gold/0"
                      initial={{ x: '-100%' }}
                      whileHover={{ x: '100%' }}
                      transition={{ duration: 0.8, ease: "easeInOut" }}
                    />
                  )}
                  
                  <div className="relative z-10 flex items-center space-x-2">
                    <span className="uppercase">{category.label}</span>
                    <span className={`text-xs px-2 py-1 rounded-full ${
                      selectedCategory === category.id 
                        ? 'bg-white/20 text-white/80' 
                        : 'bg-gray-100 text-luxury-gray'
                    }`}>
                      {category.count}
                    </span>
                  </div>
                </motion.button>
              ))}
            </div>
          </div>
        </motion.div>

        {/* Properties Grid */}
        <div className="max-w-8xl mx-auto px-6 pb-20">
          <AnimatePresence mode="wait">
            <motion.div
              key={`${selectedCategory}-${displayCount}`}
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.8 }}
              className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-8"
            >
              {displayedProperties.map((property, index) => (
                <motion.div
                  key={property.id}
                  initial={{ opacity: 0, y: 60, scale: 0.9 }}
                  animate={{ opacity: 1, y: 0, scale: 1 }}
                  transition={{ 
                    duration: 0.8, 
                    delay: index * 0.1,
                    ease: [0.25, 0.46, 0.45, 0.94]
                  }}
                  className="group"
                >
                  <div className="bg-white border border-gray-100 hover:border-champagne-gold/30 transition-all duration-500 hover:shadow-lg">
                    <PropertyCard property={property} index={index} />
                  </div>
                </motion.div>
              ))}
            </motion.div>
          </AnimatePresence>

          {/* Load More Section */}
          {hasMore && (
            <motion.div
              initial={{ opacity: 0, y: 50 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.8, delay: 0.5 }}
              className="text-center mt-20"
            >
              <motion.button
                whileHover={{ 
                  scale: 1.05, 
                  y: -5,
                  boxShadow: "0 20px 40px rgba(255,255,255,0.1)"
                }}
                whileTap={{ scale: 0.95 }}
                onClick={handleLoadMore}
                className="bg-white hover:bg-champagne-gold text-deep-black hover:text-white border border-gray-200 hover:border-champagne-gold px-12 py-4 font-body font-medium tracking-wider transition-all duration-500 text-sm uppercase group shadow-sm hover:shadow-lg"
              >
                <span className="relative z-10">View More</span>
                <motion.div
                  className="absolute inset-0 bg-gradient-to-r from-champagne-gold/0 via-champagne-gold/10 to-champagne-gold/0"
                  initial={{ x: '-100%' }}
                  whileHover={{ x: '100%' }}
                  transition={{ duration: 0.8, ease: "easeInOut" }}
                />
              </motion.button>
              
              <motion.p 
                initial={{ opacity: 0 }}
                animate={{ opacity: 1 }}
                transition={{ delay: 0.8 }}
                className="font-body text-luxury-gray font-light text-sm tracking-wider mt-6"
              >
              </motion.p>
            </motion.div>
          )}

          {/* No Properties Message */}
          {filteredProperties.length === 0 && (
            <motion.div
              initial={{ opacity: 0, scale: 0.9 }}
              animate={{ opacity: 1, scale: 1 }}
              transition={{ duration: 0.8 }}
              className="text-center py-32"
            >
              <div className="bg-white border border-gray-100 shadow-sm p-12 max-w-md mx-auto">
                <p className="font-body text-luxury-gray font-light tracking-wider text-lg">
                  No properties found in this category
                </p>
                <p className="font-body text-gray-400 font-light text-sm tracking-wider mt-4">
                  Please try a different filter
                </p>
              </div>
            </motion.div>
          )}
        </div>

      </div>

    </section>
  );
};

export default PropertiesSection;