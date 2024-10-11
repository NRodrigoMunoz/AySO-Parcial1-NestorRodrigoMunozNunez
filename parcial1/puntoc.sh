sudo groupadd grupodevops
sudo groupadd grupodevelopers
sudo groupadd grupotesters
cat /etc/group |tail -n3
sudo useradd -m -s /bin/bash -c "Usuario developer1" -G grupodevops,grupodevelopers developer1
sudo useradd -m -s /bin/bash -c "Usuario tester1" -G grupotesters tester1
sudo useradd -m -s /bin/bash -c "Usuario devops1" -G grupodevops,grupodevelopers devops1
sudo useradd -m -s /bin/bash -c "Usuario devops2" -G grupodevops devops2
cat /etc/passwd|tail -n4
sudo chmod 750 Examenes-UTN/alumno_1
sudo chmod 760 Examenes-UTN/alumno_2
sudo chmod 700 Examenes-UTN/alumno_3
sudo chmod 775 Examenes-UTN/profesores

sudo chown developer1:grupodevelopersExamenes-UTN/alumno_1
sudo chown tester1:grupotesters Examenes-UTN/alumno_2
sudo chown devops1:grupodevops Examenes-UTN/alumno_3
sudo chown devops2:grupodevops rExamenes-UTN/profesores




