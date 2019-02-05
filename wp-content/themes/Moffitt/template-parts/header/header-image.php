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
	<div class="header-cta-wrap">
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
	</div>
	<?php $headerImage = get_header_image();?>
	<div class="header-background-image" style="background-image: url('<?php echo $headerImage ?>');"></div>
	<div class="header-scroll-icon"><i class="fas fa-chevron-down"></i></div>
	<div class="header-background-overlay" style="position: absolute; left: 0; top: 0; background: rgba(0, 0, 0, .35); width: 100%; height: 100%;">
	</div>
</div><!-- .custom-header -->
