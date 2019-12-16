function themeNav() {

    $(function () {

        $("#li-1").hover(() => {
            $("#area-1").slideToggle();
        });

        $("#li-2").hover(() => {
            $("#area-2").slideToggle();
        });

        $("#li-3").hover(() => {
            $("#area-3").slideToggle();
        });

        $("#li-4").hover(() => {
            $("#area-4").slideToggle();
        });


    })
}

function headerNav() {

    $("#headerNav").load("../html/headerNav.html");


}