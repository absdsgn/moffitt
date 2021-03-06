<?php
/**
 * Template part for displaying posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>


<?php
	if ( is_single() )	{ ?>
		<div class="moffitt-post-wrapper">
	<?php } else { ?>
		<div class="moffitt-secondary-callout">
<?php	}; ?>
		<?php if ( '' !== get_the_post_thumbnail() && ! is_single() ) : ?>
			<a href="<?php the_permalink(); ?>">
				<div class="moffitt-callout-image-square" style="background-image: url('<?php the_post_thumbnail_url(); ?>')"></div>
			</a>
		<?php endif; ?>
		<div class="moffitt-post-entry-header">
			<?php
			if ( is_single() ) {
				the_title( '<h3>', '</h3>' );
			} else {
				the_title( '<h3><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h3>' );
			}
			if ( 'post' === get_post_type() ) {
				echo '<div class="entry-meta">';
					if ( is_single() ) {
						twentyseventeen_posted_on();
					} else {
						echo twentyseventeen_time_link();
						twentyseventeen_edit_link();
					};
				echo '</div><!-- .entry-meta -->';
			};
			?>
		</div><!-- .entry-header -->

		<div class="entry-content">
			<?php
			if ( is_single() ) {
			/* translators: %s: Name of current post */
			the_content( sprintf(
				__( 'Read More<span class="screen-reader-text"> "%s"</span>', 'twentyseventeen' ),
				get_the_title()
			) );
		} else {
			/* translators: %s: Name of current post */
			the_excerpt( sprintf(
				__( 'Read More<span class="screen-reader-text"> "%s"</span>', 'twentyseventeen' ),
				get_the_title()
			) );		}

			wp_link_pages( array(
				'before'      => '<div class="page-links">' . __( 'Pages:', 'twentyseventeen' ),
				'after'       => '</div>',
				'link_before' => '<span class="page-number">',
				'link_after'  => '</span>',
			) );
			?>
		</div><!-- .entry-content -->
	</div>

	<?php
	if ( is_single() ) {
		// twentyseventeen_entry_footer();
	}
	?>
