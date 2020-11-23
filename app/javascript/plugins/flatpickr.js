import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/airbnb.css'

const flat_pickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    enableTime: true
  });
}

export { flat_pickr }

