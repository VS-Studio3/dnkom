/* Copyright (C) YOOtheme GmbH, http://www.gnu.org/licenses/gpl.html GNU/GPL */

jQuery(function(i){i(".field .global").each(function(){var e=i(this).children("input:checkbox:first"),n=i(this).children("div.input:first");n.find("input, select").each(function(){i(this).data("name",i(this).attr("name"))});e.bind("change",function(){if(e.is(":checked")){n.hide()}else{n.slideDown(200)}n.find("input, select").each(function(){i(this).attr("name",e.is(":checked")?"":i(this).data("name"))})}).trigger("change")})});