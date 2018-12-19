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
			<i class="fas fa-phone" style="color: #a0a0a0; font-size: .75rem; margin-right: .75rem;"></i><a href="mailto:<?php the_field('email'); ?>"><?php the_field('email'); ?></a><br>
			<i class="fas fa-envelope" style="color: #a0a0a0; font-size: .75rem; margin-right: .75rem;"></i><a href="tel:<?php the_field('phone');?>,<?php the_field('extension');?>"><?php the_field('phone');?>x<?php the_field('extension');?></a>
			<p><?php the_field('bio'); ?></p>
			<div class="moffitt-team-modal-print"><i class="fas fa-print"></i></div>
			<div class="moffitt-team-modal-close"><i class="fas fa-times"></i></div>
		</div>
	</div>
	<div class="moffitt-team-bio">
		<a class="moffitt-body-button" href="#">More Info</a>
	</div>
</div>
