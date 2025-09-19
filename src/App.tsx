import React from 'react';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import { AnimatePresence, motion } from 'framer-motion';
import { PropertiesProvider } from './contexts/PropertiesContext';
import Header from './components/Header';
import Hero from './components/Hero';
import PropertiesSection from './components/PropertiesSection';
import AboutSection from './components/AboutSection';
import PropertyDetails from './components/PropertyDetails';

const HomePage: React.FC = () => (
  <motion.div
    initial={{ opacity: 0 }}
    animate={{ opacity: 1 }}
    exit={{ opacity: 0 }}
    transition={{ duration: 0.8 }}
  >
    <Hero />
    <PropertiesSection />
    <AboutSection />
  </motion.div>
);
function App() {
  return (
    <PropertiesProvider>
      <Router>
        <div className="min-h-screen bg-white">
          <Header />
          <AnimatePresence mode="wait">
            <Routes>
              <Route path="/" element={<HomePage />} />
              <Route path="/property/:id" element={<PropertyDetails />} />
            </Routes>
          </AnimatePresence>
        </div>
      </Router>
    </PropertiesProvider>
  );
}

export default App;