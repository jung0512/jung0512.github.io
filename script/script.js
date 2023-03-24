jQuery(document).ready(function(){
    $(".main>li").mouseover(function(){
        $(this).find(".sub").stop().slideDown()
    })
    .mouseout(function(){
        $(this).find(".sub").stop().slideUp()
    })
})