//
//  StoryList.swift
//  doted_swift
//
//  Created by Ricardo on 27/11/22.
//

import SwiftUI

struct StoryList: View {
    var body: some View {
        List(stories) { story in
            StoryRow(story: story)
        }
        .padding(EdgeInsets(top: -20, leading: -20, bottom: -20, trailing: -20))
    }
}

struct StoryList_Previews: PreviewProvider {
    static var previews: some View {
        StoryList()
    }
}
