# PolicyMetrics 📊🏛️

**Quantitative Tools for Public Policy Analysis**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Lifecycle: Experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html)

A toolkit for data-driven policy analysis, impact evaluation, and equity assessment.

## Installation 💻

```r
# Install development version from GitHub
devtools::install_github("Nu11ified/PolicyMetrics")

Features
🎯 Policy impact evaluation (Difference-in-Differences, Regression Discontinuity)

📈 Inequality metrics (Gini Coefficient, Theil Index)

📊 Visualization templates for government reporting

📦 Built-in sample policy datasets

📝 Reproducible research workflow tools

library(PolicyMetrics)

# Analyze inequality
data(sample_policy_data)
gini_coeff <- gini(sample_policy_data$outcome)

# Visualize disparities
plot_disparity(sample_policy_data, treatment, outcome)

# Run policy evaluation
did_model <- did_estimate(
  data = sample_policy_data,
  outcome_var = outcome,
  treat_var = treatment,
  time_var = year
)

Included Data
sample_policy_data: Synthetic policy evaluation dataset

state: US state abbreviation (NY, CA)

year: Observation year (2010-2019)

treatment: Policy intervention indicator (0 = control, 1 = treated)

outcome: Policy outcome measure (continuous)

Documentation
r
Copy
# Browse help files
?gini
?did_estimate

# Access tutorials
browseVignettes("PolicyMetrics")

Contributing
Open an issue to discuss changes

Fork the repository

Create a feature branch (git checkout -b feature/your-feature)

Commit changes (git commit -m 'Add amazing feature')

Push to branch (git push origin feature/your-feature)

Open a pull request