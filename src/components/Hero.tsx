import React, { useState, useEffect } from 'react';
import { motion } from 'framer-motion';

const Hero: React.FC = () => {
  const [displayedText, setDisplayedText] = useState('');
  const fullText = 'Homes but Better';
  const [currentIndex, setCurrentIndex] = useState(0);
  const [isTyping, setIsTyping] = useState(true);
  const [videoLoaded, setVideoLoaded] = useState(false);

  useEffect(() => {
    if (isTyping && currentIndex < fullText.length) {
      const timeout = setTimeout(() => {
        setDisplayedText(fullText.slice(0, currentIndex + 1));
        setCurrentIndex(currentIndex + 1);
      }, 100);
      return () => clearTimeout(timeout);
    } else if (currentIndex >= fullText.length) {
      setIsTyping(false);
    }
  }, [currentIndex, isTyping, fullText]);

  return (
    <>
    <section className="min-h-screen flex items-center justify-center bg-black relative overflow-hidden">
      {/* Video Background */}
      <div className="absolute inset-0">
        <motion.video
          initial={{ scale: 1.1, opacity: 0 }}
          animate={{ 
            scale: videoLoaded ? 1 : 1.1, 
            opacity: videoLoaded ? 1 : 0 
          }}
          transition={{ duration: 2 }}
          autoPlay
          muted
          loop
          playsInline
          onLoadedData={() => setVideoLoaded(true)}
          className="w-full h-full object-cover"
        >
          <source src="https://videos.pexels.com/video-files/8045176/8045176-uhd_2560_1440_25fps.mp4" type="video/mp4" />
          <source src="https://videos.pexels.com/video-files/8045176/8045176-hd_1920_1080_25fps.mp4" type="video/mp4" />
        </motion.video>
        
        {/* Simple dark overlay */}
        <div className="absolute inset-0 bg-black/30 z-10" />
      </div>

      <div className="relative z-30 text-center px-4 sm:px-6 md:px-8 max-w-4xl mx-auto flex flex-col justify-center min-h-screen pt-20 sm:pt-24 md:pt-28">
        <motion.div
          initial={{ opacity: 0, y: 50 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 1.2, delay: 0.5 }}
        >
          <motion.h1 
            className="font-display text-4xl sm:text-5xl md:text-6xl lg:text-7xl xl:text-8xl 2xl:text-9xl font-light text-white mb-6 sm:mb-8 md:mb-12 tracking-tight leading-none"
          >
            {displayedText}
            <motion.span
              animate={{ opacity: [1, 0, 1] }}
              transition={{ duration: 1, repeat: Infinity }}
              className="inline-block ml-2"
            >
              |
            </motion.span>
          </motion.h1>
          
          <motion.p
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
            transition={{ duration: 1, delay: 2 }}
            className="font-body text-sm sm:text-base md:text-lg lg:text-xl xl:text-2xl text-white/95 mb-12 sm:mb-16 md:mb-20 font-light tracking-wider max-w-2xl mx-auto leading-relaxed drop-shadow-sm"
          >
            Where architectural excellence meets uncompromising luxury in the world's most coveted addresses
          </motion.p>

          <motion.button
            initial={{ opacity: 0, y: 30 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 1, delay: 2.5 }}
            whileHover={{ scale: 1.05, y: -5 }}
            whileTap={{ scale: 0.95 }}
            className="font-body px-8 sm:px-10 md:px-12 py-3 sm:py-4 border-2 border-white/80 text-white font-light tracking-[0.2em] hover:bg-white hover:text-gray-900 hover:border-white transition-all duration-500 text-xs sm:text-sm md:text-base uppercase"
          >
            DISCOVER EXCELLENCE
          </motion.button>
        </motion.div>

        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 1, delay: 3 }}
          className="absolute bottom-8 sm:bottom-12 md:bottom-16 left-1/2 transform -translate-x-1/2"
        >
          <motion.div
            animate={{ y: [0, 10, 0] }}
            transition={{ duration: 2, repeat: Infinity }}
            className="w-px h-12 sm:h-16 md:h-20 bg-white/30"
          />
        </motion.div>
      </div>
    </section>

    </>
  );
};

export default Hero;