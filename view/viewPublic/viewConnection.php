<?php 
	$title = 'Connexion';
	ob_start();
?>
	</header>

	<section class="section_connection">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<h1>Se connecter à OneToDo</h1>
					<p>ou <a href="inscription">créer un compte</a></p>
					<form action="processConnexion" method="POST">
						<div class="form-group">
							<label for="login">Nom d'utilisateur <span class="text-muted">(ou email)</span></label>
							<input id="login" type="text" class="form-control" name="login" required>
						</div>
						<div class="form-group">
							<label for="pass">Mot de passe</label>
							<input id="pass" type="password" class="form-control" name="password" required>
							<small><a href="mot_de_passe_oublie">Mot de passe oublié ?</a></small>
						</div>
						<div class="form-group">
							<div class="form-check">
							  	<label class="form-check-label">
							    	<input type="checkbox" name="remember" class="form-check-input">
							    	Se souvenir de moi
							  	</label>
							</div>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg btn-block">Connexion</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>


<?php 
	$content = ob_get_clean();
	require('./view/template/templatePublic.php');
?>