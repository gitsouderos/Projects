# Reinforcement Learning Project

## Project Overview
This project focuses on implementing a Deep Q-Network (DQN) to train an agent to play the Atari game Pong effectively. DQNs combine traditional reinforcement learning with deep learning and neural networks, making them suitable for approximating Q-values in large or continuous state-spaces like those found in Atari games. The project also explores the CartPole environment as a simpler starting point before tackling Pong.

## Authors
- Giorgos Tsouderos
- Jonas Dixon
- Yagna Karthik Vaka
- Markus Rupp

## Date
May 2024

## Introduction
### CartPole
The CartPole environment, provided by OpenAI’s Gym, involves an agent interacting with a system where a pole is attached by an un-actuated joint to a cart that moves along a frictionless track. The agent's goal is to prevent the pole from falling by applying forces to the cart.

### Pong
The Pong environment, based on the classic Atari game, is more complex and visually rich. The agent controls a paddle and aims to hit the ball back and forth with an opponent, scoring points by getting the ball past the opponent’s paddle.

## Implementation
### Algorithm
Q-learning, a model-free reinforcement learning algorithm, aims to learn the value of the optimal action-selection policy. The DQN utilizes experience replay and a target network to stabilize training. 

#### Key Techniques:
- **Experience Replay**: Stores the agent's experiences and samples them randomly to break correlations between consecutive inputs.
- **Target Network**: Used to stabilize training and improve convergence.

### CartPole
An epsilon-greedy policy is implemented where the agent acts randomly with a probability of epsilon and greedily with a probability of 1-epsilon. Epsilon decays as training progresses, encouraging exploration early and exploitation later.

### Pong
For Pong, preprocessing is done using the AtariPreprocessing function from Gymnasium. Multiple frames are stacked to capture temporal dynamics. A CNN architecture processes the high-dimensional input space. Two models were implemented:
- **Epsilon-Greedy Policy**: Epsilon decays linearly from 1 to 0.01.
- **Noisy Networks**: Introduced noisy layers to allow stochastic exploration without needing epsilon.

### Challenges
- **Tensor Dimension Issues**: Resolved by adjusting tensor dimensions at various steps.
- **Convergence in Pong**: Initially, the epsilon-greedy model did not converge, oscillating between returns of -20 and -15. Tuning epsilon decay improved performance.

### Hyperparameter Tuning
Hyperparameters were initially set based on project instructions and then tuned for better performance. This included adjusting epsilon values and training epochs. Noisy networks were used as an alternative to extensive epsilon tuning.

## Results
### CartPole
The DQN was trained and evaluated on the CartPole-V1 environment. The training process showed performance peaking at around 100 iterations, with returns stabilizing between episodes 150 and 200.

### Pong
- **Epsilon-Greedy Model**: Final returns around 13 after 1000 episodes.
- **Noisy-Net Model**: Final returns around 10 after 250 episodes. Training beyond this did not improve performance due to GPU limitations.

## Discussion
### CartPole
The DQN effectively learned to balance the pole on the cart, with hyperparameter tuning improving the agent's learning efficiency and convergence.

### Pong
The Pong environment posed more challenges due to its complexity. Techniques like frame stacking and noisy networks improved the agent's ability to learn the game's dynamics, leading to better and faster learning.

## References
1. David Silver et al., "Playing Atari with Deep Reinforcement Learning," 1994.
2. Volodymyr Mnih et al., "Human-level control through deep reinforcement learning," 2015.
3. Meire Fortunato et al., "Noisy Networks for Exploration," arXiv:1706.10295, 2019.
