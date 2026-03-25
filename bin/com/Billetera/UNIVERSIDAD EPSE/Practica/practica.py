import curses

def main(stdscr):
    curses.curs_set(0)

    menu = ["Registrar", "Buscar", "Eliminar", "Salir"]
    seleccionado = 0

    while True:
        stdscr.clear()

        h, w = stdscr.getmaxyx()
        for i, opcion in enumerate(menu):
            x = w//2 - len(opcion)//2
            y = h//2 - len(menu)//2 + i
            
            if i == seleccionado:
                stdscr.attron(curses.A_REVERSE)
                stdscr.addstr(y, x, opcion)
                stdscr.attroff(curses.A_REVERSE)
            else:
                stdscr.addstr(y, x, opcion)

        stdscr.refresh()

        tecla = stdscr.getch()

        if tecla == curses.KEY_UP and seleccionado > 0:
            seleccionado -= 1
        elif tecla == curses.KEY_DOWN and seleccionado < len(menu) - 1:
            seleccionado += 1
        elif tecla in [10, 13]:  # ENTER
            break

curses.wrapper(main)


