#!/bin/bash


apt-get update
apt-get install -y python3 git

chmod +x "main.py"

sudo cp "main.py" /usr/local/bin/hackrick


# Yeşil renk kodu
GREEN='\e[32m'

# ASCII sanatı
ART=$(cat << "EOF"

                        ⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀    ⠀⡀
                        ⢻⢷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ⢠⣾⡇
                        ⢸⠀⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⢤⣶⠶⠶⢶⣶⡤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠋⢀⠇
                        ⠈⣇⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠞⠋⢉⡴⠞⠋⣿⠀⠀⠀⡯⠙⠳⣦⡉⠙⠲⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠟⠁⠀⣼⠀
                        ⠀⠹⣆⠀⠀⠈⠛⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠋⠀⢀⣰⠏⠀⠀⠀⢻⡄⠀⢰⠇⠀⠀⠈⢻⣄⠀⠀⠙⢷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡶⠋⠁⠀⠀⣰⠃⠀
                        ⠀⠀⠹⣇⠀⠀⠀⠀⠉⠳⢦⣄⡀⠀⠀⠀⢀⡾⠃⠀⣠⠞⠋⠁⠀⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠉⠙⢷⣄⠀⠙⢧⡀⠀⠀⠀⢀⣠⡶⠛⠁⠀⠀⠀⠀⣴⠃⠀⠀
                        ⠀⠀⠀⠙⢧⡀⠀⠀⠀⠀⠀⠈⠙⠳⠶⢤⣿⣄⣀⣸⠋⢠⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠀⢹⣆⣀⣨⣷⡤⠶⠚⠋⠁⠀⠀⠀⠀⠀⢠⡾⠃⠀⠀⠀
                        ⠀⠀⠀⠀⠈⠻⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠈⡇⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⣼⠀⣼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⠏⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠈⠻⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⣧⠀⠀⠀⠀⠀⠀⠀⣷⠀⠀⠀⠀⠀⠀⠀⡟⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⠛⠁⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠳⣦⣀⠀⠀⠀⠀⠀⠀⢀⡟⠀⡏⠀⠀⠀⠀⠀⠀⢀⣿⠀⠀⠀⠀⠀⠀⠀⣿⠀⢿⡀⠀⠀⠀⠀⠀⠀⣠⡴⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡆⠉⢻⡶⢤⣀⡀⢀⡾⠁⣼⠃⠀⠀⠀⠀⠀⠀⣸⠹⣆⠀⠀⠀⠀⠀⠀⠹⣆⠘⢧⡀⢀⣠⡤⢶⡟⠉⢰⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⡏⣧⠀⢸⠃⠀⣨⠿⠋⣠⠞⠁⠀⠀⠀⠀⠀⠀⢸⡏⠀⣹⡆⠀⠀⠀⠀⠀⠀⠘⢦⣈⠛⢿⡅⠀⢸⡇⠀⡿⢻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡕⣿⣧⣸⡀⠀⠛⡶⢶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣹⠰⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠶⣾⠃⠀⢸⣇⡼⡿⢸⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣇⠘⢯⡙⠷⣄⣸⠇⠀⠹⣆⠀⠀⠀⠀⠀⠀⠀⣴⠃⠀⠹⣄⠀⠀⠀⠀⠀⠀⢀⣼⠃⠀⢹⣆⣠⠞⣫⡿⠁⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣄⢀⠙⢷⡘⣿⣷⡶⣄⠙⠷⣄⡀⠀⠀⠀⠘⠁⠀⠀⠀⠈⠃⠀⠀⠀⢀⣴⠞⢁⣤⢶⣾⡿⢡⡾⠋⡀⣰⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⠀⠸⣇⠈⣻⣷⣿⠳⣤⡈⠙⠓⠄⠀⠈⠳⡄⠀⣰⠛⠁⠀⠠⠞⠋⢀⣴⠟⣇⣿⡟⠀⣾⠀⠀⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⠀⠻⣾⠏⠸⣿⣦⡈⠛⠶⢤⣤⣤⣤⠴⡷⠶⣿⠦⣤⣤⣤⡤⠾⠋⢁⣼⣿⠁⠹⣶⠏⠀⢰⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⣄⠀⣿⠀⠀⠘⠿⣿⣦⣤⢴⣿⡿⠃⠀⡷⠛⣦⠀⠘⢿⣷⠦⣤⣶⣿⠟⠁⠀⢀⡿⢀⣰⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣷⠘⣷⣄⠀⠀⠀⠉⠉⠉⠁⠀⠀⠀⡇⠀⡟⠀⠀⠀⠉⠉⠉⠉⠀⠀⠀⣠⣾⠁⡟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣴⡏⢹⢷⣦⣄⡀⠀⣀⣤⡤⢤⡀⡧⠀⠇⢀⡤⢤⣤⡀⠀⣀⣠⣴⣿⡏⢻⣼⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⠈⣧⢸⡾⠁⣨⣿⡟⠙⢯⣀⠀⠀⠀⠀⠀⠀⢀⣀⡿⠉⢻⢿⡁⠘⣿⠃⡿⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⡓⠶⠶⠿⡛⠥⠞⠉⢠⣿⣄⡀⠉⠉⠻⣦⣀⡴⠛⠉⠉⢀⣴⣿⡀⠙⠲⠬⣻⠷⠶⠶⢚⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠦⣄⣀⣀⣀⣠⣴⡋⢻⣿⡛⢳⠒⣤⠼⣿⠧⣤⢲⡞⢻⣿⠋⢹⡦⣄⣀⣀⣀⣤⠔⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠹⣆⠈⠛⣾⣿⣧⣿⠙⠛⠓⠛⠚⠛⢋⣇⡾⣿⣷⠋⠀⣼⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣷⡀⣿⣿⣆⠙⠃⠀⠀⠀⠀⠀⠘⠋⣼⡿⣿⢠⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢳⡿⣮⡙⠛⣟⣻⣯⣯⣽⣟⣿⠛⢋⣴⣷⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣼⣏⠛⣋⣤⠶⠒⠶⣤⣙⠛⣹⢰⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⡉⠉⠉⠀⣠⣤⡄⠀⠉⠉⢁⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠲⠤⠞⠋⠀⠙⠶⠤⠖⠋⠁⠀⠀
                                              
                     
             ▄         ▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄    ▄       ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄▄▄▄▄▄▄▄▄▄▄  ▄    ▄ 
            ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌     ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌
            ▐░▌       ▐░▌▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀▀▀ ▐░▌ ▐░▌      ▐░█▀▀▀▀▀▀▀█░▌ ▀▀▀▀█░█▀▀▀▀ ▐░█▀▀▀▀▀▀▀▀▀ ▐░▌ ▐░▌ 
            ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌▐░▌       ▐░▌       ▐░▌     ▐░▌     ▐░▌          ▐░▌▐░▌  
            ▐░█▄▄▄▄▄▄▄█░▌▐░█▄▄▄▄▄▄▄█░▌▐░▌          ▐░▌░▌        ▐░█▄▄▄▄▄▄▄█░▌     ▐░▌     ▐░▌          ▐░▌░▌   
            ▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌          ▐░░▌         ▐░░░░░░░░░░░▌     ▐░▌     ▐░▌          ▐░░▌    
            ▐░█▀▀▀▀▀▀▀█░▌▐░█▀▀▀▀▀▀▀█░▌▐░▌          ▐░▌░▌        ▐░█▀▀▀▀█░█▀▀      ▐░▌     ▐░▌          ▐░▌░▌   
            ▐░▌       ▐░▌▐░▌       ▐░▌▐░▌          ▐░▌▐░▌       ▐░▌     ▐░▌       ▐░▌     ▐░▌          ▐░▌▐░▌  
            ▐░▌       ▐░▌▐░▌       ▐░▌▐░█▄▄▄▄▄▄▄▄▄ ▐░▌ ▐░▌      ▐░▌      ▐░▌  ▄▄▄▄█░█▄▄▄▄ ▐░█▄▄▄▄▄▄▄▄▄ ▐░▌ ▐░▌ 
            ▐░▌       ▐░▌▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌     ▐░▌       ▐░▌▐░░░░░░░░░░░▌▐░░░░░░░░░░░▌▐░▌  ▐░▌
             ▀         ▀  ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀    ▀       ▀         ▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀▀▀▀▀▀▀▀▀▀▀  ▀    ▀ 
                                                                                                   

                                                                                             
                                                                                         
                                                                                 
EOF
)

# Her bir satır için animasyonlu yazdırma
while IFS= read -r line || [ -n "$line" ]; do
    printf "\r$GREEN$line\e[0m\n"
    sleep 0.1
done <<< "$ART"

exit 0

#------ AUTHOR ------#
#   TG: @HackerRick  #
#--------------------#
