// Script qui gère le compteur de caractère de la description de création de projet.
$(document).ready(function()
{
	var max = 180;
	$('#descriptionProject').keypress(function(event) 
	{
		if (event.which < 0x20) {
			if ($(this).val().length - 1 == -1) 
			{
				$('.charactersCount').fadeIn('fast').text('Il vous reste 180 caractères');
			} 
			else
			{
				$('.charactersCount').fadeIn('fast').text('Il vous reste ' + (max - ($(this).val().length - 1))  + ' caractères');
			}
			return;
		}

		if ($(this).val().length < max) 
		{
			$('.charactersCount').fadeIn('fast').text('Il vous reste ' + (max - ($(this).val().length + 1)) + ' caractères');
			$('.charactersCountFillIn').addClass('hidden');
		}
	});
});