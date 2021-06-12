// chunchunmaru
#include <bits/stdc++.h>
#define int int64_t
using namespace std;
#define dbg(x) cout << #x; debug(x);
#define all(x) x.begin(), x.end()
template<typename T>void debug(vector<T> x){
    cout << " : [ ";
    for (int i=0;i<x.size()-1;++i)
        cout << x[i] << ", ";
    cout << x[x.size()-1] << " ]" << '\n';
}
template<typename T, typename S>void debug(unordered_map<T,S> x){
    cout << " : \n{\n";
    for (auto i : x){
        cout << "    " << i.first << " : " << i.second << '\n';
    }
    cout << "}" << '\n';
}
template<typename T, typename S>void debug(map<T,S> x){
    cout << " : \n{\n";
    for (auto i : x){
        cout << "    " << i.first << " : " << i.second << '\n';
    }
    cout << "}" << '\n';
}
template<typename T>void debug(T x){
    cout << " : " << x << '\n';
}
template<typename T>void debug(set<T> x){
    vector<T> temp;
    for (auto i:x)temp.push_back(i);
    debug(temp);
}
void kotatsu() {
    
}
int32_t main () {
    ios_base::sync_with_stdio(0);cin.tie(0);
    int t = 1; 
    // cin >> t;
    while (t--){
        kotatsu();
    }
}