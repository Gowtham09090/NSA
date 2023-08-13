function validateForm() {
            const firstname = document.getElementById("firstname").value;
            const lastname = document.getElementById("lastname").value;
            const address = document.getElementById("address").value;
            const city = document.getElementById("city").value;
            const phone = document.getElementById("phone").value;
            const gender = document.querySelector('input[name="gender"]:checked');

            if (!firstname || !lastname || !address || !city || !phone || !gender) {
                alert("Please fill out all the required fields.");
                return false;
            }
            return true;
        }