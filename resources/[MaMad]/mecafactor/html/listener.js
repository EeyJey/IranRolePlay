$(function(){
	window.onload = (e) => {
        /* 'links' the js with the Nui message from main.lua */
		window.addEventListener('message', (event) => {
            //document.querySelector("#logo").innerHTML = " "
			var item = event.data;
			if (item !== undefined && item.type === "ui") {
                /* if the display is true, it will show */
				if (item.display === true) {
					$("#factor").show()
					$("#price").html(item.price)
                     /* if the display is false, it will hide */
				} else{
                    $("#factor").hide();
                }
			}
		});
	};
});

$("#accept").click(function(){
    $.post('http://mecafactor/accept', JSON.stringify({}));
});

$("#cancel").click(function(){
    $.post('http://mecafactor/cancel', JSON.stringify({}));
});
