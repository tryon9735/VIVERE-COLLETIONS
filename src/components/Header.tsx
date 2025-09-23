import React from 'react';
import { useState, useEffect } from 'react';
import { motion } from 'framer-motion';
import { useNavigate, useLocation } from 'react-router-dom';

const Header: React.FC = () => {
  const navigate = useNavigate();
  const location = useLocation();
  const isHomePage = location.pathname === '/';
  const isPropertyDetails = location.pathname.startsWith('/property/');
  const [scrolled, setScrolled] = useState(false);

  useEffect(() => {
    const handleScroll = () => {
      const scrollTop = window.scrollY;
      setScrolled(scrollTop > 50);
    };

    if (isHomePage) {
      window.addEventListener('scroll', handleScroll);
      return () => window.removeEventListener('scroll', handleScroll);
    }
  }, [isHomePage]);

  // Hide navbar on property details pages
  if (isPropertyDetails) {
    return null;
  }

  return (
    <motion.header
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      transition={{ duration: 1.5 }}
      className={`fixed top-0 left-0 right-0 z-50 transition-all duration-500 ${
        isHomePage 
          ? (scrolled ? 'bg-white/60 backdrop-blur-sm' : 'bg-transparent')
          : 'bg-white/60 backdrop-blur-sm'
      }`}
    >
      <div className="max-w-7xl mx-auto px-8 py-6">
        <div className="flex items-center justify-between">
          <motion.div
            whileHover={{ scale: 1.02 }}
            transition={{ duration: 0.3 }}
            onClick={() => navigate('/')}
            className="cursor-pointer"
          >
            <h1 className="font-display text-2xl font-light tracking-[0.3em] text-deep-black">
              VIVERE Collections
            </h1>
          </motion.div>

          <nav className="hidden md:flex items-center space-x-12">
            {['Properties', 'About'].map((item) => (
              <motion.a
                key={item}
                href={`#${item.toLowerCase()}`}
                whileHover={{ y: -2 }}
                transition={{ duration: 0.2 }}
                className="font-body text-luxury-gray hover:text-champagne-gold font-light tracking-wider transition-colors duration-300 text-sm uppercase"
              >
                {item}
              </motion.a>
            ))}
          </nav>
        </div>
      </div>
    </motion.header>
  );
};

export default Header;