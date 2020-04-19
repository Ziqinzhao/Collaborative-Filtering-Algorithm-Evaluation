# Project 4: Algorithm implementation and evaluation: Collaborative Filtering

### [Project Description](doc/project4_desc.md)

Term: Spring 2020

+ Team # 5
+ Project title: Collaborative Filtering Algorithm Evaluation
+ Team members
	+ Ziqin Zhao
	+ Xinlin Zhang
	+ Jiadong Wu
	+ Kaiqi Wang
	+ Marko Konte

+ **Project summary:** 
In this project, we created a recommendation model based on datasets of movie ratings. The goal for the team was to run two types of sets of algorithims, regularization, and postprocessing techniques and compare the performance of each in being able to predict on a test set. 

	+ **Method 1**: 
		+ Algorithim: 
			+ A1 = Stochastic Gradient Descent (SGD)
		+ Regularization: 
			+ R1 = Penalty of Magnitudes (PoM)
			+ R2 = Bias and Intercepts (B&I)
		+ Postprocessing: 
			+ P1 = SVD with KNN
	
	+ **Method 2**:
		+ Algorithim:
			+ A2 = Gradient Descent with Probablisitic Assumptions (ALG)
		+ Regularization:
			+ None used for Method 2
		+ Postprocessing: 
			+ P2 = SVD with KNN
			
	+ **Method 1 Result**: 
		+ Pre Postprocessing: 1.6425
		+ With Postprocessing: **1.4954**
		
	+ **Method 2 Result**:
		+ Pre Postprocessing: 1.1786
		+ With Postprocessing: **1.1744**

**Conclusion**: Our results found that the better performing model is Method 2, which utilized the GDP algorithim. It performed better in pre and post processing. Also, it was found that utilizing a postprocessing method with the KNN algorithm incrementally increases performance in all scenarios. However, due to the nature of how GDP is calculated, this type of algorithm could be of higher cold start issue risk, which Stochastic Gradient Descent is better suited for. Both approaches are very computationally intensive.

**Contribution statement**: 

*Ziqin Zhao:*

*Xinlin Zhang:*

*Jiadong Wu:*

*Kaiqi Wang:*

*Marko Konte:* Initial research into different algorithims to be used, testing algorithim implementation with different datasets. Created the README file, presentation, and presented the project. 



Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
