const input = document.querySelector(".form-control");
const result = document.querySelector("#.btn btn-ghost");

const searchText = (event) => {
  result.innerHTML = "";
  fetch(`https://wagon-dictionary.herokuapp.com/autocomplete/${input.value}`)
    .then(response => response.json())
    .then((data) => {
      const words = data.words;
      words.forEach((word) => {
        result.insertAdjacentHTML('beforeend', `<li>${word}</li>`);
      });
    });
};

input.addEventListener("keyup", searchText);

