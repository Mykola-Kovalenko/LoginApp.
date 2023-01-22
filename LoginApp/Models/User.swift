//
//  File.swift
//  LoginApp
//
//  Created by Николай Коваленко on 22.01.2023.
//

struct User {
    let login: String
    let password: String
    let information: Profile
}

struct Profile {
    let name: String
    let surname: String
    let bio: String
}


extension User {
    static func getUserData() -> User {
        return User(
            login: "User",
            password: "Password",
            information: Profile(
                name: "Nikolay",
                surname: "Kovalenko",
                bio: """
Привет!
Я родом из города Мариуполь!
Люблю проводить время со своей семьей и смотреть как растет мой сын.
Мы с семьей планируем переехать в США и где я буду продожать развивать свои навыки в IOS dev
"""
            )
        )
    }
}
