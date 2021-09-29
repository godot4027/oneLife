$(document).ready(function() {
	var modal2 = document.getElementById("myModal2");
	 var weekUpdateBtn = document.getElementById("weekUpdateBtn");
	var cancelWeekChange = document.getElementById("cancelWeekChange");
	weekUpdateBtn.onclick = function() {
		modal2.style.display = "block";
	}
	cancelWeekChange.onclick = function() {
		modal2.style.display = "none";
	}

	window.onclick = function(event) {
		
		if (event.target == modal2) {
			modal2.style.display = "none";
		}
	}

});