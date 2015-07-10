# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create([{email: 'courtney.mae.phillips@gmail.com', password: 'administrator', password_confirmation: 'administrator', admin: true}])

Post.create([{
  title: 'Lorem Ipsum',
  content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
  },

  {

  title: 'Bacon Ipsum',
  content: 'Bacon ipsum dolor amet tongue brisket shankle jerky tenderloin chicken sausage flank andouille pig venison, salami alcatra. Boudin swine ground round pork belly, pancetta ham hock frankfurter pork t-bone biltong shank tenderloin turkey tongue short ribs. Meatball ham hock sausage spare ribs jerky. Pastrami ball tip frankfurter leberkas tongue, ground round boudin biltong kevin tail. Venison turducken hamburger fatback alcatra ham. Sausage picanha porchetta kevin turducken chicken corned beef rump pig frankfurter drumstick shoulder beef shankle kielbasa. Spare ribs porchetta chicken, sirloin chuck tail tenderloin boudin ribeye.

  Spare ribs beef prosciutto landjaeger tenderloin, jerky shank sirloin cupim swine turducken capicola kielbasa. Turducken andouille venison beef. Cow jowl spare ribs fatback shoulder bacon frankfurter ball tip drumstick ribeye boudin meatloaf. Filet mignon swine chicken shoulder bacon jerky porchetta rump turducken. Chicken ribeye short loin kielbasa ball tip, shank pork meatloaf t-bone frankfurter bacon pork chop turkey pancetta. Boudin shankle corned beef filet mignon. Sirloin meatball tail andouille picanha beef, jerky chicken swine pork belly spare ribs ribeye ground round turkey.'
    },

  {

  title: 'Cupcake Ipsum',
  content: 'Sweet dragée gingerbread tootsie roll pastry chocolate cake topping. Chupa chups macaroon marshmallow dessert tart marzipan gingerbread. Jelly-o jelly powder powder biscuit gingerbread cheesecake. Lemon drops jujubes bear claw liquorice. Tart fruitcake chupa chups chupa chups fruitcake. Gingerbread cake tart sweet roll donut tiramisu. Sweet roll pie tiramisu danish donut gingerbread candy canes biscuit muffin. Sesame snaps jelly jelly-o dessert. Fruitcake tiramisu ice cream pie wafer. Danish macaroon cotton candy. Wafer chupa chups jelly chocolate brownie danish. Apple pie lollipop chocolate bar icing bonbon pastry cotton candy jelly. Lollipop chupa chups jelly-o dessert.
  Bonbon tiramisu chupa chups fruitcake halvah soufflé muffin cheesecake lollipop. Candy chupa chups gingerbread caramels tootsie roll. Gummi bears toffee lollipop tart candy canes tiramisu tiramisu marshmallow. Sweet danish cookie croissant halvah chupa chups chocolate chupa chups. Wafer danish gummi bears liquorice chupa chups pastry icing cake. Bonbon marshmallow caramels halvah soufflé. Sugar plum tootsie roll cotton candy marshmallow candy. Chocolate bar candy canes cake toffee croissant gingerbread fruitcake. Pudding dragée cake jujubes pastry gummi bears sweet roll oat cake. Wafer soufflé marzipan dessert powder toffee. Gummi bears macaroon cake biscuit bear claw croissant tootsie roll ice cream danish. Jelly-o cake chocolate.'

    }])
