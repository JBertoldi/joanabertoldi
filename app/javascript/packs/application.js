require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Internal imports
const { toggleCard } = require("../components/toggleCard");

document.addEventListener('turbolinks:load', () => {
  toggleCard();
});
