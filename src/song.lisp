(in-package :nb2)

(defvar song-list '("https://youtu.be/28mTETQMRs4"
                    "https://youtu.be/4-PkAQcuZOw"
                    "https://youtu.be/4DnCETKeHkc"
                    "https://youtu.be/5dbi4N6NGn4"
                    "https://youtu.be/H221MRRgFZs?list=PLLiA91TyEc8tL1jj8RZ0zCkG1QCDUd8YX"
                    "https://youtu.be/H40u9ufvSVo"
                    "https://youtu.be/IQicDkntMVA"
                    "https://youtu.be/K00pcctFIuY"
                    "https://youtu.be/MFcpcwdBYrk"
                    "https://youtu.be/N6Jn98ktFw0"
                    "https://youtu.be/RVIreGd1-NA"
                    "https://youtu.be/SQ02E7qgZ_E"
                    "https://youtu.be/YSecmwH_AoQ"
                    "https://youtu.be/bEHUFRRK9Sk"
                    "https://youtu.be/dvozrz9zWBg"
                    "https://youtu.be/eYMQnb2igTs"
                    "https://youtu.be/gZISvTviaj8"
                    "https://youtu.be/o0ndkiL5ivU"
                    "https://youtu.be/pTzumRQKGgM"
                    "https://youtu.be/qHT6eEKP3jI"
                    "https://youtu.be/rLiyFaLs8PY"
                    "https://youtu.be/yO4myLCfN-Y"))

(defun song ()
  (format nil (nth (random (length song-list)) song-list)))
