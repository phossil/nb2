(in-package :nb2)

(defvar site-list '("http://lain.angelic-trust.net/wired.html"
                    "http://navi.solutions/"
                    "http://sel.wikia.com/wiki/Serial_Experiments_Lain_Wiki"
                    "http://www.cjas.org/~leng/lain.htm"
                    "https://arisuchan.jp/"
                    "https://arisuchan.jp/cyb/res/1210.html"
                    "https://asphyxia.su/"
                    "https://blackwings.neocities.org/"
                    "https://fauux.neocities.org/"
                    "https://mebious.neocities.org/Layer/Wierd.html"
                    "https://systemspace.link/warning.php"
                    "https://systemspace.network/"))

(defun site ()
  (format nil (nth (random (length site-list)) site-list)))
