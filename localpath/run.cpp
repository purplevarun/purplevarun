#include <iostream>
using namespace std;
string extension (string file) {
    string ext = "";
    int n = file.length();
    for (int i=n-1; i>=0; --i) {
        if (file[i]=='.')
            break;
        ext = file[i] + ext;
    }
    return ext;
}
string getCmd (string file, string ext) {
    if (ext == "c" || ext == "cc" || ext == "cpp")
        return "g++ -std=c++14 -Ofast -DVarunDebug -Wl,--stack=1000000000 " + file + " && a.exe && del a.exe";
    if (ext == "java")
        return "java " + file;
    if (ext == "py")
        return "python " + file;
    if (ext == "js")
        return "nodemon " + file;
    if (ext == "sql")
        return "mysql -u root --table < " + file;
    return "";
}
int main (int len, char **args) {
    if (len == 1) {
        cout << "no file" << "\n";
        return -1;
    }
    string file = args[1];
    string ext = extension (file);
    string cmd = getCmd (file, ext);
    if (cmd.length()) {
        // cout << cmd << "\n";
        system (cmd.c_str());
    }
    else {
        cout << "incorrect file extension" << "\n";
        return -1;
    }
}