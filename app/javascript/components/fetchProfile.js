// On profile page
function appendHtml () {
  const proxyurl = "https://cors-anywhere.herokuapp.com/";
  const url = 'https://github.com/jbertoldi';

  fetch(proxyurl + url)
    .then(response => response.text())
    .then(data => {
      const contributions = document.querySelector('.contributions');
      const repositories = document.querySelector('.repositories');
      const dailyAvg = document.querySelector('.daily-avg');

      const doc = new DOMParser().parseFromString(data, "text/html");
      const contri = doc.querySelector('.js-yearly-contributions .mb-2').innerHTML;
      const repos = doc.querySelector('.Counter').innerHTML; 
      const ghDays = document.querySelector('.gh-days').innerHTML; 

      const contributionsInteger = parseInt(contri.replace(/[^\d.]/, ''), 10)
      const dailyGhAvg = (contributionsInteger / ghDays).toFixed(2)
  
      dailyAvg.insertAdjacentHTML('beforeend', `<i class="fas fa-calculator"></i> ${dailyGhAvg} contributions per day`);
      contributions.insertAdjacentHTML('beforeend', `<i class="fas fa-code"></i> ${contri}`);
      repositories.insertAdjacentHTML('beforeend', `<i class="fas fa-laptop-code"></i>${repos} repositories created`);
    })
}

function getProfileInfo() {
  if (document.querySelector('.repos-info')) {
    appendHtml();
  }
}

export { getProfileInfo }