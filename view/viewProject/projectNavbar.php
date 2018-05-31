<?php 
	$link = explode('/', $_GET['url']);
?>

<nav class="navbar navbar-expand-lg navbar-dark fixed-top fixed-top-2" style="background-color: <?= $project->color() ?>;">
	<a class="navbar-brand" href="#">
		<?= $project->name() ?>
	</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbarProject">
	    <span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbarProject">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link <?php if($link[2] == 'tâches'){echo 'active';} ?>" href="<?= \App\model\App::getDomainPath(); ?>/projet/<?= $project->link() ?>/tâches">
					Todolist
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link <?php if($link[2] == 'wiki'){echo 'active';} ?>" href="<?= \App\model\App::getDomainPath(); ?>/projet/<?= $project->link() ?>/wiki">
					Wiki
				</a>
			</li>
			<li class="nav-item">
				<a class="nav-link <?php if($link[2] == 'utilisateurs'){echo 'active';} ?>" href="<?= \App\model\App::getDomainPath(); ?>/projet/<?= $project->link() ?>/utilisateurs">
					Utilisateurs
				</a>
			</li>
			<?php if($access->access <= 1): ?>
			<li class="nav-item">
				<a class="nav-link <?php if($link[2] == 'parametres'){echo 'active';} ?>" href="<?= \App\model\App::getDomainPath(); ?>/projet/<?= $project->link() ?>/parametres">
					Paramètres
				</a>
			</li>
			<?php endif; ?>
		</ul>
	</div>

</nav>
