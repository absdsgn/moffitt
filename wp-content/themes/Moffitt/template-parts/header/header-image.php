<?php
/**
 * Displays header media
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?>
<div class="custom-header">
	<div class="header-cta">
		<h1>
			<?php the_field('cta_header'); ?>
		</h1>
		<h2>
			<?php the_field('cta_text'); ?>
		</h2>
		<a href="<?php the_field('cta_url') ?>" class="header-cta-button">
			<?php the_field('cta_button_text'); ?>
		</a>
	</div>
	<div class="custom-header-media">
		<?php the_custom_header_markup(); ?>
	</div>

	<?php /* get_template_part( 'template-parts/header/site', 'branding' ); */ ?>
	<div class="header-background-overlay" style="position: absolute; left: 0; top: 0; background: rgba(0, 0, 0, .35); width: 100%; height: 100%;">
	</div>
</div><!-- .custom-header -->
