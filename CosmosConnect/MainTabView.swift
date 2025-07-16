import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            homePage()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Search Page")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }

            Text("Profile Page")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    MainTabView()
}
