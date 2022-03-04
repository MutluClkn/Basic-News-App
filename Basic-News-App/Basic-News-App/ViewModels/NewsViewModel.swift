//
//  NewsViewModel.swift
//  Basic-News-App
//
//  Created by Mutlu Çalkan on 4.03.2022.
//

import Foundation

struct NewsTableViewModel {
    let newsList : [News]
    

}

extension NewsTableViewModel{
    func numberOfRowsInSection() -> Int {
        return self.newsList.count
    }
    
    func newsAtIndexPath(_ index: Int) -> NewsViewModel {
        let news = self.newsList[index]
        return NewsViewModel(news: news)
    }
}

struct NewsViewModel {
    let news : News
    
    var title : String {
        return self.news.title
    }
    
    var story : String {
        return self.news.story
    }
}
