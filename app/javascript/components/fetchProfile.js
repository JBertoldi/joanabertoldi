function insertRepos(doc) {
  const repositories = document.querySelector('.repositories');
  const repos = doc.querySelector('.Counter').innerHTML;

  repositories.innerHTML = '';
  repositories.insertAdjacentHTML('beforeend', `<i class="fas fa-laptop-code"></i>${repos} repositories created`);
}

function insertContributionsInfo(doc) {
  const contributions = document.querySelector('.contributions');
  const dailyAvg = document.querySelector('.daily-avg');

  let contriText = doc.querySelector('.js-yearly-contributions .mb-2').innerHTML;
  const days = document.querySelector('.gh-days').innerHTML;

  // Remove unwanted elements
  let contriTextArr = contriText.trim().split(' ');
  contriTextArr = contriTextArr.splice(0, 2).concat(contriTextArr.splice(9, 2));

  // Set values to insert
  const contriCount = contriTextArr[0];
  const avg = (contriCount / days).toFixed(2);

  const contriString = contriTextArr.join(' ');

  dailyAvg.innerHTML = '';
  dailyAvg.insertAdjacentHTML('beforeend', `<i class="fas fa-chart-line"></i> ${avg} contributions per day`);
  contributions.innerHTML = '';
  contributions.insertAdjacentHTML('beforeend', `<i class="fas fa-code"></i> ${contriString}`);
}

function getProfileInfo() {
  if (document.querySelector('.repos-info')) {
    const proxyUrl = 'https://cors-anywhere.herokuapp.com/';

    fetch(`${proxyUrl}https://github.com/jbertoldi`)
      .then(response => response.text())
      .then(data => {
        const doc = new DOMParser().parseFromString(data, "text/html");

        insertContributionsInfo(doc);
        insertRepos(doc);
      })
  }
}

export { getProfileInfo };
