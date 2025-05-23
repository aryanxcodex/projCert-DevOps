<?php

/**
 * Used to store website configuration information.
 *
 * @var string
 */
function config($key = '')
{
    $config = [
        'name' => 'My website Aryan, Anoop, Sujal',
        'nav_menu' => [
            '' => 'Home',
            'content/about-us.php' => 'Aryan',
            'content/products.php' => 'Products',
            'content/contact.php' => 'Contact',
        ],
        'template_path' => 'template',
        'content_path' => 'content',
        'pretty_uri' => true,
        'version' => 'v2.0',
    ];

    return isset($config[$key]) ? $config[$key] : null;
}
