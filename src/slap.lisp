(in-package :nb2)

(defvar slap-list '("https://i.imgur.com/4MQkDKm.gif"
                    "https://i.imgur.com/Agwwaj6.gif"
                    "https://i.imgur.com/CwbYjBX.gif"
                    "https://i.imgur.com/VW0cOyL.gif"
                    "https://i.imgur.com/YA7g7h7.gif"
                    "https://i.imgur.com/fm49srQ.gif"
                    "https://i.imgur.com/jNaAaxn.gif"
                    "https://i.imgur.com/kSLODXO.gif"
                    "https://i.imgur.com/mIg8erJ.gif"
                    "https://i.imgur.com/o2SJYUS.gif"
                    "https://i.imgur.com/oOCq3Bt.gif"
                    "https://i.pinimg.com/originals/1c/8f/0f/1c8f0f43c75c11bf504b25340ddd912d.gif"
                    "https://media.giphy.com/media/10Am8idu3qBYRy/giphy.gif"
                    "https://media.giphy.com/media/VEmm8ngZxwJ9K/giphy.gif"
                    "https://media.giphy.com/media/iUgoB9zOO0QkU/giphy.gif"
                    "https://media.giphy.com/media/zRlGxKCCkatIQ/giphy.gif"
                    "https://media1.tenor.com/images/477821d58203a6786abea01d8cf1030e/tenor.gif?itemid=7958720"
                    "https://media1.tenor.com/images/fb17a25b86d80e55ceb5153f08e79385/tenor.gif?itemid=7919028"
                    "https://pa1.narvii.com/6807/ac91cef2e5ae98f598665193f37bba223301d75c_hq.gif"))

(defun slap ()
  (format nil (nth (random (length slap-list)) slap-list)))
