const list = document.querySelector('#character');

const insertCharacterInfo = (data) => {
  data.Search.forEach((result) => {
    result
    // const character = `<li>
    //   <img src="${result.Poster}" alt="" />
    //   <p>${result.Title}</p>
    // </li>`;
    // list.insertAdjacentHTML('beforeend', character);
  });
};

const fetchCharacterInfo = (id) => {
  fetch(`https://api.jikan.moe/v3/character/${id}`)
    .then(response => response.json())
    .then(insertCharacterInfo);
};
