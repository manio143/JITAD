jQuery.fn.extend({
	popup: function() {
		var defaults={text:'<p class="usr_popup_text">Prosimy o uzupełnienie swoich danych osobowych. W tym celu przejdź do <a href="/Konto/" class="usr_popup_link">Moje konto</a>.</p>',
			close:'<a class="usr_popup_close" href="#"><b>X</b></a>',
			parent:jQuery('body'),
			show_close:true,
			position:'bottom',
			cookie_name:'usr_data_fill',
			auto_accept:false,
			box_class:'',
			use_default_css:false,
			box_css:'usr_popup',
			inner_css:'usr_popup_inner',
			text_css:'usr_popup_text',
			close_css:'usr_popup_close',
			animation:'slide',
			time:500,
			test:false};
		var o = defaults;
		jQuery('#popup').remove();
		var box=jQuery('<div class="usr_popup" id="popup"><div class="usr_popup_inner">'+o.text+'</div></div>');
		if(o.show_close==true)
			box.find('.usr_popup_inner').append(o.close);
		if(readCookie(o.cookie_name)==null)
		{	
				o.parent.append(box);
		}; 
		box.find('a.usr_popup_close').click(function(e)
			{	e.preventDefault();
					createCookie(o.cookie_name,1,1);
					location.replace = "http://jitad2015.waw.pl/Konto/";
					box.fadeOut(o.time);
		});
        box.find('a.usr_popup_link').click(function(e)
			{	e.preventDefault();
					createCookie(o.cookie_name,1,1);
					box.fadeOut(o.time);
		});
		function createCookie(name,value,days)
			{	if(days)
					{var date=new Date();date.setTime(date.getTime()+(days*24*60*60*1000));
					var expires=';expires='+date.toGMTString();
					}
				else var expires="";
				document.cookie=name+"="+value+expires+';path=/';
			};
		function readCookie(name)
			{	var nameEQ=name+"=";
				var cookies=document.cookie.split(';');
				var cookieMap = {};
				for (var i = 0; i < cookies.length; ++i) {
				  cookies[i].replace(/^\s*([^=]+)=(.*)$/, function(_, name, val) {
					cookieMap[name] = unescape(val);
				  });
				}
				return cookieMap[name] == '' ? null : cookieMap[name];
			}
		}
	});
