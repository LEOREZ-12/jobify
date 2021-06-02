import { Calendar } from '@fullcalendar/core';
import dayGridPlugin from '@fullcalendar/daygrid';

const initCalendar = () => {
  const calendarEl = document.getElementById('calendar');

  if (!calendarEl) return;

  const applyData = JSON.parse(calendarEl.dataset.applies);

  var calendar = new Calendar(calendarEl, {
    plugins: [dayGridPlugin],
    initialView: 'dayGridMonth',
    initialDate: '2021-05-07',
    locale: 'fr',
    firstDay: 1,
    headerToolbar: {
      left: 'prev,next today',
      center: 'title',
      right: ''
    },
    events: applyData,
    // eventRender: (info) => {
    //   console.log(info);
    //   $(info.el).addClass(info.event.extendedProps.html_class)
    // }
  });
  calendar.render();
}

export { initCalendar };
