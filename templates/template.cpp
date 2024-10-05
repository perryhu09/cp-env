#ifdef ONPC
    #define _GLIBCXX_DEBUG
#endif

#include <bits/stdc++.h>
using namespace std;

typedef long long ll;
using pii = pair<int, int>;

int solve(){
    
    return 0;
}

int32_t main(){
    ios_base::sync_with_stdio(0); 
    cin.tie(0);
    int tc = 1; 
    //cin >> tc;
    for(int i = 1; i <= tc; i++){
        if(solve()){
            break;
        }
        #ifdef ONPC
            cout << "__________________________" << endl;
        #endif
    }
    #ifdef ONPC
        cerr << endl << "finished in " << clock() * 1.0 / CLOCKS_PER_SEC << " sec" << endl;
    #endif
    return 0;
}
