/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.php", "./components/navbar.php"],
  theme: {
    extend: {},
  },
  plugins: [require("daisyui")],
  daisyui: {
    themes: ["emerald"],
  },
};
