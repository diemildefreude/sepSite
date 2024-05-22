<?php 
    $urlBase = "https://selliotp.com/";
    $url = $urlBase . $urlEnd;
?>
<!DOCTYPE html>
<html lang="en"
        xmlns="http://www.w3.org/1999/xhtml"
        xmlns:fb="http://ogp.me/ns/fb#">
    <head> 
        <title><?php echo $title ?></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="<?php echo $description ?>">

        <!-- Open Graph Meta Tags -->
        <meta property="og:url" content="<?php echo $url ?>">
        <meta property="og:type" content="<?php echo $ogType ?>">
        <meta property="og:title" content="<?php echo $title ?>">
        <meta property="og:description" content="<?php echo $description ?>">
        <meta property="og:image" content="<?php echo $urlBase . $ogImg ?>">
        <meta property="og:image:width" content="1920">
        <meta property="og:image:height" content="1080">

        <!-- Twitter Meta Tags -->
        <meta name="twitter:card" content="summary_large_image">
        <meta property="twitter:domain" content="selliotp.com">
        <meta property="twitter:url" content="<?php echo $url ?>">
        <meta name="twitter:title" content="<?php echo $title ?>">
        <meta name="twitter:description" content="<?php echo $description ?>">
        <meta name="twitter:image" content="<?php echo $urlBase . $ogImg ?>">

        <script>
            const rootDir = '<?php echo $rootDir ?>';
        </script>
        
        <link href="<?php echo $rootDir . 'reset.css'?>" rel="stylesheet">
        <link href="<?php echo $rootDir . 'headerMenuMain.css'?>" rel="stylesheet">
        <link href="<?php echo $rootDir . 'favicon/favicon.ico'?>" 
            rel="icon" 
            type="image/x-icon"
            x-content-type-options="nosniff">
        <link rel="canonical" href="<?php echo $url ?>">

        <!-- <script src="https://cdn.jsdelivr.net/npm/eruda"></script>
        <script>eruda.init();</script> -->