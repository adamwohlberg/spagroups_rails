(function() {
  jQuery(function() {
    return $('#reservation_arrival_date').datepicker({
      dateFormat: 'yy-mm-dd'
    }, {
      showOn: "button",
      buttonImage: "images/calendar.gif",
      buttonImageOnly: true,
      buttonText: "Select date"
    });
  });

}).call(this);
