#include <iostream>
#include <string>
#include <fstream>
using namespace std;

class Student {
private:
	string jmeno;
	int vek;
public:
	Student() { }
	Student(string jmeno, int vek) {
		this->jmeno = jmeno;
		this->vek = vek;
	}
	string dejJmeno() { return jmeno; }
	int dejVek() { return vek; }
};
class Skola {
private:
	string nazev;
	Student studenti[1000];
	int pocet;
public:
	Skola() {}
	Skola(string nazev, string soubor) {
		this->nazev = nazev;
		pocet = 0;
		ifstream cteni(soubor);
		if (cteni.fail()) {
			cout << "chyba nacteni dat........................lol.........." << endl;
			system("pause");
			exit(0);
		}
		int vek;
		string jmeno;
		while (cteni >> jmeno >> vek) {
			studenti[pocet] = Student(jmeno, vek);
			pocet++;
		}
		cteni.close();
	}
	string dejNazev() { return nazev; }
	void vypisStudenty() {
		for (int i = 0; i < pocet; i++)
		{
			cout << studenti[i].dejJmeno() << ", " << studenti[i].dejVek() << "let." << endl;
		}
	}
	
};
int main() {
	Skola skola1("SPS Teplice", "studenti.txt");
	cout << " nase skola: " << skola1.dejNazev() << endl;
	skola1.vypisStudenty();

	cout << "kontrolni text" << endl;
	system("pause");
	return 0;
}
