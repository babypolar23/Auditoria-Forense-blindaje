# Auditoria-Forense-blindaje
Auditoría de Red e Infraestructura (Nodo Fedora) y Auditoría de Red e Infraestructura (Nodo Fedora)
Auditoría de Red e Infraestructura (Nodo Fedora)
echo ”===INICIANDO AUDITORÍA DE RED E INFRAESTRUCTURA EN NODO FEDORA==="
Nos muestra en pantalla el usuario actual, para saber que ruta tomar. (whoami) y el uso de memoria RAM en un formato que podamos entenderte comprender gracias al parámetro -h (free -h)y espacio en disco de forma legible, comprendible y de ayuda fácil visual para nosotros como humanos, gracias al parametro -h (df -h)
Posteriormente nos ayuda a actualizar los repositorios de Fedora por completo y asegúrandose de instalar en una sola línea las herramientas de red net-tools, curl y el monitor de procesos avanzado htop, como ejemplos, pero dependiendo del caso o del proceso a llevar a cabo cambia el nombre. (sudo dnf upgrade ; sudo dnf install net-tools curl htop
Busca en todo el sistema todos los archivos que terminen con la extensión .conf (configuraciones), redirigiendo todos los molestos errores de permisos denegados al bote de basura (/dev/null), gracias al Standar error (2>). (find / -name conf 2>/dev/null).
Comprueba el estado actual del servicio de red (NetworkManager o firewalld o el que se va a llevar a cabo a consultar) y fuerza su reinicio inmediato. (systemctl status NetworkManager ; systemctl restart NetworkManager).
echo "===AUDITORÍA DE RED E INFRAESTRUCTURA EN NODO FEDORA FINALIZADA==="
Fase 2: Forense de Alta Tensión y Blindaje (Nodo Arch Linux)
echo "===INICIANDO PROCESO FORENSE DE ALTA TENSION Y BLINDAJE EN NODO ARCH LINUX==="
Nos permite actualizar todo el sistema operativo de Arch de un comando con la bandera combinada maestra. (sudo pacman -Syu)
Instala el servidor web nginx o el servidor en cuestión a instalar y la utilidad de compresión zip. (sudo pacman -S nginx zip).
Nos permite navegar automáticamente a la carpeta de registros del sistema (/var/log). (cd /var/log).
Realiza una búsqueda forense dentro del archivo syslog o messages (el que prefieras usar de base o el que tengas en cuestión renombrado): busca cuántas líneas contienen la palabra ERROR o Failed, cuenta exactamente cuántas son utilizando tuberías, y guarda ese número en un archivo nuevo llamado reporte_critico.txt. (grep "ERROR" syslog | wc -l > reporte_critico.txt)
Aplicamos el permiso octal más estricto posible a reporte_critico.txt (sólo lectura y escritura para el dueño, cero permisos para el grupo y los demás), y se confirma el cambio con un listado detallado. (chmod 600 reporte_critico.txt ; ls -l).
Imprime un mensaje final en pantalla dentro del script que diga textualmente: "AUDITORÍA Y BLINDAJE COMPLETADOS EXITOSAMENTE".
