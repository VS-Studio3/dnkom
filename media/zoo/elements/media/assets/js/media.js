/* Copyright (C) YOOtheme GmbH, http://www.gnu.org/licenses/gpl.html GNU/GPL */

(function(t){var i=function(){};t.extend(i.prototype,{name:"ElementMedia",initialize:function(t){var i=this;this.file_row=t.find("input:text.file").parent();this.file_button=t.find(".trigger .file");this.url_row=t.find("input:text.url").parent();this.url_button=t.find(".trigger .url");this.url_row.css("margin-top","0");this.file_button.bind("click",function(){i.file_row.prependTo(t);i.url_row.detach();i.file_button.hide();i.url_button.show()});this.url_button.bind("click",function(){i.file_row.detach();i.url_row.prependTo(t);i.file_button.show();i.url_button.hide()});t.find("input:text.file").val()?this.file_button.trigger("click"):this.url_button.trigger("click")}});t.fn[i.prototype.name]=function(){var e=arguments;var n=e[0]?e[0]:null;return this.each(function(){var r=t(this);if(i.prototype[n]&&r.data(i.prototype.name)&&n!="initialize"){r.data(i.prototype.name)[n].apply(r.data(i.prototype.name),Array.prototype.slice.call(e,1))}else if(!n||t.isPlainObject(n)){var o=new i;if(i.prototype["initialize"]){o.initialize.apply(o,t.merge([r],e))}r.data(i.prototype.name,o)}else{t.error("Method "+n+" does not exist on jQuery."+i.name)}})}})(jQuery);