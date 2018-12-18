<?php
/**
 * The template for displaying all pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

<div class="wrap">
	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
				<div class="moffitt-entry-header-background" style="background-color: <?php the_field('header_background_color', get_option('page_for_posts')); ?>;">
					<div class="moffitt-entry-header-wrapper">
						<header class="moffitt-entry-header">
							<?php
								if ( is_search() ) {
									echo "<h1 class='moffitt-entry-title'>Search Results</h1>";
								} else {
									single_post_title( '<h1 class="moffitt-entry-title">', '</h1>' );
								};
							?>
							<h2 class="moffitt-entry-subtitle">
								<?php the_field('subtitle'); ?>
							</h2>
							<?php /* twentyseventeen_edit_link( get_the_ID() ); */ ?>
						</header><!-- .entry-header -->
					</div>
				</div>
				<div class="moffitt-team-wrapper">

			<?php

			$args = array (
				'tag' => 'staff',
				'orderby' => 'title',
				'order' => 'ASC'
			);

			$staffQuery = new WP_Query( $args );

			if ( $staffQuery->have_posts() ) :

				/* Start the Loop */
				while ( $staffQuery->have_posts() ) : $staffQuery->the_post();

					/*
					 * Include the Post-Format-specific template for the content.
					 * If you want to override this in a child theme, then include a file
					 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
					 */
					get_template_part( 'template-parts/post/content', 'staff' );

				endwhile;

				the_posts_pagination( array(
					'prev_text' => twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous page', 'twentyseventeen' ) . '</span>',
					'next_text' => '<span class="screen-reader-text">' . __( 'Next page', 'twentyseventeen' ) . '</span>' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ),
					'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyseventeen' ) . ' </span>',
				) );

			else :

				get_template_part( 'template-parts/post/content', 'none' );

			endif;

			wp_reset_postdata();

			?>

				</div>
			</article>

		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer();
