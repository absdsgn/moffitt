<?php
/**
 * Displays content for front page
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?>
<article id="post-<?php the_ID(); ?>" <?php post_class( 'twentyseventeen-panel ' ); ?> >

	<?php if ( has_post_thumbnail() ) :
		$thumbnail = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'twentyseventeen-featured-image' );

		// Calculate aspect ratio: h / w * 100%.
		$ratio = $thumbnail[2] / $thumbnail[1] * 100;
		?>

		<div class="panel-image" style="background-image: url(<?php echo esc_url( $thumbnail[0] ); ?>);">
			<div class="panel-image-prop" style="padding-top: <?php echo esc_attr( $ratio ); ?>%"></div>
		</div><!-- .panel-image -->

	<?php endif; ?>

	<div class="panel-content">
		<div class="wrap">
			<!-- <header class="entry-header">
				<?php /* the_title( '<h2 class="entry-title">', '</h2>' ); ?>

				<?php twentyseventeen_edit_link( get_the_ID() ); */ ?>

			</header> .entry-header -->
			<?php
				$featured_image = get_field('featured_article_image');
				$about_image = get_field('about_us_image');
				$callout1_image = get_field('secondary_callout_1_image');
				$callout2_image = get_field('secondary_callout_2_image');
				$callout3_image = get_field('secondary_callout_3_image');
			?>
			<div class="moffitt-entry-content">
				<div class="moffitt-featured-article">
					<div class="moffitt-featured-article-image">
						<img src="<?php echo $featured_image['url']; ?>">
					</div>
					<div class="moffitt-featured-article-content">
						<h3>
							<?php the_field('featured_article_title'); ?>
						</h3>
						<p>
							<?php the_field('featured_article_intro'); ?>
						</p>
						<a class="moffitt-body-button" href="<?php the_field('featured_article_button_url'); ?>" style="color: <?php the_field('featured_article_button_color'); ?>;"><?php the_field('featured_article_button_text'); ?></a>
					</div>
				</div>
				<div class="moffitt-content">
					<div class="moffitt-callout-wrapper">
						<div class="moffitt-callout" style="background-color: <?php the_field('callout_1_background_color'); ?>;">
							<h3>
								<?php the_field('callout_1_title'); ?>
							</h3>
							<p>
								<?php the_field('callout_1_introduction'); ?>
							</p>
							<a class="moffitt-callout-button" href="<?php the_field('callout_1_button_url'); ?>"><?php the_field('callout_1_button_text'); ?></a>
						</div>
						<div class="moffitt-callout" style="background-color: <?php the_field('callout_2_background_color'); ?>;">
							<h3>
								<?php the_field('callout_2_title'); ?>
							</h3>
							<p>
								<?php the_field('callout_2_introduction'); ?>
							</p>
							<a class="moffitt-callout-button" href="<?php the_field('callout_2_button_url'); ?>;"><?php the_field('callout_2_button_text'); ?></a>
						</div>
					</div>
					<div class="moffitt-about-background-extend"></div>
					<div class="moffitt-about-background">
						<div class="moffitt-about-wrapper">
							<div class="moffitt-about-content">
								<h3>
									<?php the_field('about_us_title'); ?>
								</h3>
								<?php the_field('about_us_introduction'); ?>
								<a class="moffitt-about-button" href="<?php the_field('about_us_button_url') ?>"><?php the_field('about_us_button_text'); ?></a>
							</div>
							<div class="moffitt-about-image">
								<img src="<?php echo $about_image['url']; ?>">
							</div>
						</div>
					</div>
					<div class="moffitt-secondary-intro">
						<h3 style="text-align: center;">
							<?php the_field('secondary_callout_title'); ?>
						</h3>
						<p>
							<?php the_field('secondary_callout_introduction'); ?>
						</p>
					</div>
					<div class="moffitt-secondary-callout-wrapper">
						<!-- First Secondary Callout -->
						<div class="moffitt-secondary-callout">
							<div class="moffitt-callout-image-square" style="background: url(<?php echo $callout1_image['url']; ?>);"></div>
							<h3>
								<?php the_field('secondary_callout_1_title'); ?>
							</h3>
							<p>
								<?php the_field('secondary_callout_1_introduction'); ?>
							</p>
							<div class="moffitt-secondary-callout-button">
								<a class="moffitt-body-button" href="<?php the_field('secondary_callout_1_button_url') ?>"><?php the_field('secondary_callout_1_button_text'); ?></a>
							</div>
						</div>
						<!-- Second Secondary Callout -->
						<div class="moffitt-secondary-callout">
							<div class="moffitt-callout-image-square" style="background: url(<?php echo $callout2_image['url']; ?>);"></div>
							<h3>
								<?php the_field('secondary_callout_2_title'); ?>
							</h3>
							<p>
								<?php the_field('secondary_callout_2_introduction'); ?>
							</p>
							<div class="moffitt-secondary-callout-button">
								<a class="moffitt-body-button" href="<?php the_field('secondary_callout_2_button_url') ?>"><?php the_field('secondary_callout_2_button_text'); ?></a>
							</div>
						</div>
						<!-- Third Secondary Callout -->
						<div class="moffitt-secondary-callout">
							<div class="moffitt-callout-image-square" style="background: url(<?php echo $callout3_image['url']; ?>);"></div>
							<h3>
								<?php the_field('secondary_callout_3_title'); ?>
							</h3>
							<p>
								<?php the_field('secondary_callout_3_introduction'); ?>
							</p>
							<div class="moffitt-secondary-callout-button">
								<a class="moffitt-body-button" href="<?php the_field('secondary_callout_3_button_url') ?>"><?php the_field('secondary_callout_3_button_text'); ?></a>
							</div>
						</div>
					</div>
					<div class="moffitt-home-contact">
						<div id="moffitt-contact" class="moffitt-secondary-intro" style="padding-top: 0;">
							<h3 style="text-align: center;">
								<?php the_field('contact_form_title'); ?>
							</h3>
							<p>
								<?php the_field('contact_form_introduction'); ?>
							</p>
						</div>
						<?php echo do_shortcode("[ninja_form id=1]"); ?>
					</div>
				<?php
					/* translators: %s: Name of current post */
					// the_content( sprintf(
					// 	__( 'Continue reading<span class="screen-reader-text"> "%s"</span>', 'twentyseventeen' ),
					// 	get_the_title()
					// ) );
				?>
			</div><!-- .entry-content -->

		</div><!-- .wrap -->
	</div><!-- .panel-content -->

</article><!-- #post-## -->
