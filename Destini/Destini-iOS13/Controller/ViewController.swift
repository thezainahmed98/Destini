//
//  ViewController.swift
//  Destini-iOS13
//


import UIKit

class ViewController: UIViewController {
    
    var currentStory: Int = 0
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storybrain = StoryBrain()
    
    @IBAction func userChoice(_ sender: UIButton) {
        
        let buttonPressed = sender.tag
        let currentStoryElement: Story = storybrain.storyArray[currentStory]
        
        if buttonPressed == 1 {
            currentStory = currentStoryElement.choice1Destination
        }
        else if (buttonPressed == 2) {
            currentStory = currentStoryElement.choice2Destination
        }
        currentUI(index: currentStory)
    }
    
    override func viewDidLoad() {
        // Identify which button was pressed
        choice1Button.tag = 1
        choice2Button.tag = 2
        currentUI(index: 0)
        super.viewDidLoad()
    }
    
    // Display the text in UI based on index received
    func currentUI(index: Int) {
        let currentStory: Story = storybrain.storyArray[index]
        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }
}
