/*
 iOS Techdegree
 Project 01 - Soccer League Coordinator in Swift
 Author: Ken W. Alger
 Author Contact: kenalger@comcast.net
 Date: 10 June 2016
 */

// Player Collections

var joeSmith: [String: Any] = [
    "name": "Joe Smith",
    "height": 42.0,
    "experience": true,
    "guardian": "Jim and Jan Smith"
]

var jillTanner: [String: Any] = [
    "name": "Jill Tanner",
    "height": 36.0,
    "experience": true,
    "guardian": "Clara Tanner"
]

var billBon: [String: Any] = [
    "name": "Bill Bon",
    "height": 43.0,
    "experience": true,
    "guardian": "Sara and Jenny Bon"
]

var evaGordon: [String: Any] = [
    "name": "Eva Gordon",
    "height": 45.0,
    "experience": false,
    "guardian": "Wendy and Mike Gordon"
]

var mattGill: [String: Any] = [
    "name": "Matt Gill",
    "height": 40.0,
    "experience": false,
    "guardian": "Charles and Sylvia Gill"
]

var kimmyStein: [String: Any] = [
    "name": "Kimmy Stein",
    "height": 41.0,
    "experience": false,
    "guardian": "Bill and Hillary Stein"
]

var sammyAdams: [String: Any] = [
    "name": "Sammy Adams",
    "height": 45.0,
    "experience": false,
    "guardian": "Jeff Adams"
]

var karlSaygan: [String: Any] = [
    "name": "Karl Saygan",
    "height": 42.0,
    "experience": true,
    "guardian": "Heather Bledsoe"
]

var suzaneGreenberg: [String: Any] = [
    "name": "Suzane Greenberg",
    "height": 44.0,
    "experience": true,
    "guardian": "Henrietta Dumas"
]

var salDali: [String: Any] = [
    "name": "Sal Dali",
    "height": 41.0,
    "experience": false,
    "guardian": "Gala Dali"
]

var joeKavalier: [String: Any] = [
    "name": "Joe Kavalier",
    "height": 39.0,
    "experience": false,
    "guardian": "Sam and Elaine Kavalier"
]

var benFinkelstein: [String: Any] = [
    "name": "Ben Finkelstein",
    "height": 44.0,
    "experience": false,
    "guardian": "Aaron and Jill Finkelstein"
]

var diegoSoto: [String: Any] = [
    "name": "Diego Soto",
    "height": 41.0,
    "experience": true,
    "guardian": "Robin and Sarika Soto"
]

var chloeAlaska: [String: Any] = [
    "name": "Chloe Alaska",
    "height": 47.0,
    "experience": false,
    "guardian": "David and Jamie Alaska"
]

var arnoldWillis: [String: Any] = [
    "name": "Arnold Willis",
    "height": 43.0,
    "experience": false,
    "guardian": "Claire Willis"
]

var phillipHelm: [String: Any] = [
    "name": "Phillip Helm",
    "height": 44.0,
    "experience": true,
    "guardian": "Thomas Helm and Eva Jones"
]

var lesClay: [String: Any] = [
    "name": "Les Clay",
    "height": 42.0,
    "experience": true,
    "guardian": "Wynonna Brown"
]

var herschelKrustofski: [String: Any] = [
    "name": "Herschel Krustofski",
    "height": 45.0,
    "experience": true,
    "guardian": "Hyman and Rachel Krustofski"
]

// League Players Array

var players = [joeSmith, jillTanner, billBon, evaGordon, mattGill, kimmyStein,
               sammyAdams, karlSaygan, suzaneGreenberg, salDali, joeKavalier, benFinkelstein,
               diegoSoto, chloeAlaska, arnoldWillis, phillipHelm, lesClay, herschelKrustofski
]

// Team Dictionary

var teams = [
    ["name": "Raptors", "practiceTime": "March 18, 1:00 pm"],
    ["name": "Sharks", "practiceTime": "March 17, 3:00 pm"],
    ["name": "Dragons", "practiceTime": "March 17, 1:00 pm"]
]

// Team assignment
var team: Int = 0

// Handle even distribution of experienced vs. inexperienced
func sortExperience() {
    var seasonedPlayers: [[Any]] = []
    var rookiePlayers: [[Any]] = []
    
    var count = 0
    
    for player in players {
        // sort by experience
        if player["experience"] as! Bool {
            seasonedPlayers.append([count, player["height"]])
        } else {
            rookiePlayers.append([count, player["height"]])
        }
        count += 1
    }
    
    assignPlayers(seasonedPlayers)
    assignPlayers(rookiePlayers)
}

// EXTRA CREDIT: Height consideration calculation

// Assign players to teams

func assignPlayers(playerGroup: [[Any]]) {
    for player in playerGroup {
        players[player[0] as! Int]["team"] = team
        team += 1
        
        if team == teams.count {
            team = 0
        }
    }
}

// Print guardian letters

func printLetters() {
    for player in players {
        print("Hello \(player["guardian"]!): \n\(player["name"]!) has been assigned" +
            "to the \(teams[player["team"] as! Int]["name"]!) team." +
            " \nThe first practice will be at " +
            "\(teams[player["team"] as! Int]["practiceTime"]!). \n\n")
    }
}

sortExperience()
printLetters()