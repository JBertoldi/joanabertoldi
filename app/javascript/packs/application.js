require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Internal imports
import { toggleCard } from '../components/toggleCard';
import { getProfileInfo } from '../components/fetchProfile';

document.addEventListener('turbolinks:load', () => {
  getProfileInfo();
  toggleCard();
});
