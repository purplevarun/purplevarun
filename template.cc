#include <bits/stdc++.h>
#define int long long
#define all(x) x.begin(), x.end()
#define vi vector <int>
#define pb push_back
using namespace std;
template<typename T>void debug(vector<T> x) {
	cout << " : [ ";
	for (int i=0; i<x.size()-1; ++i)
		cout << x[i] << ", ";
	cout << x[x.size()-1] << " ]" << '\n';
}
template<typename T, typename S>void debug(unordered_map<T,S> x) {
	cout << " : \n{\n";
	for (auto i : x) {
		cout << "    " << i.first << " : " << i.second << '\n';
	}
	cout << "}" << '\n';
}
template<typename T, typename S>void debug(map<T,S> x) {
	cout << " : \n{\n";
	for (auto i : x) {
		cout << "    " << i.first << " : " << i.second << '\n';
	}
	cout << "}" << '\n';
}
template<typename T>void debug(T x) {
	cout << " : " << x << '\n';
}
template<typename T>void debug(set<T> x) {
	vector<T> temp;
	for (auto i:x)temp.push_back(i);
	debug(temp);
}
// ---------------------------------------------------------------------------------------
void onigiri () {
	cout << "nanda anta eogo sabetoruu" << endl;
}
// ---------------------------------------------------------------------------------------
signed main () {
#ifndef VarunDebug
	ios_base::sync_with_stdio(0);
	cin.tie (0);
	cout.tie (0);
#endif
	int t = 1;
	cin >> t;
	while (t--) {
		onigiri ();
#ifdef VarunDebug
		for (int i=0; i<40; ++i)
			cout << "-";
		cout << "\n";
#endif
	}
}
