jQuery(function(){

		jQuery('.calls a').fancybox();

        /**SLIDER**/
        if(jQuery('.nivo-directionNav') != null){
            var sliderShow = function(){
                jQuery('.nivo-directionNav').show();
            }
            sliderShow();
            jQuery('.nivo-slider-wrapper').hover(function(){
                sliderShow();
            });
        }

        /**MAIN MENU**/
        jQuery('#top_menu .menu > li:last-child').css({'background' : 'none', 'background-color' : 'white',
            'border-top-right-radius' : '5px', 'border-bottom-right-radius' : '5px'});
		
		jQuery('#top_menu .menu > li.parent').each(function(){
			if(jQuery(this).hasClass('active')){
				jQuery('.submenu_container').html(jQuery(this).find('ul').clone());
			}	
		});
			
		
        jQuery('#top_menu .menu > li > span').click(function(){
            jQuery('.submenu_container').html(jQuery(this).next('ul').clone());
            jQuery('#top_menu .menu > li').removeClass('active_menu_link');
			jQuery('#top_menu .menu > li').removeClass('active');
            jQuery(this).parent().addClass('active_menu_link');
            return false;
        });

        /*function msieversion() {
            var ua = window.navigator.userAgent;
            var msie = ua.indexOf("MSIE ");
            if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) return true;
            else return false;
        }*/

       
    });