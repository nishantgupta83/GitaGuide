//
//  RemoteScenarioLoader.swift
//  GitaGuide
//
//  Created by Nishant Gupta on 7/1/25.
//


import Foundation

class RemoteScenarioLoader {
    static let shared = RemoteScenarioLoader()
    private init() {}
    private let urlString = "https://widsdomgyan.web.app/data/scenarios_by_chapter.json"

    func fetchScenarios(completion: @escaping (Result<[String: [LifeScenario]], Error>) -> Void) {
        guard let url = URL(string: urlString) else {
            completion(.failure(NSError(domain: "InvalidURL", code: 0)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                print("❌ Network error: \(error)")
                completion(.failure(error))
                return
            }

            guard let data = data else {
                print("❌ No data received")
                completion(.failure(NSError(domain: "NoData", code: 0)))
                return
            }

            do {
                let decoded = try JSONDecoder().decode([String: [LifeScenario]].self, from: data)
                print("✅ Successfully decoded \(decoded.count) chapters")
                completion(.success(decoded))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
