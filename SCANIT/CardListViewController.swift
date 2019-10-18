//
//  CardListViewController.swift
//  SCANIT
//
//  Created by Kamioka Harufumi on 2019/10/07.
//  Copyright © 2019 Kamioka Harufumi. All rights reserved.
//

import UIKit
import AVFoundation


class CardListViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func backBtn(_ sender: Any) {
        performSegue(withIdentifier: "backSegue",sender: nil)
    }
    
    @IBAction func soundBtn(_ sender: Any) {
        
        let audioPath = Bundle.main.path(forResource: "halal", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
        
        if ( audioPlayer.isPlaying ){
            audioPlayer.stop()
        }
        else{
            audioPlayer.play()
        }
    }
    
    @IBAction func soundVegetarianBtn(_ sender: Any) {
        
        let audioPath = Bundle.main.path(forResource: "vegetarian", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
        
        if ( audioPlayer.isPlaying ){
            audioPlayer.stop()
        }
        else{
            audioPlayer.play()
        }
    }
    
    
    @IBAction func soundGlutenBtn(_ sender: Any) {
        
        
        let audioPath = Bundle.main.path(forResource: "gluten_free", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
        
        if ( audioPlayer.isPlaying ){
            audioPlayer.stop()
        }
        else{
            audioPlayer.play()
        }
    }
    
    
    @IBAction func soundCreditBtn(_ sender: Any) {
        
        
        let audioPath = Bundle.main.path(forResource: "credit_card", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
        
        if ( audioPlayer.isPlaying ){
            audioPlayer.stop()
        }
        else{
            audioPlayer.play()
        }
    }
    
    
    @IBAction func soundQrBtn(_ sender: Any) {
        
        let audioPath = Bundle.main.path(forResource: "qr_payment", ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath: audioPath)
        
        
        // auido を再生するプレイヤーを作成する
        var audioError:NSError?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
        } catch let error as NSError {
            audioError = error
            audioPlayer = nil
        }
        
        // エラーが起きたとき
        if let error = audioError {
            print("Error \(error.localizedDescription)")
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
        
        if ( audioPlayer.isPlaying ){
            audioPlayer.stop()
        }
        else{
            audioPlayer.play()
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
