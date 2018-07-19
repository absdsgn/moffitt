<?php
/**
 * Displays footer site info
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?>
<div class="site-info">
	<?php
	if ( function_exists( 'the_privacy_policy_link' ) ) {
		the_privacy_policy_link( '', '<span role="separator" aria-hidden="true"></span>' );
	}
	?>
	<!-- <div class="moffitt-footer-contact-bar-wrapper">
		<div class="moffitt-footer-contact-bar">
			<p>GET IN TOUCH WITH US TODAY AT <a href="tel:1-828-651-8550">(828) 651-8550</a></p>
		</div>
	</div> -->
</div><!-- .site-info -->
