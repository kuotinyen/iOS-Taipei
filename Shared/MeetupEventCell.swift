//
//  MeetupEventCell.swift
//  ios-taipei
//
//  Created by TK on 2021/2/9.
//

import SwiftUI

struct MeetupEventCell: View {
    var body: some View {
        HStack(alignment: .top) {
            coverImage
            Spacer()
                .frame(width: Constant.Spacing.CoverImageAndContentLabels)
            VStack(alignment: .leading) {
                Text(Dummy.Text.TitleLabel)
                    .uiFont(Constant.Font.TitleLabel)
                    .foregroundColor(Constant.Color.TitleLabel)
                Text(Dummy.Text.DateLabel)
                    .uiFont(Constant.Font.DateLabel)
                    .foregroundColor(Constant.Color.DateLabel)
                Text(Dummy.Text.HostNameLabel)
                    .uiFont(Constant.Font.HostNameLabel)
                    .foregroundColor(Constant.Color.HostNameLabel)
            }
            Spacer()
            favoriteImage
        }
    }
    
    private var coverImage: some View {
        makeFixedSizeImage(Image("event-fallback"), size: Constant.Size.CoverImage)
    }
    
    private var favoriteImage: some View {
        makeFixedSizeImage(Image("bookmark"), size: Constant.Size.FavoriteIcon)
    }
    
    private func makeFixedSizeImage(_ image: Image, size: CGSize) -> some View {
        image.resizable()
            .scaledToFit()
            .frame(width: size.width, height: size.height)
    }
}

// MARK: - Constant

extension MeetupEventCell {
    private enum Constant {
        enum Font {
            static let TitleLabel: UIFont = .itDescription
            static let DateLabel: UIFont = .itContent
            static let HostNameLabel: UIFont = .itContent
        }
        
        enum Color {
            static let TitleLabel: UIColor = .itBlack
            static let DateLabel: UIColor = .itGrayText
            static let HostNameLabel: UIColor = .itGrayText
            static let CoverImageView: UIColor = .itGray
        }
        
        enum Spacing {
            static let CoverImageAndContentLabels: CGFloat = 16
        }
        
        enum Size {
            static let CoverImage: CGSize = .init(width: 60, height: 60)
            static let FavoriteIcon: CGSize = .init(width: 30, height: 30)
        }
    }
}

// MARK: - Dummy

extension MeetupEventCell {
    private enum Dummy {
        enum Text {
            static let TitleLabel = "淺談 Semaphore in GCD - 關於他的機制與應用場景"
            static let HostNameLabel = "好心人"
            static let DateLabel = "10月27日"
        }
    }
}

// MARK: - PreviewProvider

struct MeetupEventCell_Previews: PreviewProvider {
    static var previews: some View {
        MeetupEventCell()
    }
}
