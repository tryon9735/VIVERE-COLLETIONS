import React, { useState } from 'react';
import { motion } from 'framer-motion';
import { Phone, Mail, MapPin } from 'lucide-react';

const AboutSection: React.FC = () => {
  const currentYear = new Date().getFullYear();
  const [videoLoaded, setVideoLoaded] = useState(false);

  return (
    <section id="about" className="pt-16 sm:pt-20 md:pt-24 pb-0 min-h-screen bg-black relative overflow-hidden">
      {/* Smooth Entry Transition from Properties */}
      <motion.div
        initial={{ opacity: 0 }}
        whileInView={{ opacity: 1 }}
        transition={{ duration: 2.5, ease: "easeOut" }}
        viewport={{ once: true }}
        className="absolute top-0 left-0 right-0 h-632 z-20"
      >
        <div className="absolute inset-0 bg-gradient-to-b from-black via-black/80 to-transparent" />
        <div className="absolute inset-0 bg-gradient-to-b from-black/95 via-black/60 to-transparent" />
        
        {/* Cinematic fade particles */}
        <div className="absolute inset-0">
          {[...Array(12)].map((_, i) => (
            <motion.div
              key={i}
              className="absolute w-1 h-1 bg-white/20 rounded-full"
              style={{
                left: `${Math.random() * 100}%`,
                top: `${Math.random() * 100}%`,
              }}
              animate={{
                opacity: [0, 1, 0],
                scale: [0, 1.5, 0],
              }}
              transition={{
                duration: 4 + Math.random() * 2,
                repeat: Infinity,
                delay: Math.random() * 4,
                ease: "easeInOut"
              }}
            />
          ))}
        </div>
      </motion.div>

      {/* Smooth Entry Transition from Properties */}
      <motion.div
        initial={{ opacity: 0 }}
        whileInView={{ opacity: 1 }}
        transition={{ duration: 2.5, ease: "easeOut" }}
        viewport={{ once: true }}
        className="absolute top-0 left-0 right-0 h-20 z-20"
      >
        <div className="absolute inset-0 bg-gradient-to-b from-black via-black/80 to-transparent" />
        <div className="absolute inset-0 bg-gradient-to-b from-black/95 via-black/60 to-transparent" />
        
        {/* Cinematic fade particles */}
        <div className="absolute inset-0">
          {[...Array(12)].map((_, i) => (
            <motion.div
              key={i}
              className="absolute w-1 h-1 bg-white/20 rounded-full"
              style={{
                left: `${Math.random() * 100}%`,
                top: `${Math.random() * 100}%`,
              }}
              animate={{
                opacity: [0, 1, 0],
                scale: [0, 1.5, 0],
              }}
              transition={{
                duration: 4 + Math.random() * 2,
                repeat: Infinity,
                delay: Math.random() * 4,
                ease: "easeInOut"
              }}
            />
          ))}
        </div>
      </motion.div>

      {/* Background Image with Blur */}
      <div className="absolute inset-0 z-0">
        <motion.video
          initial={{ scale: 1.1, opacity: 0 }}
          whileInView={{ 
            scale: videoLoaded ? 1 : 1.1, 
            opacity: videoLoaded ? 1 : 0 
          }}
          transition={{ duration: 2 }}
          viewport={{ once: true }}
          autoPlay
          muted
          loop
          playsInline
          onLoadedData={() => setVideoLoaded(true)}
          className="w-full h-full object-cover"
        >
          <source src="https://www.pexels.com/download/video/8287078/" type="video/mp4" />
        </motion.video>
        {/* Enhanced overlay system for better integration */}
        <div className="absolute inset-0 bg-black/40 backdrop-blur-sm" />
        <motion.div
          animate={{ 
            background: [
              'linear-gradient(45deg, rgba(0,0,0,0.3), rgba(0,0,0,0.5))',
              'linear-gradient(45deg, rgba(0,0,0,0.4), rgba(0,0,0,0.6))',
              'linear-gradient(45deg, rgba(0,0,0,0.3), rgba(0,0,0,0.5))'
            ]
          }}
          transition={{ duration: 8, repeat: Infinity, ease: "easeInOut" }}
          className="absolute inset-0"
        />
        <motion.div
          animate={{ 
            background: [
              'linear-gradient(45deg, rgba(0,0,0,0.3), rgba(0,0,0,0.5))',
              'linear-gradient(45deg, rgba(0,0,0,0.4), rgba(0,0,0,0.6))',
              'linear-gradient(45deg, rgba(0,0,0,0.3), rgba(0,0,0,0.5))'
            ]
          }}
          transition={{ duration: 8, repeat: Infinity, ease: "easeInOut" }}
          className="absolute inset-0"
        />
      </div>
      
      {/* Excellence Content */}
      <div className="max-w-4xl mx-auto px-4 sm:px-6 md:px-8 lg:px-8 text-center relative z-10 mb-12 sm:mb-16 md:mb-20">
        <motion.div
          initial={{ opacity: 0, y: 50 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 1.2 }}
          viewport={{ once: true }}
        >
          <h2 className="font-display text-5xl md:text-7xl md:pt-24 font-light text-white mb-4 tracking-tight italic drop-shadow-lg">
            Excellence
          </h2>
          
          <div className="space-y-6 sm:space-y-8 md:space-y-10 text-white">
            <motion.p
              initial={{ opacity: 0 }}
              whileInView={{ opacity: 1 }}
              transition={{ duration: 1, delay: 0.3 }}
              viewport={{ once: true }}
              className="font-display text-xl md:text-2xl font-light leading-relaxed tracking-wide italic drop-shadow-md"
            >
              For over a decade, we have redefined luxury real estate through uncompromising standards and visionary curation
            </motion.p>
            
            <motion.div
              initial={{ width: 0 }}
              whileInView={{ width: '100px' }}
              transition={{ duration: 1, delay: 0.6 }}
              viewport={{ once: true }}
              className="h-px bg-white/50 mx-auto"
            />
            
            <motion.p
              initial={{ opacity: 0 }}
              whileInView={{ opacity: 1 }}
              transition={{ duration: 1, delay: 0.9 }}
              viewport={{ once: true }}
              className="font-body text-lg font-extralight leading-relaxed max-w-2xl mx-auto tracking-wide drop-shadow-sm"
            >
              Our portfolio encompasses only the most distinguished properties—each chosen for its 
              architectural heritage, cultural significance, and ability to transcend the ordinary. 
              We don't simply sell homes; we curate legacies.
            </motion.p>
          </div>
        </motion.div>
      </div>

      {/* Footer Content */}
      <div className="max-w-7xl mx-auto px-4 sm:px-6 md:px-8 relative z-10 pb-8 sm:pb-12 md:pb-16">
        <motion.div
          initial={{ opacity: 0, y: 30 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 1 }}
          viewport={{ once: true }}
          className="grid grid-cols-1 md:grid-cols-3 gap-6 sm:gap-8 md:gap-10 items-start"
        >
          {/* Brand */}
          <div className="text-center md:text-left">
            <h3 className="font-display text-2xl font-light tracking-[0.3em] text-white mb-2 drop-shadow-lg">
              LUXE
            </h3>
            <p className="font-body text-white/80 font-extralight text-sm tracking-wider drop-shadow-md">
              Homes but Better
            </p>
          </div>

          {/* Contact Information */}
          <div className="text-center">
            <h4 className="font-display text-base sm:text-lg md:text-xl font-light text-white mb-3 sm:mb-4 md:mb-5 tracking-wide drop-shadow-lg">
              Contact
            </h4>
            <div className="space-y-2 sm:space-y-3">
              <div className="flex items-center justify-center space-x-3">
                <Phone className="w-4 h-4 text-white/70" />
                <span className="font-body text-white/90 font-extralight tracking-wider text-sm drop-shadow-sm">
                  +33 1 42 86 83 26
                </span>
              </div>
              <div className="flex items-center justify-center space-x-3">
                <Mail className="w-4 h-4 text-white/70" />
                <span className="font-body text-white/90 font-extralight tracking-wider text-sm drop-shadow-sm">
                  contact@vivere.com
                </span>
              </div>
              <div className="flex items-center justify-center space-x-3">
                <MapPin className="w-4 h-4 text-white/70" />
                <span className="font-body text-white/90 font-extralight tracking-wider text-sm drop-shadow-sm">
                  Paris • Monaco • London • New York
                </span>
              </div>
            </div>
          </div>

          {/* Copyright */}
          <div className="text-center md:text-right">
            <p className="font-body text-white/70 font-extralight text-sm tracking-wider drop-shadow-sm">
              © {currentYear} VIVERE Collections. All rights reserved.
            </p>
            <p className="font-body text-white/70 font-extralight text-sm tracking-wider mt-1 drop-shadow-sm">
              Licensed Real Estate Broker
            </p>
          </div>
        </motion.div>
      </div>
    </section>
  );
};

export default AboutSection;