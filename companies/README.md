### DBT installation &  Setup

Installation of dbt using pip 
    
    pip install dbt-postgres

Now check the version of the dbt 

        dbt --version


Start the new dbt Project

        dbt init

-   Enter the name of the Project

-   Enter type Database in our case it is Postgres 

This command will grt you configuration directory of .dbt file

        dbt debug --config-dir



Try running the following commands:
- dbt run
- dbt test

All dbt models in [models](/models)


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
