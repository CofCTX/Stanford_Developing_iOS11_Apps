//
//  PlayingCard.swift
//  PlayingCard
//
//  Created by Rahimi, Meena Nichole (Student) on 5/28/19.
//  Copyright © 2019 Rahimi, Meena Nichole (Student). All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
	
	var suit: Suit
	var rank: Rank
	
	enum Suit: String, CustomStringConvertible {
		case spades = "♠️"
		case hearts = "♥️"
		case diamonds = "♦️"
		case clubs = "♣️"
		
		static var all = [Suit.spades, .hearts, .diamonds, .clubs]
		
		// MARK: CustomStringConvertible
		
		var description: String { return rawValue }
	}
	
	enum Face: String {
		case jack = "J"
		case queen = "Q"
		case king = "K"
	}
	
	enum Rank: CustomStringConvertible {
		case ace
		case numeric(Int)
		case poker(Face)
		
		var order: Int {
			switch self {
			case .ace : return 1
			case .numeric(let pips) : return pips
			case .poker(let face) :
				switch face {
				case .jack : return 11
				case .queen : return 12
				case .king : return 13
				}
			}
		}
		
		static var all: [Rank] {
			var allRanks: [Rank] = [.ace]
			for pips in 2...10 { allRanks.append(.numeric(pips)) }
			allRanks += [.poker(.jack), .poker(.queen), .poker(.king)]
			return allRanks
		}
		
		// MARK: CustomStringConvertible
		
		var description: String {
			switch self {
			case .ace : return "A"
			case .numeric(let pips) : return String(pips)
			case .poker(let face) : return face.rawValue
			}
		}
	}
	
	// MARK: CustomStringConvertible
	
	var description: String { return "\(suit)\(rank)"}
}
