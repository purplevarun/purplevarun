#include <iostream>
using namespace std;
int main (int len, char **args) {
    string msg="";
    if (len == 1)
        msg = ".";
    else {
        for (int i=1; i<len; ++i) {
            msg += args[i];
            if (i < len - 1)
                msg += "-";
        }
    }
    string first = "git add . && git commit -am " + msg;
    // cout << first << "\n";
    system (first.c_str ());
    system ("git push");
}