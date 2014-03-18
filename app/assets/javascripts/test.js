//
//$(document).ready(function() {
//    return $(function() {
//        var $articles, $container, timeout;
//        $container = $("#ib-container1");
//        $articles = $container.children(".item");
//        timeout = void 0;
//        $articles.on("mouseenter", function(event) {
//            var $article;
//            $article = $(this);
//            clearTimeout(timeout);
//            return timeout = setTimeout(function() {
//                if ($article.hasClass("active")) {
//                    return false;
//                }
//                $(".title_wrapper").addClass("blur_back");
//                $(".content_menu_wrapper").addClass("blur_back");
//                $(".header_wraper").addClass("blur_back");
//                $(".main_banner").addClass("blur_back");
//                $(".novelty").addClass("blur_back");
//                $(".announcements_and_articles").addClass("blur_back");
//                $(".friendly_logo_wrapper").addClass("blur_back");
//                $(".info_block_wrapper").addClass("blur_back");
//                $(".footer_wrapper").addClass("blur_back");
//                return $articles.not($article.removeClass("blur_back").addClass("active")).removeClass("active").addClass("blur_back");
//            }, 250);
//        });
//        return $container.on("mouseleave", function(event) {
//            clearTimeout(timeout);
//            $articles.removeClass("active blur_back");
//            $(".title_wrapper").removeClass("blur_back");
//            $(".content_menu_wrapper").removeClass("blur_back");
//            $(".header_wraper").removeClass("blur_back");
//            $(".main_banner").removeClass("blur_back");
//            $(".novelty").removeClass("blur_back");
//            $(".announcements_and_articles").removeClass("blur_back");
//            $(".friendly_logo_wrapper").removeClass("blur_back");
//            $(".info_block_wrapper").removeClass("blur_back");
//            return $(".footer_wrapper").removeClass("blur_back");
//        });
//    });
//});
