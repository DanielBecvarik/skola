#include<iostream>
#include<string>
#include<fstream>
using namespace std;



struct Osoba {
	string jmeno;
	int vek;
	string pohlavi;
};

int main() {

	const int N = 100;
	Osoba pole[N];
	int pocet = 0, volba, moznosti = 0;
	string soubor;
	cout << "zadej nazev souboru osob bez pripony: ";
	cin >> soubor;
	cin.ignore();
	ifstream cteni;
	cteni.open(soubor + ".txt");

	while (cteni.fail()) {
		cout << "zadej \"ZNOVU\" nazev souboru osob bez pripony: ";
		cin >> soubor;
		cin.ignore();
		cteni.open(soubor + ".txt");
		if (moznosti == 2) {
			cout << "Proved kontrolu souboru!!!" << endl;
			cout << "...program bude ukoncen." << endl;
			system("pause");
			return 0;
		}

	}
	string jmeno;
	int vek;
	string pohlavi;
	while (cteni >> jmeno >> vek >> pohlavi) {
		pole[pocet].jmeno = jmeno;
		pole[pocet].vek = vek;
		pole[pocet].pohlavi = pohlavi;
		pocet++;
	}





	/*cout << "zadej pocet novych osob[max 100 osob]; ";
	cin >> pocet;
	cin.ignore();*/

	/*for (int i = 0; i < pocet; i++) {
		cout << "zadej jmeno " << i + 1 << ".osoby: ";
		getline(cin, pole[i].jmeno);
		cout << "zadej vek " << i + 1 << ".osoby: ";
		cin >> pole[i].vek;
		cin.ignore();
		cout << "zadej pohlavi " << i + 1 << ".osoby [muz, zena]: ";
		getline(cin, pole[i].pohlavi);
		system("cls");
	}*/
	//---------------------------------------------------------program-----------------------------------------------------

	do {
		system("cls");
		cout << "\tO S O B Y" << endl << endl;
		cout << "menu programu: " << endl;
		cout << " 1 - vypis vsech osob" << endl;
		cout << " 2 - vypis vsech zen" << endl;
		cout << " 3 - vypis vsech muzu" << endl;
		cout << " 4 - konec programu" << endl << endl;

		cout << "zadej volbu z menu: ";
		cin >> volba;
		cin.ignore();

		switch (volba) {
		case 1:

			cout << "vypis vsech osob" << endl << endl;
			for (int i = 0; i < pocet; i++) {
				cout << i + 1 << ".osoba: " << pole[i].jmeno << ", vek: " << pole[i].vek << ", pohlavi: " << pole[i].pohlavi << endl;
			}
			system("pause");
			break;
		case 2:

			cout << "vypis vsech zen" << endl << endl;
			for (int i = 0; i < pocet; i++) {
				if (pole[i].pohlavi == "zena") {
					cout << i + 1 << ".osoba: " << pole[i].jmeno << ", vek: " << pole[i].vek << ", pohlavi: " << pole[i].pohlavi << endl;

				}
			}
			system("pause");
			break;
		case 3:

			cout << "vypis vsech muzu" << endl << endl;
			for (int i = 0; i < pocet; i++) {
				if (pole[i].pohlavi == "muz")
				{
					cout << i + 1 << ".osoba: " << pole[i].jmeno << ", vek: " << pole[i].vek << ", pohlavi: " << pole[i].pohlavi << endl;

				}
			}
			system("pause");
			break;
		case 4:
			cout << "Zadejte novou osobu: " << endl << endl;

		/*case 4:
			system("cls");
			cout << "konec programu..." << endl << endl;
			break;*/
		}
	} while (volba != 4);

	system("pause");
	return 0;
}