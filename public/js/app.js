$('select.select--fancy').each(function() {
	var $elem = $(this);
	var data = $elem.data();

	var config = {
		theme: 'app',
		templateSelection: function(selection) {
			var text = selection.text || selection.id;

			if(data.icon) {
				return $.parseHTML(
					'<span class="' + data.icon + '"></span> ' + 
					text
					);
			}

			return text;
		},
	}

	$(this).select2(config);
})
;
//# sourceMappingURL=app.js.map