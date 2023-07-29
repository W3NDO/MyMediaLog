const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Raleway',...defaultTheme.fontFamily.sans],
        sans2: ['Nunito', ...defaultTheme.fontFamily.sans],
        sans3: ['Poppins', ...defaultTheme.fontFamily.sans]
      },
      keyframes: {
        'fade-out': {
          '0%': {'opacity': 0},
          '7.5%': {'opacity': 1},
          '92.5%': {'opacity': 1},
          '100%': {'opacity': 0,}
        }
      },
      animation: {
        'fade-out': 'fade-out 7s forwards'
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
