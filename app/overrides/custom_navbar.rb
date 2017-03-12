#replace original header with a custom footer
Deface::Override.new(virtual_path: 'spree/shared/_header',
    name: 'remove_navbar',
    replace: 'div#spree-header',
    partial: 'shared/custom_header'
)

#add cutom footer
Deface::Override.new(virtual_path: 'spree/layouts/spree_application',
    name: 'add_footer',
    insert_after: 'body',
    text: '  <footer>  <%= render partial: "shared/footer" %>   </footer>'
)

#add banner on index page
Deface::Override.new(virtual_path: 'spree/layouts/spree_application',
    name: 'add_banner',
    insert_before: 'div.container',
    partial: 'shared/banner'
)

