#模拟退火算法
\\Dong
\\2016.03.30

>Simulated annealing (SA) is a probabilistic technique for approximating the global optimum of a given function. Specifically, it is a metaheuristic to approximate global optimization in a large search space. It is often used when the search space is discrete (e.g., all tours that visit a given set of cities). For problems where finding the precise global optimum is less important than finding an acceptable local optimum in a fixed amount of time, simulated annealing may be preferable to alternatives such as brute-force search or gradient descent.

>The method was independently described by Scott Kirkpatrick, C. Daniel Gelatt and Mario P. Vecchi in 1983, and by Vlado ?erny in 1985.
Cite from [Wikipedia](https://en.wikipedia.org/wiki/Simulated_annealing)

退火指的不是火灾退火，而是指的固体加热至溶化后冷却退火的过程过程。

之前用Monte Carlo方法模拟固体在恒定温度下达到热平衡的过程：
* Mente Carlo方法算法简单
* 必须大量采样
* 计算量大
**What is Monte Carlo method?? **

1953年，Metropolis提出重要性采样法：
>给定以粒子相对位置表征的初始状态 $i$, 作为固体的当前状态, 其能量为$E_i$. 然后用摄动装置使随机选取的某个粒子的位移随机地产生一个微小变化, 得到新状态$E_j$. 如果$E_i > E_j$ , 则新状态为重要状态. 否则, 该状态是否为“重要”状态, 要看固体处于该状态的几率来确定
>固体处于状态 $i$ 和  $j$ 的几率的比值为:
>              $$r =  e^((E_i –E_j )/ kt)$$
