/* Copyright (C) YOOtheme GmbH, http://www.gnu.org/licenses/gpl.html GNU/GPL */

(function(t){var e=function(){};e.prototype=t.extend(e.prototype,{name:"BrowseItems",initialize:function(e){this.timer=null;this.delay=1500;e.find("td.priority").each(function(){var i=t(this).find("input.value:first");i.bind("change",function(){if(this.timer)clearTimeout(this.timer);this.timer=setTimeout(function(){var i={};var a=e.find("table.list:first");t.each(e.serializeArray(),function(t,e){i[e.name]=e.value});a.addClass("loader");t.ajax({url:e.attr("action"),type:"post",datatype:"json",data:t.extend(i,{task:"savepriority",format:"raw"}),success:function(e){a.removeClass("loader");t.Message(e,true)}})},this.delay)});t(this).find("span.plus:first, span.minus:first").bind("click",function(){var e=t(this).is(".plus")?1:-1;i.val(i.val().toInt()+e).trigger("change")})})}});t.fn[e.prototype.name]=function(){var i=arguments;var a=i[0]?i[0]:null;return this.each(function(){var n=t(this);if(e.prototype[a]&&n.data(e.prototype.name)&&a!="initialize"){n.data(e.prototype.name)[a].apply(n.data(e.prototype.name),Array.prototype.slice.call(i,1))}else if(!a||t.isPlainObject(a)){var r=new e;if(e.prototype["initialize"]){r.initialize.apply(r,t.merge([n],i))}n.data(e.prototype.name,r)}else{t.error("Method "+a+" does not exist on jQuery."+e.name)}})}})(jQuery);(function(t){var e=function(){};e.prototype=t.extend(e.prototype,{name:"EditItem",initialize:function(e){t.each(["apply","save","sav-new"],function(i,a){t("#toolbar-"+a+" a, #toolbar-"+a+" button").bind("validate.adminForm",function(t){if(e.find('input[name="name"]').val()==""){e.find("span.message-name").css("display","block");t.preventDefault()}})});var i=t("#categories"),a=t("#paramsprimary_category");i.bind("change",function(){var e=t(this).val()?t(this).val():[],i=a.val();if(t.inArray(i,e)==-1)a.val(e.length?e.shift():"");a.trigger("liszt:updated")});a.bind("change",function(){var e=i.val()?i.val():[],a=t(this).val();if(t.inArray(a,e)==-1){e.push(a);i.val(e);i.trigger("liszt:updated")}});e.find("div.element").each(function(){t(this).delegate("div.more-options div.trigger div.button","click",function(){var e=t(this).closest("div.more-options");var i="show-"+t(this).attr("class").split(" ").shift();e.hasClass(i)?e.attr("class","more-options"):e.attr("class","more-options "+i)}).find("div.row > input:text").placeholder()})}});t.fn[e.prototype.name]=function(){var i=arguments;var a=i[0]?i[0]:null;return this.each(function(){var n=t(this);if(e.prototype[a]&&n.data(e.prototype.name)&&a!="initialize"){n.data(e.prototype.name)[a].apply(n.data(e.prototype.name),Array.prototype.slice.call(i,1))}else if(!a||t.isPlainObject(a)){var r=new e;if(e.prototype["initialize"]){r.initialize.apply(r,t.merge([n],i))}n.data(e.prototype.name,r)}else{t.error("Method "+a+" does not exist on jQuery."+e.name)}})}})(jQuery);