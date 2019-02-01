<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="moffitt-entry-header-background" style="background-color: <?php the_field('header_background_color'); ?>;">
		<div class="moffitt-entry-header-wrapper">
			<a href="mailto:info@emoffitt.com?subject=New Resume Submission" class="header-cta-button">Submit a Resume</a>
			<header class="moffitt-entry-header">
				<h1 class="moffitt-entry-title" style="color: <?php the_field('title_color'); ?>;">
					<?php the_title(); ?>
				</h1>
				<h2 class="moffitt-entry-subtitle" style="color: <?php the_field('subtitle_color'); ?>;">
					<?php the_field('subtitle'); ?>
				</h2>
				<?php /* twentyseventeen_edit_link( get_the_ID() ); */ ?>
			</header><!-- .entry-header -->
		</div>
	</div>
	<div class="moffitt-entry-content">
		<?php
			if ( get_field('two_column') == 'yes' ) { ?>
			<div class="moffitt-two-column-wrapper">
				<div class="moffitt-two-column">
					<?php the_field('column_1'); ?>
				</div>
				<div class="moffitt-two-column">
					<?php the_field('column_2'); ?>
				</div>
			</div>

				<?php the_content(); ?>

		<?php } else {

			the_content();

		};

			wp_link_pages( array(
				'before' => '<div class="page-links">' . __( 'Pages:', 'twentyseventeen' ),
				'after'  => '</div>',
			) );
		?>
	</div><!-- .entry-content -->
</article><!-- #post-## -->
