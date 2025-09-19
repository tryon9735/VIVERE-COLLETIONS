import React, { useState } from 'react';
import { motion } from 'framer-motion';

const ContactSection: React.FC = () => {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    message: ''
  });

  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));
  };

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    console.log('Form submitted:', formData);
  };

  return (
    <section id="contact" className="py-32 bg-white">
      <div className="max-w-7xl mx-auto px-6">
        <motion.div
          initial={{ opacity: 0, y: 30 }}
          whileInView={{ opacity: 1, y: 0 }}
          transition={{ duration: 1 }}
          viewport={{ once: true }}
          className="text-center mb-24"
        >
          <h2 className="font-display text-5xl font-extralight text-gray-900 mb-8 tracking-wide">
            Contact
          </h2>
          <div className="h-px bg-gray-300 mx-auto w-16" />
        </motion.div>

        <div className="grid grid-cols-1 lg:grid-cols-2 gap-24 items-start">
          {/* Contact Info */}
          <motion.div
            initial={{ opacity: 0, x: -50 }}
            whileInView={{ opacity: 1, x: 0 }}
            transition={{ duration: 1 }}
            viewport={{ once: true }}
            className="space-y-12"
          >
            <div>
              <h3 className="font-display text-2xl font-light text-gray-900 mb-6 tracking-wide">
                Get in touch
              </h3>
              <p className="font-body text-gray-600 font-extralight leading-relaxed text-lg tracking-wide">
                Discover your next exceptional property with our expert guidance
              </p>
            </div>

            <div className="space-y-8">
              <div>
                <p className="font-body text-gray-900 font-light tracking-wide mb-2 text-sm uppercase">Phone</p>
                <p className="font-body text-gray-600 font-extralight tracking-wider">+33 1 42 86 83 26</p>
              </div>
              
              <div>
                <p className="font-body text-gray-900 font-light tracking-wide mb-2 text-sm uppercase">Email</p>
                <p className="font-body text-gray-600 font-extralight tracking-wider">contact@luxe.com</p>
              </div>
              
              <div>
                <p className="font-body text-gray-900 font-light tracking-wide mb-2 text-sm uppercase">Locations</p>
                <p className="font-body text-gray-600 font-extralight tracking-wider">Paris • Monaco • London • New York</p>
              </div>
            </div>
          </motion.div>

          {/* Contact Form */}
          <motion.div
            initial={{ opacity: 0, x: 50 }}
            whileInView={{ opacity: 1, x: 0 }}
            transition={{ duration: 1 }}
            viewport={{ once: true }}
          >
            <form onSubmit={handleSubmit} className="space-y-8">
              <div>
                <input
                  type="text"
                  id="name"
                  name="name"
                  value={formData.name}
                  onChange={handleInputChange}
                  required
                  placeholder="Name"
                  className="font-body w-full px-0 py-4 bg-transparent border-0 border-b border-gray-200 text-gray-900 placeholder-gray-400 focus:outline-none focus:border-gray-900 transition-colors duration-500 font-extralight tracking-wider"
                />
              </div>
              
              <div>
                <input
                  type="email"
                  id="email"
                  name="email"
                  value={formData.email}
                  onChange={handleInputChange}
                  required
                  placeholder="Email"
                  className="font-body w-full px-0 py-4 bg-transparent border-0 border-b border-gray-200 text-gray-900 placeholder-gray-400 focus:outline-none focus:border-gray-900 transition-colors duration-500 font-extralight tracking-wider"
                />
              </div>

              <div>
                <textarea
                  id="message"
                  name="message"
                  value={formData.message}
                  onChange={handleInputChange}
                  required
                  rows={4}
                  placeholder="Message"
                  className="font-body w-full px-0 py-4 bg-transparent border-0 border-b border-gray-200 text-gray-900 placeholder-gray-400 focus:outline-none focus:border-gray-900 transition-colors duration-500 resize-none font-extralight tracking-wider"
                />
              </div>

              <motion.button
                type="submit"
                whileHover={{ scale: 1.02, y: -2 }}
                whileTap={{ scale: 0.98 }}
                className="font-body w-full py-4 border border-gray-900 text-gray-900 font-light tracking-[0.2em] hover:bg-gray-900 hover:text-white transition-all duration-500 text-sm uppercase mt-12"
              >
                SEND MESSAGE
              </motion.button>
            </form>
          </motion.div>
        </div>
      </div>
    </section>
  );
};

export default ContactSection;