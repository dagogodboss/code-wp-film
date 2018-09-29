<?php 
	 add_action( 'wp_enqueue_scripts', 'codeline_enqueue_styles' );
	 function codeline_enqueue_styles() {
 		  wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' ); 
 		  }
 		  
 	/* Add custom fields to Film post type*/
        add_action("admin_init", "admin_init");
        add_action('save_post', 'save_film_meta');
        
        function admin_init(){
            add_meta_box("filmInfo-meta", "Film Extra Options", "meta_options", "film", "side", "high");
        }
        
        function meta_options(){
            global $post;
            $custom = get_post_custom($post->ID);
            $ticket_price = $custom["ticket_price"][0];
            $release_date = $custom["release_date"][0];
            ?>
            <label>Ticket Price:</label><input name="ticket_price" value="<?php echo $ticket_price; ?>" />
            <label>Release Date:</label><input name="release_date" value="<?php echo $release_date; ?>" />
        <?php
        }
        
        function save_film_meta(){
            global $post;
            update_post_meta($post->ID, "ticket_price", $_POST["ticket_price"]);
            update_post_meta($post->ID, "release_date", $_POST["release_date"]);
        }
        
        function recent_films() {
        ?>
        <h2>Recent Films</h2>
        <ul>
            <?php
                $recent_posts = wp_get_recent_posts(array(
                    'post_type'=>'film',
                    'posts_per_page' => 5,
                    'orderby' => 'date',
                    'order' => 'DESC'));
                foreach( $recent_posts as $recent ){
                    echo '<li><a href="' . get_permalink($recent["ID"]) . '" title="Look '.esc_attr($recent["post_title"]).'" >' .   $recent["post_title"].'</a> </li> ';
                }
            ?>
        </ul>
<?php
        }
        add_shortcode('recent-films', 'recent_films');
?>