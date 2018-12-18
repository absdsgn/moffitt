<?php
/**
 * Template part for displaying posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>


<div class="moffitt-team-item">
	<div class="moffitt-team-image" style="background-image: url('<?php the_field('photo'); ?>')"></div>
	<div class="moffitt-team-info">
		<h4><?php the_title(); ?></h4>
		<h5><?php the_field('position'); ?></h5>
	</div>
	<div class="moffitt-team-modal-overlay"></div>
	<div class="moffitt-team-modal-wrapper">
		<div class="moffitt-team-modal-content">
			<h4><?php the_title(); ?></h4>
			<h5><?php the_field('position'); ?></h5>
			<h6><?php the_field('group'); ?></h6>
			<p><?php the_field('bio'); ?></p>
			<div class="moffitt-team-modal-print"><i class="fas fa-print"></i></div>
			<div class="moffitt-team-modal-close"><i class="fas fa-times"></i></div>
		</div>
	</div>
	<div class="moffitt-team-bio">
		<a class="moffitt-body-button" href="#">Read Bio</a>
	</div>
</div>
