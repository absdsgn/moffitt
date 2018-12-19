<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

get_header(); ?>

	<?php if ( is_home() && ! is_front_page() ) : ?>
	<?php else : ?>

	<?php endif; ?>

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
									<?php the_field('subtitle', get_option('page_for_posts')); ?>
								</h2>
								<?php /* twentyseventeen_edit_link( get_the_ID() ); */ ?>
							</header><!-- .entry-header -->
						</div>
					</div>
					<div class="moffitt-post-wrapper">

			<?php
			if ( have_posts() ) :

				/* Start the Loop */
				while ( have_posts() ) : the_post();

					/*
					 * Include the Post-Format-specific template for the content.
					 * If you want to override this in a child theme, then include a file
					 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
					 */
					get_template_part( 'template-parts/post/content', '' );

				endwhile;

				the_posts_pagination( array(
					'prev_text' => twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous page', 'twentyseventeen' ) . '</span>',
					'next_text' => '<span class="screen-reader-text">' . __( 'Next page', 'twentyseventeen' ) . '</span>' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ),
					'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyseventeen' ) . ' </span>',
				) );

			else :

				get_template_part( 'template-parts/post/content', 'none' );

			endif;
			?>
		</div> <!-- #post wrapper -->
		</article><!-- #post-## -->
		</main><!-- #main -->
	</div><!-- #primary -->
	<?php get_sidebar(); ?>
</div><!-- .wrap -->

<?php get_footer();
