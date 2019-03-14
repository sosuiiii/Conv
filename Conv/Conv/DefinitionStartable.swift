//
//  DefinitionStartable.swift
//  Conv
//
//  Created by Yudai.Hirose on 2019/03/14.
//  Copyright © 2019 廣瀬雄大. All rights reserved.
//

import Foundation

public protocol DefinitionStartable {
    func start<C: C>() -> C
    func start<C: C>(with conv: C) -> C
}
