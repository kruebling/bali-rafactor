# README

E-commerce site. Uses `bcrypt` and `materialize`. There's a seed file. Set up your own admin. If you have questions, I'll be in Bali with no email. Ask someone else.

To set up:

* `rake db:setup`

* Sorry, didn't get around to tests. It mostly works. There might be a few bugs

# Log
  1. Project worked fine at home, cat chewed through laptop charger, had to catch bus to school (10:00)

  2. Change migrations, update gems, refactor models. (10:30)

  3. Refactor controllers, adjust methods for tracking order status. Change log in form to only accept password and no password confirmation, come back to fix this and encrypt password later. (11:00)

  4. Fix bug on user creation to associate a user with an account. If User.save associate that user with a new instance of Account.(11:30)

  5. Fix bug with previous_orders method, instead define previous orders by orders status (12:45)

  5. Fix bug with error in how I set up Bcrypt with DB. Needed a server restart and DB reset, user login, password confirmation, register working again. (1:30)

  6. Bug with order status, losing account ID somewhere along the way, possibly when attempting to set status to 2 (which doesnt work). Needs refactor, cart still works. (2:00)

  7. Had incorrect naming of partials I was trying to render, wasted a lot of time getting AJAX to render product details. Finally got it to render.(3:15)

  8. Updating the cart was a lot easier after struggling with the last AJAX request. (4:00)

  9. Able to uses AJAX to remove an item from the cart, cart page not updating. Need js to also update cart view. (4:30)

  9. Moved form into form partial, discovered typo in div id I was targeting that was causing the cart page to not remove the item from the cart. Cart view in nav bar defaulting to 0 on delete (and removing the word cart), not sure if this was in place before or after I added ajax delete.

  10. Added flash messages to site for signing in, out, and up. Tried to implement flash messages I had styled before and realized i didnt have bootstrap, will require further investigation.

  11. Add validations to product and implement paperclip for product image seed file. Paperclip currently timing out when seeding.

  12. Add validations to password so it's protected in terminal and is complex.

# AJAX Checklist

- [x] Users should be able to add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.

- [x] Users should be able to click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.

- [x] Users should be able to remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.

# Additional Checklist

- [x] Ensure that users can't order a negative number of items.
- [x] Add flash messages for signing up, signing in and signing out.
- [ ] Add product update and delete functionality for admins.
- [ ] Add admin flash messages for adding, updating and deleting products.
- [x] Add Paperclip for product image upload.
- [ ] Allow other than whole dollar amounts for admin product creation
      (for   instance, 3.99).
- [x] Add product validations.
- [ ] Add Stripe so users can pay when finalizing orders.
- [x] Add password validations to ensure a user's password is
      sufficiently complex.
- [x] Add admin links to navbar so admins can easily add, update and delete products.
- [ ] Fix the row height for products, which can quickly become
      uneven, especially when loading product details
- [ ] Add integration testing for AJAX functionality.
- [ ] Add further AJAX functionality where it might be useful.
