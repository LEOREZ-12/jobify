const growTextarea = () => {

  const growers = document.querySelectorAll(".grow-wrap");
  
  growers.forEach((grower) => {
    const textarea = grower.querySelector("textarea");
    textarea.addEventListener("input", () => {
      grower.dataset.replicatedValue = textarea.value;
    });
  });

}

export { growTextarea };