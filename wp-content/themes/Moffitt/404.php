<?php
/**
 * The template for displaying 404 pages (not found)
 *
 * @link https://codex.wordpress.org/Creating_an_Error_404_Page
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
			<div class="moffitt-entry-header-background">
				<div class="moffitt-entry-header-wrapper">
					<header class="moffitt-entry-header">
						<h1 class="moffitt-entry-title">
							Our apologies
						</h1>
						<h2 class="moffitt-entry-subtitle">
							That page couldn't be found. Please try again or contact us.
						</h2>
						<?php /* twentyseventeen_edit_link( get_the_ID() ); */ ?>
					</header><!-- .entry-header -->
				</div>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer();
