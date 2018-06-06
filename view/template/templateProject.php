<?php 
	require_once('initRessources.php');
	$avatar      = new \App\model\Avatar($userData->email(), 33);
	$projectLink = explode("/", $_GET['url']);
?>

<!DOCTYPE html>
<html lang="fr">

<head>
   	<?php 
   		echo '<title>' . $title . '</title>';
   		echo $meta;
		echo $linkBootstrapCSS; 
		echo $linkGoogleFont;
		echo $linkCustomScrollbar;
		echo $stylesheet;
		echo $favicon;
		echo $scriptTinymce;
		echo $linkGoogleFont;
	?>


</head>

<body>

	<?php require('navbar.php'); ?>

	<div class="wrapper">
		<?php require('sidebar.php'); ?>
	    <section id="content" class="project">
	       <?= $content ?>
	    </section>
	</div>



	<?php
		include('alerts.php');
		// Call to CDN
		echo $cdnJQuery;
	?>
		<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<!-- Resolve le conflit entre les tooltips bootstrap et jquery UI -->
		<script>$.widget.bridge('uitooltip', $.ui.tooltip);</script>
	<?php
		echo $cdnPopper;
		echo $cdnBoostrap;
		echo $cdnCustomScrollbar;
		echo $cdnFontAwesomeJs;

		// Call to JavaScript scripts
		echo $scriptAlert;
		echo $scriptGlobal;
		echo $scriptSidebar;
		echo $scriptConfirm;
		echo $scriptInputChecking;
		echo $scriptTooltip;
		echo $scriptTextarea;
		echo $scriptProjectDescription;
	?>
	

	<script>

		// Script permttant l'accès aux inputs de paramètres du projet.
		$('.button-edit-project-disabled').click(function() 
		{
			$('#descriptionProject, #colorProject, #statusProject, #nameProject, #openProject').removeAttr('disabled');
			$('.button-edit-project').show();
			$(this).hide();
		});

		// Script permettant de passer du bloc de lecture au bloc d'édition du wiki.
		$('.button-edit-wiki').click(function() 
		{
			$('#read-wiki-block').hide();
			$('#edit-wiki-block').fadeIn('slow');
			$(this).hide();
		});
		$('.button-cancel-edit-wiki').click(function()
		{
			$('#edit-wiki-block').hide();
			$('#read-wiki-block').fadeIn('slow');
			$('.button-edit-wiki').fadeIn('slow');
		});

		// Script permettant l'accès aux inputs de modification des status (page utilisateur).
		$('.button-edit-user-status').click(function()
		{
			$(this).hide();
			$('.text-edit-user-status').fadeIn('slow');
			$('.btn-remove-user, #select-change-access').removeAttr('disabled');
		});


		//Script permettant de déployer le jumbotron contenant l'ajout d'un utilisateur au projet (page utilisateur).
		$('.button-add-user').click(function()
		{
			$(this).hide();
			$('.title-add-user').fadeIn('slow');
			$('.block-add-user').slideToggle();
		});

		// Script permettant de faire apparaitre le select si le statut est ouvert.
		$('#statusProject').change(function() {
			var value = $("#statusProject option:selected").val();
			if (value == 1) {
				$('.block-open-project').slideDown();
				$('#openProject').attr('required', 'required');
			}
			else
			{
				$('.block-open-project').slideUp();
				$('#openProject').removeAttr('required');
			}
		});


		// Dévoile le bloc permettant la création d'une Todolist
		$('.button_create_todolist').click(function() 
		{
			$('.createNewTodolist').slideToggle();

			if ($('.tileName').text() == 'Nouvelle todolist') 
			{
				$(".tileName").fadeOut(function() {
  					$(this).text("Todolist")
				}).fadeIn();
				$('.tileNameBis').slideToggle();
			}
			else
			{
				$('.tileNameBis').slideToggle();
				$(".tileName").fadeOut(function() {
  					$(this).text("Nouvelle todolist")
				}).fadeIn();
			}
		});

		// Gère le drag & drop des todolists
		$(function()
		{
		    $(".todolistCollapse").sortable({
				axis : 'y',
				containment : "parent",
				revert: true,
				scrollSensitivity: 5,
				scrollSpeed: 10,

				update : function(event, ui){

					var changedList = this.id;
					var order       = $(this).sortable('toArray');
					var positions   = order.join(';');
					var id = $(this).attr("id").split('-');

    				$('#serializedOrder-' + id[1]).val(positions);
    				$('#formOrder-' + id[1]).submit();
				}
		    });
			$(".todolistCollapse").disableSelection();
		});

	$(function()
	{
		$('.button_add_task').click(function(e) {
			e.preventDefault();
			var id = $(this).attr("id").split('-');
			$('#block_add_task-' + id[1]).slideToggle();
		});
		$('.button_cancel_add_task').click(function(e){
			e.preventDefault();
			var id = $(this).attr("id").split('-');
			$('#block_add_task-' + id[1]).slideToggle();
		});
	});

	</script>

</body>
</html>