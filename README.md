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
In this project, we created a recommendation model based on datasets of movie ratings. The goal for the team was to run two types of sets of algorithms, regularization, and postprocessing techniques and compare the performance of each in being able to predict on a test set. 

	+ **Method 1**: 
		+ Algorithm: 
			+ A1 = Stochastic Gradient Descent (SGD)
		+ Regularization: 
			+ R1 = Penalty of Magnitudes (PoM)
			+ R2 = Bias and Intercepts (B&I)
		+ Postprocessing: 
			+ P1 = SVD with KNN
	
	+ **Method 2**:
		+ Algorithm:
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

**Conclusion**: Our results found that the better performing model is Method 2, which utilized the GDP algorithm. It performed better in pre and post processing. Also, it was found that utilizing a postprocessing method with the KNN algorithm incrementally increases performance in all scenarios. However, due to the nature of how GDP is calculated, this type of algorithm could be of higher cold start issue risk, which Stochastic Gradient Descent is better suited for. Both approaches are very computationally intensive.

**Contribution statement**: 

*Ziqin Zhao:* Created one algorithm (A1+R1+R2+P2) with Xinlin Zhang, modifying and testing the algorithm implementation with different datasets and finished the final algorithm and evaluated it. Created the Main.Rmd file of the project.

*Xinlin Zhang:* Created one algorithm (A1+R1+R2+P2) with Ziqin Zhao, modifying and testing the algorithm implementation with different datasets and finished the final algorithm and evaluated it. 

*Jiadong Wu:* Created one algorithm (A2+P2) with Kaiqi Wang, modifying and testing the algorithm implementation with different datasets and finished the final algorithm and evaluated it.

*Kaiqi Wang:* Created one algorithm (A2+P2) with Jiadong Wu, modifying and testing the algorithm implementation with different datasets and finished the final algorithm and evaluated it.

*Marko Konte:* Initial research into different algorithms to be used, testing algorithm implementation with different datasets. Created the README file, presentation, and presented the project. 



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
