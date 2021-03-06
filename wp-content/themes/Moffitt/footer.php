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
				function HomeBodyPadding() {
					if (jQuery(window).width() < 440) {
						if (jQuery('body').hasClass("home")) {
							jQuery('.moffitt-entry-content').attr('style', 'padding: 0;');
						} else {
						};
					} else {
					};
				}

				function FooterContactBar() {
					if (jQuery(window).width() < 600) {
						jQuery('#footer-contact-bar').html("<p>CALL US <a href='tel:1-828-651-8550'>(828) 651-8550</a></p>");
					} else {
						jQuery('#footer-contact-bar').html("<p>GET IN TOUCH WITH US TODAY AT <a href='tel:1-828-651-8550'>(828) 651-8550</a></p>");
					};
				};

				jQuery(document).ready( function() {
					HomeBodyPadding();
					FooterContactBar();
				});

				jQuery(window).on('resize', function() {
					HomeBodyPadding();
					FooterContactBar();
				});
			</script>
		</div>
		<footer id="colophon" class="moffitt-site-footer" role="contentinfo">
			<div class="moffitt-footer-wrapper">
				<div class="moffitt-footer-content">
					<p>STAY CONNECTED</p>
					<p>Follow us to get the latest news, insights, and opportunities.</p>
					<a href="http://linkedin.com/" target="_blank" class="moffitt-footer-link-fa"><i class="fab fa-linkedin-in"></i></a>
					<a href="http://facebook.com/emoffittint" target="_blank" class="moffitt-footer-link-fa"><i class="fab fa-facebook-f"></i></a>
					<a href="http://twitter.com/emoffittint" target="_blank" class="moffitt-footer-link-fa"><i class="fab fa-twitter"></i></a>
				</div>
				<div class="moffitt-footer-content">
					<p>NAVIGATION</p>
					<a href="<?php echo get_home_url(); ?>" class="moffitt-footer-link">Home</a>
					<a href="<?php echo get_home_url(); ?>/about-us" class="moffitt-footer-link">About Us</a>
					<a href="<?php echo get_home_url(); ?>/services" class="moffitt-footer-link">Services</a>
					<a href="<?php echo get_home_url(); ?>/clients" class="moffitt-footer-link">Our Clients</a>
					<a href="<?php echo get_home_url(); ?>/candidates" class="moffitt-footer-link">Candidates</a>
					<a href="<?php echo get_home_url(); ?>/contact" class="moffitt-footer-link">Contact Us</a>
					<a href="<?php echo get_home_url(); ?>/privacy-cookies-policy" class="moffitt-footer-link">Privacy Policy</a>
					<a href="<?php echo get_home_url(); ?>/terms-conditions" class="moffitt-footer-link">Terms & Conditions</a>
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

<script type="text/javascript">
// Script to adjust the margin-top of the site content for the fixed nav
	function customHeaderResize() {
		// Get window inner heights, header height, and calculate new header height
		var OGHeight			= $(window).innerHeight();
		var MenuHeight 			= $('.navigation-top').outerHeight();
		var ArticleHeight		= $('.moffitt-featured-article').outerHeight();
		var ComboHeight			= ( MenuHeight + ArticleHeight + 70 );
		var HeadHeight 			= ( OGHeight - ComboHeight );
		var MobileHeight		= ( OGHeight - MenuHeight );

		// add new margin-top and height to custom header
		if ( $(window).innerWidth() > 480 ) {
			$('.custom-header').css({'margin-top': MenuHeight,  'height': HeadHeight });
		} else {
			$('.custom-header').css({'margin-top': MenuHeight,  'height': MobileHeight });
		}
		<?php if ( !is_front_page() ) : ?>
		// Add new margin-top to site-content if it's not the home page
		$('.site-content-contain').css('margin-top', MenuHeight );
		<?php endif; ?>
		<?php if ( is_single() && has_post_thumbnail( get_queried_object_id() ) ) : ?>
		$('.single-featured-image-header').css('margin-top', MenuHeight );
		$('.site-content-contain').removeAttr('style');
		<?php endif; ?>
	}

// Script to set margin top of submenu bar
	function submenuHeightResize() {
		// Get nav height
		var NavHeight = $('.navigation-top').outerHeight();
		var newSubMenuHeight = ( NavHeight - 1 );

		// Add new top position to submenu bar
		$('.moffitt-submenu-bar').css('top', newSubMenuHeight );
	}

// Run both functions on page load and window resize
	$(document).ready( function() {
		customHeaderResize();
		submenuHeightResize();
	});

	$(window).on('resize', function() {
		customHeaderResize();
		submenuHeightResize();
	});

</script>

<script type="text/javascript">
// Show submenu bar if has-children menu item or sub menu items are hovered
	$('li.menu-item-has-children').hover(
		function() {
			$('.moffitt-submenu-bar').show();
		}, function() {
			$('.moffitt-submenu-bar').hide();
			$(this).removeClass('focus');
		}
	);
</script>

<script type="text/javascript">
	// Get width of item, set as image div height to maintain square
	// function teamImageSquare() {
	// 	var teamItemWidth = $('.moffitt-team-item').width();

	// 	// Set item width at image div height
	// 	$('.moffitt-team-image').css('height', teamItemWidth );
	// }

	// $(document).ready( function() {
	// 	teamImageSquare();
	// });

	// $(window).on('resize', function() {
	// 	teamImageSquare();
	// });
</script>

<script type="text/javascript">
// Team Bio Modal

// On click of bio
	$('.moffitt-team-image, .moffitt-team-info, .moffitt-team-bio').on('click', function(moffittModal) {

		moffittModal.preventDefault();

		// Get window height, header height, and scroll position
		var mWindowHeight = $(window).height();
		var mHeaderHeight = $('.navigation-top').outerHeight();
		var mScrollPosition = $(document).scrollTop();
		var mModalOffset = (mHeaderHeight + mScrollPosition);

		// Set modal as variable
		var mModalWrapper = $(this).closest('.moffitt-team-item').find('.moffitt-team-modal-wrapper');
		var mModalOverlay = $(this).closest('.moffitt-team-item').find('.moffitt-team-modal-overlay');

		// Add margin-top of scroll position to modal wrapper
		$(mModalWrapper).css('margin-top', mModalOffset);

		$(mModalWrapper).fadeIn(300);
		$(mModalOverlay).fadeIn(150);

	});

// Define function modalClose

function modalClose() {
	// Hide overlay and modal
	$('.moffitt-team-modal-overlay').fadeOut(300);
	$('.moffitt-team-modal-wrapper').fadeOut(150);
}

// On click of overlay
$('.moffitt-team-modal-overlay').on('click', function(moffittModalo) {
	moffittModalo.preventDefault();
	modalClose();
});

// On click of close
$('.moffitt-team-modal-close').on('click', function(moffittModalx) {
	moffittModalx.preventDefault();
	modalClose();
});

$('.moffitt-team-modal-print').on('click', function(moffittModalp) {

	moffittModalp.preventDefault();
	var mModalPrint = $(this).closest('.moffitt-team-item').find('.moffitt-team-modal-content');

	$(mModalPrint).printElement({printMode:'popup'});
});

</script>

<?php if ( is_front_page() ) :?>
<script type="text/javascript">
// Scroll on header cta or scroll icon click
$('.header-cta-button, .header-scroll-icon').on('click', function(s) {
	var ctaHeaderHeight = $('.navigation-top').outerHeight();

	s.preventDefault();
	$('html, body').animate({scrollTop: ($('.site-content-contain').offset().top - ctaHeaderHeight )},500);
});
</script>

<?php endif; ?>


</html>
