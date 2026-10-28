
$(document).ready(function () {


    // NAME VALIDATION
    $.validator.addMethod("Name", function (value, element) {
        return this.optional(element) || /^[A-Za-z ]+$/.test(value.trim());
    }, "Only letters are allowed");

    // PASSWORD VALIDATION
    $.validator.addMethod("Password", function (value, element) {
        return this.optional(element) ||
            (/[A-Z]/.test(value) &&
             /[a-z]/.test(value) &&
             /[0-9]/.test(value) &&
             /[^A-Za-z0-9\s]/.test(value));
    }, "Include an  uppercase, lowercase, number and special character");

    // IMAGE VALIDATION
    $.validator.addMethod("image", function (value, element) {
        if (element.files.length === 0) {
            return this.optional(element);
        }
        return element.files[0].type.startsWith("image/");
    }, "Please select a valid image");


    //Department VALIDATION
    $('input[name="department"]').on("change", function () {

    if (this.checked) {
        $('input[name="department"]').not(this).prop("checked", false);
    }

    $("#myForm").validate().element(this);
});

    
    // JQUERY VALIDATION
    $("#myForm").validate({

        // ERROR MESSAGE PLACEMENT
        errorPlacement: function (error, element) {
            error.addClass("error-message");
            error.insertAfter(element);
        },

        // VALIDATION RULES
        rules: {
            name: {
                required: true,
                lettersonly: true
            },

            email: {
                required: true,
                email: true
            },

            date: {
                required: true
            },

            password: {
                required: true,
                minlength: 10,
                strongPassword: true
            },

            phone: {
                required: true,
                digits: true,
                minlength: 10,
                maxlength: 10
            },

            gender: {
                required: true
            },

            telephone: {
                digits: true,
                minlength: 10,
                maxlength: 10
            },

            image: {
                required: true,
                imageFile: true
            },

            joiningDate: {
                required: true
            },

            time: {
                required: true
            },

            department: {
                required: true
            },

            month: {
                required: true
            },

            url: {
                required: true,
                url: true
            },

            week: {
                required: true
            },

            country: {
                required: true
            },

            state: {
                required: true
            },

            city: {
                required: true
            }
        },

        // ERROR MESSAGES
        messages: {
            name: {
                required: "Enter your name",
                name: "Only letters are allowed"
            },

            email: {
                required: "Enter your email",
                email: "Enter a valid email address"
            },

            date: {
                required: "Select your date of birth"
            },

            password: {
                required: "Enter a password",
                minlength: "Password must contain at least 10 characters",
                Password: "Password must have a uppercase, lowercase,and have a special charc"
            },

            phone: {
                required: "Enter your phone number",
                digits: "only digits are allowed.",
                minlength: "Phone number must have 10 numbers",
                maxlength: "Phone number must have 10 numbers"
            },

            gender: {
                required: "Select your gender"
            },

            telephone: {
                digits: "Only digits are allowed",
                minlength: "Telephone must have 10 digits",
                maxlength: "Telephone must have 10 digits"
            },

            image: {
                required: "Please select an image",
                imageFile: "Please select a valid image"
            },

            joiningDate: {
                required: "Select your joining date"
            },

            time: {
                required: "Select a time"
            },

            department: {
                required: "Select at least one department"
            },

            month: {
                required: "Select a month"
            },

            url: {
                required: "Enter a URL",
                url: "Enter a valid URL (e.g., https://lewishamilton.com)"
            },

            week: {
                required: "Select a week"
            },

            country: {
                required: "Select a country"
            },

            state: {
                required: "Select a state"
            },

            city: {
                required: "Select a city"
            }
        },

        // FORM SUBMISSION
        submitHandler: function (form) {

            let name = $("#name").val().trim();
            let email = $("#email").val().trim();
            let date = $("#date").val();
            let password = $("#password").val();
            let phone = $("#phone").val().trim();
            let gender = $('input[name="gender"]:checked').val();
            let telephone = $("#telephone").val().trim();
            let imageFile = $("#image")[0].files[0];
            let joiningDate = $("#joiningDate").val();
            let time = $("#time").val();

            let departments = $('input[name="department"]:checked')
                .map(function () {
                    return this.value;
                }).get().join(", ");

            let month = $("#month").val();
            let url = $("#url").val().trim();
            let week = $("#week").val();
            let country = $("#country").val();
            let state = $("#state").val();
            let city = $("#city").val();

            $("#demo").text(
                "Registration Successful!\n\n" +
                "Name: " + name + "\n" +
                "Email: " + email + "\n" +
                "Date of Birth: " + date + "\n" +
                "Password: [hidden]\n" +
                "Phone Number: " + phone + "\n" +
                "Gender: " + gender + "\n" +
                "Telephone: " + (telephone || "Not provided") + "\n" +
                "Image: " + (imageFile ? imageFile.name : "Not provided") + "\n" +
                "Joining Date: " + joiningDate + "\n" +
                "Time: " + time + "\n" +
                "Department: " + departments + "\n" +
                "Month: " + month + "\n" +
                "Range: " + $("#range").val() + "\n" +
                "URL: " + url + "\n" +
                "Week: " + week + "\n" +
                "Country: " + country + "\n" +
                "State: " + state + "\n" +
                "City: " + city
            );

            return false;
        }
    });


    // IMAGE PREVIEW
    $("#image").on("change", function () {
        let file = this.files[0];

        $("#Preview").hide().attr("src", "");

        if (!file) {
            $(this).valid();
            return;
        }

        if (!file.type.startsWith("image/")) {
            this.value = "";
            $(this).valid();
            return;
        }

        let imageURL = URL.createObjectURL(file);
        $("#Preview").attr("src", imageURL).show();

        $(this).valid();
    });


    // RANGE VALUE
    $("#range").on("input", function () {
        $("#rangeValue").text($(this).val());
    });


     // DEPARTMENT
        if (department === "") {
            $("#department-error").text("Select a department");
            valid = false;
        } else {
            $("#department-error").text("");
        }



  // COUNTRY, STATE AND CITY

    const locations = {
        India: {
            Tamilnadu: ["Chennai", "Coimbatore", "Madurai"],
            Kerala: ["Kochi", "Thiruvananthapuram"],
            Karnataka: ["Bengaluru", "Mysuru"]
        },

        USA: {
            California: ["Los Angeles", "San Francisco"],
            Texas: ["Houston", "Austin"],
            Florida: ["Miami", "Orlando"]
        },

        CHINA: {
            Beijing: ["Beijing"],
            Shanghai: ["Shanghai"],
            Guangdong: ["Guangzhou", "Shenzhen"]
        }
    };


    // COUNTRY
    $("#country").on("change", function () {
        let country = $(this).val();

        $("#state").html('<option value="">Select State</option>');
        $("#city").html('<option value="">Select City</option>');

        if (locations[country]) {
            $.each(locations[country], function (state) {
                $("#state").append(
                    $("<option>", {
                        value: state,
                        text: state
                    })
                );
            });
        }

        $(this).valid();
        $("#state").valid();
        $("#city").valid();
    });


    // STATE 
    $("#state").on("change", function () {
        let country = $("#country").val();
        let state = $(this).val();

        $("#city").html('<option value="">Select City</option>');

        if (locations[country] && locations[country][state]) {
            $.each(locations[country][state], function (index, city) {
                $("#city").append(
                    $("<option>", {
                        value: city,
                        text: city
                    })
                );
            });
        }

        $(this).valid();
        $("#city").valid();
    });


    // CITY 
    $("#city").on("change", function () {
        $(this).valid();
    });


    // RESET FORM
    $("#myForm").on("reset", function () {
        setTimeout(function () {
            $("#myForm").validate().resetForm();
            $("#demo").text("");
            $("#Preview").hide().attr("src", "");
            $("#rangeValue").text($("#range").val());
            $("#state").html('<option value="">Select State</option>');
            $("#city").html('<option value="">Select City</option>');
        }, 0);
    });

});
