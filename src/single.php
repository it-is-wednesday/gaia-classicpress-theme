<?php get_header(); ?>
<div class="post-page">
    <?php the_post(); ?>
    <h1><?= single_post_title() ?></h1>
    <?php the_content(); ?>
</div>
<?php get_footer(); ?>
