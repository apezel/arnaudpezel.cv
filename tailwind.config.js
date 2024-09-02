const { addIconSelectors } = require('@iconify/tailwind');
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {
      fontSize: {
        tiny: '0.5rem'
      },
      screens: {
        'print': { 'raw': 'print' }
      }
    },
  },
  plugins: [
    addIconSelectors(['mdi', 'mdi-light', 'raphael', 'streamline'])
  ],
}

