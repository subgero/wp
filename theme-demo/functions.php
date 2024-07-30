<?php


function theme_demo_tag_support(){

    add_theme_support('title-tag');

}

add_action('after_setup_theme', 'theme_demo_tag_support');

function theme_demo_register_styles(){

    $version = wp_get_theme()->get( 'Version' );

    wp_enqueue_style('theme-demo-bootstrap', "https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css", array(), '1.0', 'all');
    wp_enqueue_style('theme-demo-fontawesome', "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css", array(), '1.0', 'all');
    wp_enqueue_style('theme-demo-style', get_template_directory_uri() . "/style.css", array(), $version, 'all');

}

add_action( 'wp_enqueue_scripts', 'theme_demo_register_styles');

function theme_demo_register_scripts(){

    $version = wp_get_theme()->get( 'Version' );

    wp_enqueue_script('theme-demo-main', get_template_directory_uri() . "/assets/js/main.js", array(), $version, true);

}

add_action( 'wp_enqueue_scripts', 'theme_demo_register_scripts');

?>