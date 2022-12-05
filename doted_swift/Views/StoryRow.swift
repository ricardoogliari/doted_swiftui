//
//  StoryRwo.swift
//  doted_swift
//
//  Created by Ricardo on 27/11/22.
//

import SwiftUI

struct StoryRow: View {
    var story: Story

    var body: some View {
        HStack (alignment: .top) {
            Image(systemName: "person.wave.2")
                .resizable()
                .frame(width: 24, height: 24)
                .padding(12)
            VStack(alignment: .leading) {
                Text(story.name).font(.title2).padding(.bottom, 4)
                Text(story.description).lineLimit(5)
            }
            Text("0.5km").padding(12)

            Spacer()
        }
    }
}

struct StoryRow_Previews: PreviewProvider {
    static var previews: some View {
        StoryRow(story: stories[0])
    }
}
