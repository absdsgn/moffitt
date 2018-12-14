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
			the_content();

			wp_link_pages( array(
				'before' => '<div class="page-links">' . __( 'Pages:', 'twentyseventeen' ),
				'after'  => '</div>',
			) );
		?>
	</div><!-- .entry-content -->
</article><!-- #post-## -->
