#!/bin/bash
# Made by Zeeshan Anjum
echo "Downloading Repo..."
cd /usr/local/vesta/web/list
wget https://github.com/larrypaul93/elfm-vestacp/raw/master/elfm.zip -O elfm.zip
unzip elfm.zip
rm -rf elfm.zip
if grep -q 'elfm' /usr/local/vesta/web/templates/admin/panel.html; then
		echo 'Already there.'
	else 
sed -i '/<div class="l-menu clearfix noselect">/a <div class="l-menu__item <?php if($TAB == "elfm" ) echo "l-menu__item--active"; ?>"><a href="/list/elfm/" target="_blank"><?=__("El FM")?></a></div>' /usr/local/vesta/web/templates/admin/panel.html;
fi
echo "Installation Success" 
