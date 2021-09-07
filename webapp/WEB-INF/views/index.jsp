<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link rel="stylesheet" href="src/css/vanilla-calendar-min.css">
<script src="src/js/vanilla-calendar-min.js"></script>


<script type="text/javascript">
	let myCalendar = new VanillaCalendar({
		selector : "#myCalendar"
	})
	
	
	let myCalendar = new VanillaCalendar({
	    selector: "#myCalendar",
	    pastDates: false
	})
	
	let myCalendar = new VanillaCalendar({
	    selector: "#myCalendar",
	    availableWeekDays: [
	      {day: 'monday', others: values},
	      {day: 'tuesday', others: values}
	    ],
	    availableDates: [
	      {date: '2019-09-15', others: values},
	      {date: '2019-09-16', others: values},
	      {date: '2019-09-17', others: values},
	      {date: '2019-09-25', others: values},
	      {date: '2019-09-26', others: values}
	    ]
	})
	
	let myCalendar = new VanillaCalendar({
	    selector: "#myCalendar",
	    datesFilter: true
	})
	
	
	let myCalendar = new VanillaCalendar({
	    selector: "#myCalendar",
	    months: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
	    shortWeekday: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat']
	})
	
	
	let myCalendar = new VanillaCalendar({
	    selector: "#myCalendar",
	    onSelect: (data, elem) => {}
	})
	
	let myCalendar = new VanillaCalendar({
	    selector: "#myCalendar",
	    date: new Date(),
	    todaysDate: new Date()
	})
	

	
</script>

<body>

	<div id="myCalendar" class="vanilla-calendar"></div>



</body>
</html>