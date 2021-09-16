
$(document).ready(function(){

    // -----------------regist modal1-------------------------
    var fixModal = document.getElementById("fixModal");
    
    // Get the button that opens the modal
    var fixBtn = document.getElementById("fixBtn");
    
    // Get the <span> element that closes the modal
    var fixCancel = document.getElementById("fixCancel");
    
    // When the user clicks on the button, open the modal
    fixBtn.onclick = function() {
        fixModal.style.display = "block";
    }
    
    // When the user clicks on <span> (x), close the modal
    fixCancel.onclick = function() {
        fixModal.style.display = "none";
    }
    
    // -----------------regist modal2-------------------------
    var deleteModal = document.getElementById("deleteModal");

    // Get the button that opens the modal
    var deletebtn = document.getElementById("deletebtn");

    // Get the <span> element that closes the modal
    var deleteCancel = document.getElementById("deleteCancel");

    // When the user clicks on the button, open the modal
    deletebtn.onclick = function() {
        deleteModal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    deleteCancel.onclick = function() {
        deleteModal.style.display = "none";
    }

// When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        console.log("delete");
        if (event.target == fixModal) {
            fixModal.style.display = "none";
        }    
    
        if (event.target == deleteModal) {
            deleteModal.style.display = "none";
        } 
    }

});
