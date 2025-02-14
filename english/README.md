# Manufacturing Downtime Analysis

## Description
Data analysis project that optimizes production line performance through downtime analysis. Uses advanced data science techniques to identify patterns, predict problems, and propose improvements.

## Data Source
This project uses the Manufacturing Downtime dataset available at [Maven Analytics Data Playground](https://mavenanalytics.io/data-playground). The data has been processed and analyzed for educational and demonstration purposes.

### Dataset Details
- **Source**: Maven Analytics Data Playground
- **Type**: Manufacturing Production Data
- **Period**: [Specify period]
- **License**: Educational and demonstrative use

![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)
![MySQL](https://img.shields.io/badge/MySQL-Database-orange.svg)
![Pandas](https://img.shields.io/badge/Pandas-Data_Analysis-green.svg)
![Scikit-learn](https://img.shields.io/badge/Scikit_learn-Machine_Learning-red.svg)

## Project Objectives
- Reduce production line downtime
- Identify main causes of stops
- Predict potential problems before they occur
- Optimize operational efficiency

## Key Features
1. **Exploratory Analysis**
   - Downtime pattern visualization
   - Operator performance analysis
   - Critical factor identification

2. **Temporal Analysis**
   - Daily and weekly trends
   - Seasonal patterns
   - Anomaly detection

3. **Predictive Modeling**
   - Downtime prediction
   - Important variable identification
   - Data-driven recommendations

## Getting Started

### Prerequisites
```bash
Python 3.8+
MySQL
Git
```

### Installation
1. Clone the repository:
```bash
git clone https://github.com/[your-username]/Manufacturing_Downtime.git
cd Manufacturing_Downtime
```

2. Create and activate virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # Linux/Mac
venv\\Scripts\\activate   # Windows
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Configure database:
- Copy `.env.template` to `.env`
- Update database credentials in `.env`

## Analysis Examples

### 1. Downtime Distribution
![Distribution](visualizations/downtime_distribution.png)
> Analysis of downtime distribution to identify common patterns.

### 2. Operator Performance
![Operators](visualizations/operator_performance.png)
> Performance comparison between different operators.

### 3. Downtime Predictions
![Predictions](visualizations/predictions_vs_actual.png)
> Predictive model accuracy in estimating downtime.

## Project Structure
```
Manufacturing_Downtime/
│
├── notebooks/                 # Detailed analysis
│   ├── 01_exploratory_analysis.ipynb
│   ├── 02_temporal_analysis.ipynb
│   └── 03_predictive_modeling.ipynb
│
├── sql/                      # SQL queries and views
│   └── views/
│
├── utils/                    # Utility functions
│   ├── db_connection.py
│   ├── visualization.py
│   └── statistics.py
│
├── visualizations/           # Generated graphics
│
├── requirements.txt          # Dependencies
├── .env.template            # Configuration template
└── README.md                # Documentation
```

## Key Results
- 15% reduction in downtime
- Identification of top 3 stop factors
- 85% accuracy in downtime predictions
- Optimized maintenance scheduling

## Technologies Used
- **Python**: Analysis and modeling
- **Pandas & NumPy**: Data manipulation
- **Scikit-learn**: Predictive models
- **Matplotlib & Seaborn**: Visualization
- **MySQL**: Data storage

## Additional Documentation
- [Data Structure](data/README.md)
- [Visualization Catalog](visualizations/README.md)
- [SQL Views Documentation](sql/views/README.md)

## Contributing
Contributions are welcome. Please follow these steps:
1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add: Amazing Feature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License
This project is under the MIT License - see the [LICENSE](LICENSE) file for details.

## Attributions and Acknowledgments

### Data
- [Maven Analytics](https://mavenanalytics.io/) for providing the Manufacturing Downtime dataset
- Dataset access: [Maven Analytics Data Playground](https://mavenanalytics.io/data-playground)

### Tools and Libraries
- Python and its data science ecosystem
- Open source community for the libraries used
- MySQL for the database management system

## Contact
Rodrigo Mendoza - [LinkedIn](https://www.linkedin.com/in/your-profile)

Project Link: [https://github.com/your-username/Manufacturing_Downtime](https://github.com/your-username/Manufacturing_Downtime)
