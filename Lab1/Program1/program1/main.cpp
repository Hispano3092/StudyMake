#include <iostream>
#include "/home/student/my_cplusplus_programs/Labtimp/Lab1/Program1/program1/modAlphaCipher.h"
using namespace std;

void check(const wstring& Text, const wstring& key)
{
    wstring cipherText;
    wstring decryptedText;
    modAlphaCipher cipher(key);
    cipherText = cipher.encrypt(Text);
    decryptedText = cipher.decrypt(cipherText);
    wcout<<L"key=" << key <<endl;
    wcout<<Text<<endl;
    wcout<<cipherText<<endl;
    wcout<<decryptedText<<endl;
    if (Text == decryptedText)
        wcout<<L"ok\n";
    else
        wcout<<L"err\n";
}

int main(int argc, char **argv)
{
    locale loc("ru_RU.UTF-8");
    locale::global(loc);
    check(L"КОТБОРИС", L"МЯУ");
    return 0;
}
