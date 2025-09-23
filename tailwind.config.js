/** @type {import('tailwindcss').Config} */
export default {
  content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
  theme: {
    extend: {
      colors: {
        'deep-black': '#1a1a1a',
        'champagne-gold': '#D4AF37',
        'luxury-gray': '#6b7280',
      },
    },
  },
  plugins: [],
};
