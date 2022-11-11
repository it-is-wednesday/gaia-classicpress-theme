<?php get_header(); ?>
<div>
    <?php if (have_posts()): ?>

    <?php if (is_home() && !is_front_page()): ?>
        <header>
            <h1 class="page-title screen-reader-text"><?php single_post_title(); ?></h1>
        </header>
    <?php endif; ?>

    <?php
    while (have_posts()):
        the_post();
        the_title();
        the_content();
    endwhile;

    // Previous/next page navigation.
    the_posts_pagination([
        "prev_text" => __("Previous page", "twentyfifteen"),
        "next_text" => __("Next page", "twentyfifteen"),
        "before_page_number" =>
            '<span class="meta-nav screen-reader-text">' .
            __("Page", "twentyfifteen") .
            " </span>",
    ]);

    // If no content, include the "No posts found" template.
    else:get_template_part("content", "none");endif; ?>

</div>
<?php get_footer(); ?>
