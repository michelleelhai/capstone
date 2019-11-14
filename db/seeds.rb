# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.create({username: "dave", password_digest: "password"})
# User.create({username: "karen", password_digest: "password"})
# User.create({username: "bill", password_digest: "password"})
# User.create({username: "kellie", password_digest: "password"})
# Product.create({name: "Gingko", effects: "Cognitive Enhancer", image_url: "https://cdn.shopify.com/s/files/1/0324/9945/products/gingko-biloba-herb-simple-single-homegrown-herbalist_229_300x300.jpg?v=1558721365", description: "An Asian plant known for it's positive effects on cognition.", user_id:1})
# Product.create({name: "Collagen", effects: "Joint Health", image_url: "https://cdn.shopify.com/s/files/1/0053/9952/products/mcp-canister-front_1200x.jpg?v=1571438513", description: "This powder is known not only for its effects on joint health, but also widely used for beauty as it is great for skin and nails", user_id:1})
# Product.create({name: "honey", effects: "Throat Health", image_url: "https://www.simplemost.com/wp-content/uploads/2017/07/AdobeStock_168178436-e1560539303889-750x500.jpeg", description: "This natural sweetener is widely used for its throat soothing properties", user_id:1})
# Product.create({name: "CBD", effects: "Overall Health", image_url: "https://magazine.medlineplus.gov/images/uploads/main_images/abcsofcbd.jpg", description: "This is derived from the popular plant, cannabis, it is an anti-inflammatory compound also known for its anti-anxiety effects", user_id:1})
Condition.create({name: "Cognitive Decline", image_url: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/News/mental-health/072015_depressiondecline_THUMB_LARGE.jpg?w=1155", description: "When the brain is not as sharp as it used to be due to age or underlying conditions like alzheimers.",user_id: 17})
Condition.create({name: "Weight Gain", image_url: "https://keyassets-p2.timeincuk.net/wp/prod/wp-content/uploads/sites/50/2017/05/menopause-weight-gain-e1550158171208-920x747.jpg", description: "When the body is carrying excess fat deposits, the most dangerous of which are around the midsection.", user_id: 17})











