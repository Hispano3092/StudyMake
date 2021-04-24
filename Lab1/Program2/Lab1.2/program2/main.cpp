#include <stdio.h>
#include <iostream>
#include <string>
#include "/home/student/my_cplusplus_programs/Labtimp/Lab1/Program2/Lab1.2/program2/chifr.h"
using namespace std;

string encrypt(string in, const int key);
string decrypt(string in, const int key);

int main(int argc, char **argv)
{
    chifr enc;
    int COLS = 10;

    string public_message = "GERALTISRIVII";
    string privat_message = enc.encrypt(public_message, COLS);
    string decode_message = enc.decrypt(privat_message, COLS);

    cout << public_message << endl;
    cout << privat_message << endl;
    cout << decode_message << endl;

    return 0;
}
