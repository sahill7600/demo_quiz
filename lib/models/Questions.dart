class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Which of the following is NOT a component of a WordPress theme?",
    "options": [' Header', 'Sidebar', 'Footer', 'Plugin'],
    "answer_index": 3,
  },
  {
    "id": 2,
    "question": "Which of the following is NOT a valid database table prefix for WordPress",
    "options": ['wp_', 'mywp_', 'wpprefix_', 'wordpress_'],
    "answer_index": 1,
  },
  {
    "id": 3,
    "question": "What does the WordPress function is_user_logged_in() return?",
    "options": ['The users username', 'users email address',
      'loggedIn,otherwise false', 'The users role in the site'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "Which WordPress security measure is used to prevent unauthorized access to the admin area?",
    "options": ['CAPTCHA verification', 'Two-factor authentication', 'IP blocking', 'HTTP BasicAuthentication'],
    "answer_index": 1,
  },
  {
    "id": 5,
    "question": "Which WordPress function is used to display the title of a post or page",
    "options": ['the_title()','get_post_title()','display_post_title()','post_title()'],
    "answer_index": 0,
  },
  {
    "id": 6,
    "question": "Which of the following is NOT a WordPress user role by default?",
    "options": ['Subscriber','Moderator','Author','Administrator'],
    "answer_index": 1,
  },
  {
    "id": 7,
    "question": "Which WordPress file is primarily responsible for defining database connection settings?",
    "options": ['wp-settings.php','wp-config.php','functions.php','wp-db.php'],
    "answer_index": 1,
  },
 {
    "id": 8,
    "question": "Which of the following HTTP response status codes indicates a permanent redirect in WordPress?",
    "options": ['200','301','404','503'],
    "answer_index": 1,
  },
  {
    "id": 9,
    "question": "Which file in a WordPress theme is responsible for displaying individual posts?",
    "options": ['single.php','index.php','page.php','archive.php'],
    "answer_index": 0,
  },
  {
    "id": 10,
    "question": "Which WordPress UI component allows users to select and activate different site layouts and designs?",
    "options": ['Theme Editor','Template Library','Theme Switcher','Style Guide'],
    "answer_index": 2,
  },
  {
    "id": 11,
    "question": "Which of the following UI components in WordPress allows users to schedule posts for future publication?",
    "options": ['Media library','Dashboard','Post settings','Post editor'],
    "answer_index": 3,
  },
  {
    "id": 12,
    "question": "In the WordPress Customizer, what feature allows users to make granular adjustments to their theme's appearance?",
    "options": ['Live Preview','Theme Editor','Code Injection','Theme Options'],
    "answer_index": 0,
  },
  {
    "id": 13,
    "question": "Which of the following UI elements in WordPress allows users to manage the permalink structure of their website?",
    "options": ['Pages','Settings','Plugins','Permalinks'],
    "answer_index": 3,
  },
  {
    "id": 14,
    "question": "In WordPress, which section of the Dashboard provides an overview of site performance, security issues, and available updates?",
    "options": ['Site Health','Activity Log','Site Dashboard','Site Overview'],
    "answer_index": 0,
  },
  {
    "id": 15,
    "question": "Which of the following is a role-specific UI component in the WordPress Admin that allows administrators to manage users and their capabilities?",
    "options": ['Quick Draft','Users','Widgets','Settings'],
    "answer_index": 1,
  },
  {
    "id": 16,
    "question": "Which of the following functions is used to create a custom widget in WordPress?",
    "options": ['register_widget()','add_widget()','create_widget()','insert_widget()'],
    "answer_index": 0,
  },
  {
    "id": 17,
    "question": "Which hook is triggered when a user role is updated in WordPress?",
    "options": ['update_role','role_updated','set_role','set_user_role'],
    "answer_index": 1,
  },
  {
    "id": 18,
    "question": "Which of the following functions is used to retrieve the URL of the WordPress admin area?",
    "options": ['get_admin_url()','get_wp_admin_url()','wp_admin_url()','admin_url()'],
    "answer_index": 3,
  },
  {
    "id": 19,
    "question": "Which WordPress function is used to generate a post excerpt?",
    "options": ['get_excerpt()','the_excerpt()','wp_trim_excerpt()',' create_excerpt()'],
    "answer_index": 2,
  },
  {
    "id": 20,
    "question": "Which hook is used to add content after the main content area in WordPress?",
    "options": ['after_main_content','the_content','loop_end','wp_footer'],
    "answer_index": 3,
  },


];
