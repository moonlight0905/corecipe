function count (){
  const cookingOne  = document.getElementById("cooking_one");
  cookingOne.addEventListener("keyup", () => {
    const countVal = cookingOne.value.length;
    const charNum  = document.getElementById("count_strings_one");
    charNum.innerHTML = `${countVal}文字`;
  });

  const cookingTwo  = document.getElementById("cooking_two");
  cookingTwo.addEventListener("keyup", () => {
    const countVal = cookingTwo.value.length;
    const charNum  = document.getElementById("count_strings_two");
    charNum.innerHTML = `${countVal}文字`;
  });

  const cookingThree = document.getElementById("cooking_three");
  cookingThree.addEventListener("keyup", () => {
    const countVal = cookingThree.value.length;
    const charNum  = document.getElementById("count_strings_three");
    charNum.innerHTML = `${countVal}文字`;
  });

  const cookingFour  = document.getElementById("cooking_four");
  cookingFour.addEventListener("keyup", () => {
    const countVal = cookingFour.value.length;
    const charNum  = document.getElementById("count_strings_four");
    charNum.innerHTML = `${countVal}文字`;
  });

  const cookingFive  = document.getElementById("cooking_five");
  cookingFive.addEventListener("keyup", () => {
    const countVal = cookingFive.value.length;
    const charNum  = document.getElementById("count_strings_five");
    charNum.innerHTML = `${countVal}文字`;
  });

  const cookingSix  = document.getElementById("cooking_six");
  cookingSix.addEventListener("keyup", () => {
    const countVal = cookingSix.value.length;
    const charNum  = document.getElementById("count_strings_six");
    charNum.innerHTML = `${countVal}文字`;
  });
};

window.addEventListener('load', count);
