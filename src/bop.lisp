(in-package :nb2)

(defvar bop-list '("https://cdn.4archive.org/img/zERCrSXm.gif"
                   "https://gfycat.com/serenehandyislandcanary"
                   "https://giphy.com/gifs/30lxTuJueXE7C"
                   "https://i.imgur.com/zXuP1Pq.gif"
                   "https://i.pinimg.com/originals/67/14/ef/6714efc56eedfeed52e57f8166b314fc.gif"
                   "https://i.pinimg.com/originals/99/ea/48/99ea48ec7a3d63e77186302e8d85426e.gif"
                   "https://i.redd.it/gp8b963vdl551.gif"
                   "https://imgur.com/gallery/dsWJ44N"
                   "https://imgur.com/t/toradora/X0ziFMf"
                   "https://media0.giphy.com/media/3o7TKBOPWDLbypGYbC"
                   "https://media1.giphy.com/media/KI14N7D3AJ4SA/giphy.gif"
                   "https://tenor.com/view/anime-blends-mafuyu-hit-gif-10185644"
                   "https://tenor.com/view/anime-hit-bonk-rikka-gif-18191826"
                   "https://tenor.com/view/bang-dream-bandori-anime-bonk-poppin-party-gif-16570141"
                   "https://tenor.com/view/chuunibyou-hit-bonk-chop-stopit-gif-8229175"
                   "https://tenor.com/view/elsie-wo-gk-anime-world-only-god-knows-keima-gif-13652732"
                   "https://tenor.com/view/head-bop-gif-13194041"
                   "https://tenor.com/view/head-hit-anime-cute-gif-15150394"
                   "https://tenor.com/view/horny-bonk-bonk-amazed-smack-gif-17599906"
                   "https://tenor.com/view/horny-jail-bonk-dog-hit-head-stop-being-horny-gif-17298755"
                   "https://tenor.com/view/sango-miroku-funny-inuyasha-anime-gif-14787460"))

(defun bop ()
  (format nil (nth (random (length bop-list)) bop-list)))
