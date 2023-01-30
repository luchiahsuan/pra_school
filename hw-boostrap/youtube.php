
<div class="youtube">
    <div class='arrow' onclick='pp(1)'>
         < 
    </div>

    <div class="srcs">
        <?php
        $srcs = array(
            "https://www.youtube.com/embed/xlbp2uriAM8",
            "https://www.youtube.com/embed/UpMM_b8E1S4",
            "https://www.youtube.com/embed/Ukl0PKjQL_o",
            "https://www.youtube.com/embed/j0seO3yo504",
            "https://www.youtube.com/embed/j8wMzYeHQew",
            "https://www.youtube.com/embed/Jqfe4rJuPYM"
        );
        foreach ($srcs as $key => $src) {

        ?>
            <div class="im" id="ssaa<?= $key; ?>">
                <iframe src="<?= $src; ?>" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
        <?php
        }
        ?>
    </div>
    <div class='arrow' onclick='pp(2)'>
         > 
    </div>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.2/jquery.min.js" integrity="sha512-tWHlutFnuG0C6nQRlpvrEhE4QpkG1nn2MOUMWmUeRePl4e3Aki0VB6W1v3oLjFtd0hVOtRQ9PHpSfN6u6/QXkQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>
        let nowpage = 0,
            num = <?= $key; ?>;

        function pp(x) {
            let s, t;
            if (x == 1 && nowpage - 1 >= 0) {
                nowpage--;
            }

            if (x == 2 && (nowpage + 1) <= num * 1 - 3) {
                nowpage++;
            }


            let mm = window.matchMedia("(max-width: 768px)");
            mm.addListener(resizeWidth);
            resizeWidth(mm);

            function resizeWidth(pMatchMedia) {
                if (pMatchMedia.matches) {
                    $(".im").hide()
                    for (s = 0; s <= 1; s++) {
                        t = s * 1 + nowpage * 1;
                        $("#ssaa" + t).show()
                    }
                } else {
                    $(".im").hide()
                    for (s = 0; s <= 2; s++) {
                        t = s * 1 + nowpage * 1;
                        $("#ssaa" + t).show()
                    }
                }
            }
        }
        pp(1)
    </script>
</div>