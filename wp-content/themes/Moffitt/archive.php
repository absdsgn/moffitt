<?php
/**
 * The template for displaying archive pages
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

	<?php if ( have_posts() ) : ?>
		<div class="moffitt-entry-header-background" style="background-color: <?php the_field('header_background_color'); ?>;">
			<div class="moffitt-entry-header-wrapper">
				<header class="moffitt-entry-header">
					<h1 class="moffitt-entry-title" style="color: <?php the_field('title_color'); ?>;">
						<?php
						if ( is_category() ) :
							single_cat_title();
						endif;
						if ( is_author() ) :
							$author_name = get_the_author_meta( 'display_name' );
							echo 'Articles by ' .$author_name ;
						endif;
						?>
					</h1>
					<h2 class="moffitt-entry-subtitle" style="color: <?php the_field('subtitle_color'); ?>;">
						<?php the_archive_description(); ?>
					</h2>
				</header><!-- .entry-header -->
			</div>
		</div>

	<?php endif; ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">
			<div class="moffitt-post-wrapper">


		<?php
		if ( have_posts() ) : ?>
			<?php
			/* Start the Loop */
			while ( have_posts() ) : the_post();

				/*
				 * Include the Post-Format-specific template for the content.
				 * If you want to override this in a child theme, then include a file
				 * called content-___.php (where ___ is the Post Format name) and that will be used instead.
				 */
				get_template_part( 'template-parts/post/content', get_post_format() );

			endwhile;

			the_posts_pagination( array(
				'prev_text' => twentyseventeen_get_svg( array( 'icon' => 'arrow-left' ) ) . '<span class="screen-reader-text">' . __( 'Previous page', 'twentyseventeen' ) . '</span>',
				'next_text' => '<span class="screen-reader-text">' . __( 'Next page', 'twentyseventeen' ) . '</span>' . twentyseventeen_get_svg( array( 'icon' => 'arrow-right' ) ),
				'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'twentyseventeen' ) . ' </span>',
			) );

		else :

			get_template_part( 'template-parts/post/content', 'none' );

		endif; ?>

		</main><!-- #main -->
	</div><!-- #primary -->
	<?php get_sidebar(); ?>
</div><!-- .wrap -->

<?php get_footer();
