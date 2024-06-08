//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Shadow  on 06/06/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss)var dismiss

    var body: some View {
        VStack(spacing: 12) {
            Text("Welcome to Instagram, bhoyar_kapil")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.horizontal, 24)
                .multilineTextAlignment(.center)
            
            Text("Click below complete registration and start using Instagram.")
                .font(.footnote)
//                .foregroundStyle(Color(.gray))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 24)
            
            Button {
                print("Complete sign up")
            } label: {
                Text("Complete Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(RoundedRectangle(cornerRadius: 8))
            }
            .padding(.vertical)
        }
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}
