#include "chifr.h"
#include <iostream>
#include <string>

using namespace std;

string chifr::encrypt(string in, const int key)
{
    int array_size = in.length();
    int array_height = (array_size/key) + ((array_size%key > 0) ? 1 : 0);
    int lower_string_lenght = in.length()%key;
    int kolvo_zvezd = (lower_string_lenght > 0) ? key - lower_string_lenght : 0;

    char ** matr= new char*[array_height];
    for (int i =0; i<array_height; i++) matr[i] = new char[key];

    string output;

    for (int i = 0; i < kolvo_zvezd; i++) {
        matr[array_height-1][(key-1)-i] = '*';
    }
    int charId = 0;
    for (int i = 0; i < array_height; i++) {
        for (int j = 0; j < key; j++) {
            if (matr[i][j] == '*') continue;

            matr[i][j] = in.at(charId);
            charId++;
        }
    }


    for (int i = 0; i < key; i++) {
        for (int j = 0; j < array_height; j++) {
            if (matr[j][(key-1)-i] == '*') continue;
            output+=matr[j][(key-1)-i];
        }
    }
    for (int i = 0; i < array_height; i++) {
        delete[] matr[i];
    }
    delete[] matr;
    return output;
}
string chifr::decrypt(string in, const int key)
{
    int array_height = (in.length()/key) + ((in.length()%key > 0) ? 1 : 0);
    int lower_string_lenght = in.length()%key;
    int kolvo_zvezd = (lower_string_lenght > 0) ? key - lower_string_lenght : 0;

    char ** matrix = new char*[array_height];
    for (int i =0; i<array_height; i++) matrix[i] = new char[key];

    string output;

    for (int i = 0; i < array_height; i++) {
        for (int j = 0; j < key; j++) {
            matrix[i][j] = '\0';
        }
    }
    for (int i = 0; i< kolvo_zvezd; i++) {
        matrix[array_height-1][(key-1)-i] = '*';
    }
    int charId = 0;
    for (int i = 0; i < key; i++) {
        for (int j = 0; j < array_height; j++) {
            if (matrix[j][(key-1)-i] == '*') continue;

            matrix[j][(key-1)-i] = in.at(charId);
            charId++;
        }
    }
    for (int i = 0; i < in.length(); i++) {
        int y = i/key;
        int x = (i%key);

        char c = matrix[y][x];

        if (c != '\0') {
            output+=c;
        }
    }
    for (int i = 0; i < array_height; i++) {
        delete[] matrix[i];
    }
    delete[] matrix;
    return output;
}
