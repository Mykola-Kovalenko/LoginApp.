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
    let contacts: Contacts
}

struct Profile {
    let name: String
    let surname: String
    let bio: String
}
struct Contacts{
    let facebook: String
    let instagramm: String
    let telegramm: String
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
            ), contacts: Contacts(
                facebook: "https://www.facebook.com/profile.php?id=100007911095829",
                instagramm: "https://instagram.com/nik_kovalenko?igshid=YmMyMTA2M2Y=",
                telegramm: "https://t.me/nik_koval")
        )
    }
}
