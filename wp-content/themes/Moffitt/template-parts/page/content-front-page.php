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
						<a class="moffitt-body-button" href="<?php the_field('featured_article_url'); ?>"><?php the_field('featured_article_button_text'); ?></a>
					</div>
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
