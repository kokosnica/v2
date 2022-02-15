php /var/www/pterodactyl/artisan down
cd /var/www/pterodactyl/resources/scripts
rm -rf main.css
echo "@import url('https://raw.githubusercontent.com/kokosnica/v2/main/user.css')" >> /var/www/pterodactyl/resources/scripts/main.css
rm -rf index.tsx
wget https://raw.githubusercontent.com/kokosnica/v2/main/index.tsx
cd ../..
php artisan view:clear
php artisan cache:clear
echo "User panel theme has been added."
echo "Installing admin theme..."
npm install yarn -g
yarn install
yarn add @emotion/react
rm -rf /var/www/pterodactyl/resources/scripts/hoc/requireServerPermission.tsx
yarn build:production
cd ../../..
php /var/www/pterodactyl/artisan up
php /var/www/pterodactyl/artisan view:clear
php /var/www/pterodactyl/artisan cache:clear
echo "Admin theme install complete, Make sure to shift + refresh your page!"
