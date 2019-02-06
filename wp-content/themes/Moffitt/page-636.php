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
			<article>
				<div style="margin: 0 auto; padding: 2rem;">
					<p style="padding-bottom: 2rem; font-size: .7rem; color: #ccc; text-transform: uppercase;">Font Pairing 1:</p>
					<h1 style="margin: 0; padding: 0; line-height: 1.3; font-family: <?php the_field('header_font_1'); ?>; color: <?php the_field('header_font_color_1'); ?>; font-weight: <?php the_field('header_font_weight_1'); ?>;"><?php the_field('header_text_1'); ?></h1>
					<p style="font-family: <?php the_field('body_font_1'); ?>; font-weight: <?php the_field('body_font_weight_1'); ?>;"><?php the_field('body_text_1'); ?></p>
				</div>
				<div style="margin: 0 auto; padding: 2rem;">
					<p style="padding-bottom: 2rem; font-size: .7rem; color: #ccc; text-transform: uppercase;">Font Pairing 2:</p>
					<h1 style="margin: 0; padding: 0; line-height: 1.3; font-family: <?php the_field('header_font_2'); ?>; color: <?php the_field('header_font_color_2'); ?>; font-weight: <?php the_field('header_font_weight_2'); ?>;"><?php the_field('header_text_2'); ?></h1>
					<p style="font-family: <?php the_field('body_font_2'); ?>; font-weight: <?php the_field('body_font_weight_2'); ?>;"><?php the_field('body_text_2'); ?></p>
				</div>
			</article>

		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- .wrap -->

<?php get_footer();
