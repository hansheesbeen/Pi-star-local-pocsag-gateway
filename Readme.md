#Pi-star local Pocsag Gateway#

Pi-star is a wonderful initiative for radio amateurs. The link with the DAPnet certainly also has added value.

Unfortunately, it also happens that you are in a location where the internet is poor or not available.

To still be able to send Pocsag messages locally, I made a simple script in PHP. You can place this script on the pi-star web server on your Raspberry Pi.

##Setup Pi-star for external messaging##

Log in to your existing Pi-star device and activate Pocsag.
Click **apply** and wait for Pi-star to restart.

Go to the menu item **Expert** and click on the menu item **MMDVMhost**.

Find the Remote Control section here and put a 1 in the Enable input field. Save the changes by clicking **Apply**.

Congratulations, Pi-star is now ready to send Pocsag messages locally.