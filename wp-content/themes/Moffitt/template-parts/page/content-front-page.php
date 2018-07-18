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
					<div class="moffitt-secondary-callout-wrapper">
						
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
