wp db query "UPDATE $(wp db prefix --allow-root)posts SET post_content = replace(post_content, 'staging.sandbox.pdms.ca', 'sandbox.pdms.ca')" --allow-root
wp db query "UPDATE $(wp db prefix --allow-root)options SET option_value = replace(option_value, 'staging.sandbox.pdms.ca', 'sandbox.pdms.ca') WHERE option_name = 'home' OR option_name = 'siteurl'" --allow-root
wp db query "UPDATE $(wp db prefix --allow-root)posts SET guid = replace(guid, 'staging.sandbox.pdms.ca', 'sandbox.pdms.ca')" --allow-root
wp db query "UPDATE $(wp db prefix --allow-root)postmeta SET meta_value = replace(meta_value, 'staging.sandbox.pdms.ca', 'sandbox.pdms.ca')" --allow-root


wp db query "UPDATE $(wp db prefix --allow-root)posts SET post_content = replace(post_content, 'http://sandbox.pdms.ca', 'https://sandbox.pdms.ca')" --allow-root
wp db query "UPDATE $(wp db prefix --allow-root)options SET option_value = replace(option_value, 'http://sandbox.pdms.ca', 'https://sandbox.pdms.ca') WHERE option_name = 'home' OR option_name = 'siteurl'" --allow-root
wp db query "UPDATE $(wp db prefix --allow-root)posts SET guid = replace(guid, 'http://sandbox.pdms.ca', 'https://sandbox.pdms.ca')" --allow-root
wp db query "UPDATE $(wp db prefix --allow-root)postmeta SET meta_value = replace(meta_value, 'http://sandbox.pdms.ca', 'https://sandbox.pdms.ca')" --allow-root

wp elementor replace_urls 'http://sandbox.pdms.ca' 'https://sandbox.pdms.ca' --allow-root
