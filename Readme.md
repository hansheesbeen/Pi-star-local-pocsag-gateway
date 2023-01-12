# Pi-star local Pocsag Gateway

Pi-star is a wonderful initiative for radio amateurs. The link with the DAPnet certainly also has added value.

Unfortunately, it also happens that you are in a location where the internet is poor or not available.

To still be able to send Pocsag messages locally, I made a simple script in PHP. You can place this script on the pi-star web server on your Raspberry Pi.

## Setup Pi-star for external messaging

Log in to your existing Pi-star device and activate Pocsag.
Click **apply** and wait for Pi-star to restart.

Go to the menu item **Expert** and click on the menu item **MMDVMhost**.

Find the Remote Control section here and put a 1 in the Enable input field. Save the changes by clicking **Apply**.

Congratulations, Pi-star is now ready to send Pocsag messages locally.

## Add paging.php to the Pi-star webserver

Log in to your Pi-star with SSH.

Change to the correct directory with the following command:
> cd /var/www/dashboard

In this directory, run the following commands:

we make the Pi-star image editable:
> rpi-rw

> sudo wget https://raw.githubusercontent.com/hansheesbeen/Pi-star-local-pocsag-gateway/main/paging.php

To set your secret key:
> sudo nano paging.php

And edit/change the secret_key value, please do not change any other variables.

Save with **CTRL+X** and then **Y**

Next we make the Pi-star image read-only:
>rpi-ro

Close the SSH connection.

## Sending an test page

The format to send a message is easy to build:

> /paging.php?ric=**DMR_USER_ID**&key=**SECRET_KEY**&msg=**MESSAGE TO BE SEND**

In your browser, go to the url of your Pi-star device like http://pi-star.local or the IP address and add the /paging.php string like above to the URL.
