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
			<?php echo get_post_meta($post->ID, 'CTA Header', true ); ?>
		</h1>
		<h2>
			<?php echo get_post_meta($post->ID, 'CTA Text', true ); ?>
		</h2>
		<a href="<?php echo get_post_meta($post->ID, 'CTA URL', true ); ?>" class="header-cta-button">
			<?php echo get_post_meta($post->ID, 'CTA Button', true ); ?>
		</a>
	</div>
	<div class="custom-header-media">
		<?php the_custom_header_markup(); ?>
	</div>

	<?php get_template_part( 'template-parts/header/site', 'branding' ); ?>
	<div class="header-background-overlay" style="position: absolute; left: 0; top: 0; background: rgba(0, 0, 0, .35); width: 100%; height: 100%;">
	</div>
</div><!-- .custom-header -->
