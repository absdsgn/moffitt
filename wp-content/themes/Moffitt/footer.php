<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */

?>

		</div><!-- #content -->
		<div class="moffitt-footer-contact-bar-wrapper">
			<div class="moffitt-footer-contact-bar">
				<p id="footer-contact-bar">GET IN TOUCH WITH US TODAY AT <a href="tel:1-828-651-8550">(828) 651-8550</a></p>
			</div>
			<script type="text/javascript">
				if (jQuery(window).width() < 440) {
					if (jQuery('body').hasClass("home")) {
						jQuery('.moffitt-entry-content').attr('style', 'padding: 0;');
					} else {
					};
				} else {
				};
			</script>
			<script type="text/javascript">
				function FooterContactBar() {
					if (jQuery(window).width() < 600) {
						jQuery('#footer-contact-bar').html("<p>CALL US <a href='tel:1-828-651-8550'>(828) 651-8550</a></p>");
					} else {
						jQuery('#footer-contact-bar').html("<p>GET IN TOUCH WITH US TODAY AT <a href='tel:1-828-651-8550'>(828) 651-8550</a></p>");
					};
				};
				jQuery(FooterContactBar());
				jQuery(window).on('resize', FooterContactBar);
			</script>
		</div>
		<footer id="colophon" class="moffitt-site-footer" role="contentinfo">
			<div class="moffitt-footer-wrapper">
				<div class="moffitt-footer-content">
					<p>STAY CONNECTED</p>
					<p>Get the latest news, insights, and opportunities.</p>
					<a href="http://linkedin.com/" class="moffitt-footer-link">Follow us on LinkedIn</a>
				</div>
				<div class="moffitt-footer-content">
					<p>NAVIGATION</p>
					<a href="#" class="moffitt-footer-link">Home</a>
					<a href="#" class="moffitt-footer-link">About Us</a>
					<a href="#" class="moffitt-footer-link">Services</a>
					<a href="#" class="moffitt-footer-link">Our Clients</a>
					<a href="#" class="moffitt-footer-link">Candidates</a>
					<a href="#" class="moffitt-footer-link">Contact Us</a>
					<a href="#" class="moffitt-footer-link">Privacy Policy</a>
				</div>
				<div class="moffitt-footer-content">
					<p>CONTACT</p>
					<a class="moffitt-footer-link" href="tel:1-828-651-8550">(828) 651-8550</a>
					<a href="mailto:info@emoffitt.com" class="moffitt-footer-link">info@emoffitt.com</a>
					<br><br>
					<p>Moffitt Intl, Inc.</p>
					<p>3182 Sweeten Creek Rd.</p>
					<p>Asheville, NC 28803</p>
				</div>
			</div>
			<div class="moffitt-footer-bottom">
				<div class="moffitt-footer-copyright">
					<p>&copy <?php echo date("Y");?> Moffitt International, Inc. All Rights Reserved.</p>
				</div>
			</div>
				<?php /*
				get_template_part( 'template-parts/footer/footer', 'widgets' );

				if ( has_nav_menu( 'social' ) ) : ?>
					<nav class="social-navigation" role="navigation" aria-label="<?php esc_attr_e( 'Footer Social Links Menu', 'twentyseventeen' ); ?>">
						<?php
							wp_nav_menu( array(
								'theme_location' => 'social',
								'menu_class'     => 'social-links-menu',
								'depth'          => 1,
								'link_before'    => '<span class="screen-reader-text">',
								'link_after'     => '</span>' . twentyseventeen_get_svg( array( 'icon' => 'chain' ) ),
							) );
						?>
					</nav><!-- .social-navigation -->
				<?php endif;

				get_template_part( 'template-parts/footer/site', 'info' );
				*/ ?>
			</div><!-- .wrap -->
		</footer><!-- #colophon -->
	</div><!-- .site-content-contain -->
</div><!-- #page -->
<?php wp_footer(); ?>

</body>
</html>
