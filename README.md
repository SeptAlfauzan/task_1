# task_1

Repository dari projek task 1, yakni slicing design UI dari figma ke Flutter

Pada projek ini menggunakan module based architecture, pemilihan module based architecture sendiri berdasarkan dari pengalaman pribadi bahwa ketika codebase aplikasi mulai besar dan mempunyai fitur yang mulai banyak, jika projek menggunakan layer based architecture maka akan kesusahan untuk memanage codebase dari projek tersebut.

berikut visualisasi tree folder projek ini

root_dir
└───lib
-----└───src
----------├───modules
----------│ ├───common
----------│ │ ├───domain
----------│ │ │ └───entities
----------│ │ └───presentation
----------│ │ └───widget
----------│ │ └───atoms
----------│ ├───extensions
----------│ └───home
----------│ ├───data
----------│ │ └───repositories
----------│ ├───domain
----------│ │ ├───entities
----------│ │ └───repositories
----------│ └───presentation
----------│ └───widgets
----------│ ├───atoms
----------│ ├───molecules
----------│ └───organism
----------├───ui
----------└───utils
