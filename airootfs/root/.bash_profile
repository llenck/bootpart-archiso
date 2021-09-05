function init_pacman() {
	pacman-key --init
	pacman-key --populate archlinux
	touch /tmp/pacman-initialized
}

loadkeys de-latin1

! [ -f /tmp/pacman-initialized ] && init_pacman
