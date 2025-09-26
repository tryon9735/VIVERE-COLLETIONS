import React from 'react';
import { motion } from 'framer-motion';
import { Home, TrendingUp, Users, Shield, Award, Clock } from 'lucide-react';

const ServicesSection: React.FC = () => {
  const services = [
    {
      icon: Home,
      title: 'Property Acquisition',
      description: 'Expert guidance in acquiring premium properties with comprehensive market analysis and negotiation support.',
      features: ['Market Analysis', 'Property Valuation', 'Negotiation', 'Due Diligence']
    },
    {
      icon: TrendingUp,
      title: 'Investment Advisory',
      description: 'Strategic investment consulting to maximize returns on luxury real estate portfolios.',
      features: ['Portfolio Analysis', 'ROI Optimization', 'Market Trends', 'Risk Assessment']
    },
    {
      icon: Users,
      title: 'Concierge Service',
      description: 'White-glove service ensuring seamless property management and lifestyle enhancement.',
      features: ['Property Management', 'Lifestyle Services', '24/7 Support', 'Maintenance']
    },
    {
      icon: Shield,
      title: 'Legal & Finance',
      description: 'Comprehensive legal and financial services for complex international transactions.',
      features: ['Legal Support', 'Tax Optimization', 'Financing', 'Documentation']
    },
    {
      icon: Award,
      title: 'Exclusive Access',
      description: 'Private access to off-market properties and exclusive luxury developments.',
      features: ['Off-Market Properties', 'Pre-Launch Access', 'VIP Events', 'Network Access']
    },
    {
      icon: Clock,
      title: 'Relocation Services',
      description: 'Complete relocation support for seamless transition to your new luxury residence.',
      features: ['Moving Coordination', 'Utility Setup', 'Local Integration', 'Cultural Briefing']
    }
  ];

  return (
    <section id="services" className="py-20 bg-gradient-to-b from-slate-900 to-slate-800">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        {/* Header */}
        <motion.div
          initial={{ opacity: 0, y: 30 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6 }}
          viewport={{ once: true }}
          className="text-center mb-16"
        >
          <h2 className="text-4xl md:text-6xl font-light text-white mb-6">
            Premium
            <span className="block text-gray-300 font-bold">
              Services
            </span>
          </h2>
          <p className="text-xl text-gray-300 max-w-3xl mx-auto">
            Comprehensive luxury real estate services tailored to the most discerning clientele,
            ensuring excellence at every step of your property journey.
          </p>
        </motion.div>

        {/* Services Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {services.map((service, index) => (
            <motion.div
              key={service.title}
              initial={{ opacity: 0, y: 50 }}
              whileInView={{ opacity: 1, y: 0 }}
              transition={{ duration: 0.6, delay: index * 0.1 }}
              viewport={{ once: true }}
              whileHover={{ y: -10, scale: 1.02 }}
              className="group relative bg-gradient-to-br from-slate-800/50 to-slate-900/50 backdrop-blur-sm rounded-2xl p-8 border border-slate-700/50 hover:border-amber-400/50 transition-all duration-500"
            >
              {/* Icon */}
              <motion.div
                whileHover={{ rotate: 360 }}
                transition={{ duration: 0.6 }}
                className="w-16 h-16 bg-gray-200 rounded-2xl flex items-center justify-center mb-6 group-hover:shadow-2xl group-hover:shadow-gray-400/25 transition-all duration-500"
              >
                <service.icon className="w-8 h-8 text-gray-900" />
              </motion.div>

              {/* Title */}
              <h3 className="text-2xl font-semibold text-white mb-4 group-hover:text-gray-300 transition-colors duration-300">
                {service.title}
              </h3>

              {/* Description */}
              <p className="text-gray-300 mb-6 leading-relaxed">
                {service.description}
              </p>

              {/* Features */}
              <div className="space-y-2">
                {service.features.map((feature, idx) => (
                  <div key={idx} className="flex items-center space-x-2">
                    <div className="w-1.5 h-1.5 bg-gray-400 rounded-full" />
                    <span className="text-gray-400 text-sm">{feature}</span>
                  </div>
                ))}
              </div>

              {/* Hover effect overlay */}
              <div className="absolute inset-0 bg-gradient-to-r from-gray-400/5 to-gray-600/5 rounded-2xl opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none" />
            </motion.div>
          ))}
        </div>

        {/* Call to Action */}
        <motion.div
          initial={{ opacity: 0, y: 30 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.6, delay: 0.8 }}
          viewport={{ once: true }}
          className="text-center mt-16"
        >
          <motion.button
            whileHover={{ scale: 1.05, boxShadow: '0 20px 40px rgba(0,0,0,0.2)' }}
            whileTap={{ scale: 0.95 }}
            className="px-10 py-4 bg-gray-200 text-gray-900 font-semibold rounded-lg text-lg transition-all duration-300 hover:shadow-2xl hover:bg-white"
          >
            Schedule Consultation
          </motion.button>
        </motion.div>
      </div>
    </section>
  );
};

export default ServicesSection;