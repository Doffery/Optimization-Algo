#ģ���˻��㷨
\\Dong
\\2016.03.30

>Simulated annealing (SA) is a probabilistic technique for approximating the global optimum of a given function. Specifically, it is a metaheuristic to approximate global optimization in a large search space. It is often used when the search space is discrete (e.g., all tours that visit a given set of cities). For problems where finding the precise global optimum is less important than finding an acceptable local optimum in a fixed amount of time, simulated annealing may be preferable to alternatives such as brute-force search or gradient descent.

>The method was independently described by Scott Kirkpatrick, C. Daniel Gelatt and Mario P. Vecchi in 1983, and by Vlado ?erny in 1985.
Cite from [Wikipedia](https://en.wikipedia.org/wiki/Simulated_annealing)

�˻�ָ�Ĳ��ǻ����˻𣬶���ָ�Ĺ���������ܻ�����ȴ�˻�Ĺ��̹��̡�

֮ǰ��Monte Carlo����ģ������ں㶨�¶��´ﵽ��ƽ��Ĺ��̣�
* Mente Carlo�����㷨��
* �����������
* ��������
**What is Monte Carlo method?? **

1953�꣬Metropolis�����Ҫ�Բ�������
>�������������λ�ñ����ĳ�ʼ״̬ $i$, ��Ϊ����ĵ�ǰ״̬, ������Ϊ$E_i$. Ȼ�����㶯װ��ʹ���ѡȡ��ĳ�����ӵ�λ������ز���һ��΢С�仯, �õ���״̬$E_j$. ���$E_i > E_j$ , ����״̬Ϊ��Ҫ״̬. ����, ��״̬�Ƿ�Ϊ����Ҫ��״̬, Ҫ�����崦�ڸ�״̬�ļ�����ȷ��
>���崦��״̬ $i$ ��  $j$ �ļ��ʵı�ֵΪ:
>              $$r =  e^((E_i �CE_j )/ kt)$$
