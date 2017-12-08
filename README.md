# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs

# Log
  1. Project worked fine at home, cat chewed through laptop charger, had to catch bus to school (10:00)

  2. Change migrations, update gems, refactor models.

# AJAX Checklist

- [ ] Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.

- [ ] Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.

- [ ] Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

# Additional Checklist

- [ ] Ensure that users can't order a negative number of items.
- [ ] Add flash messages for signing up, signing in and signing out.
- [ ] Add product update and delete functionality for admins.
- [ ] Add admin flash messages for adding, updating and deleting products.
- [x] Add Paperclip for product image upload.
- [ ] Allow other than whole dollar amounts for admin product creation
      (for   instance, 3.99).
- [ ] Add product validations.
- [ ] Add Stripe so users can pay when finalizing orders.
- [ ] Add password validations to ensure a user's password is sufficiently complex.
- [ ] Add admin links to navbar so admins can easily add, update and delete products.
- [ ] Fix the row height for products, which can quickly become uneven.
- [ ] Add integration testing for AJAX functionality.
- [ ] Add further AJAX functionality where it might be useful.
