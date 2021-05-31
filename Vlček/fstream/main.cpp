#include<iostream>
#include<string>
#include<fstream>
using namespace std;



int main() {
	//ofstream zapis;
	//string soubor = "text.txt";
	//zapis.open(soubor);

	//for (int i = 0; i < 20; i++) {
	//	zapis << i << " ";
	//}
	//zapis << endl;
	//zapis.close();
	
	string soubor = "pagchomp.txt";
	ifstream cteni;
	cteni.open(soubor);
	if (cteni.fail()) {
		cout << "chyba nacteni souboru..." << endl;
		system("pause");
		//exit(0);
		return 0;
	}
	
	string slovo;
	const int N = 1000;
	string slova[N];
	int i = 0;
	while (cteni >> slovo) {
		slova[i] = slovo;
		i++;
	}

	for (int a = 0; a < i; a++) {
		cout << slova[a] << endl;
	}
	
	
	cteni.close();
	system("pause");
	return 0;
}