# Talk - Power Up Your BackEnd Applications with Serverless Architecture & Azure SQL

A demo related with the talk *Power Up Your BackEnd Applications with Serverless Architecture & Azure SQL* using:

* **Azure SQL**
* **Prisma**
* **Vue.Js**
* **Azure Functions** 
* **Azure Static Web Apps**

## 🚀 Resources Used

- **[Visual Studio Code](https://code.visualstudio.com/?WT.mc_id=javascript-52133-gllemos)**
- **[Node.js - version 14.x](https://nodejs.org/en/)**
- **[Postman](https://www.getpostman.com/)**
- **[Azure Functions Core Tools - version 4.x](https://docs.microsoft.com/azure/azure-functions/functions-run-local?WT.mc_id=javascript-52133-gllemos)**
- **[Azure SQL](https://azure.microsoft.com/products/azure-sql/database/?WT.mc_id=javascript-52133-gllemos)**
- **[Azure Free Account](https://azure.microsoft.com/?WT.mc_id=javascript-52133-gllemos)**
- **[Azure Static Web Apps](https://azure.microsoft.com/services/app-service/static/?WT.mc_id=javascript-52133-gllemos)**
- **[Azure Functions Vs Code Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azurefunctions&WT.mc_id=javascript-52133-gllemos)**
- **[Prisma Vs Code Extension](https://marketplace.visualstudio.com/items?itemName=Prisma.prisma&WT.mc_id=javascript-52133-gllemos)**

## How to run the application locally?

<details><summary><b>Project: employee-api</b></summary> 

To execute locally this project you will need to follow the steps bellow:

1. First you need to go to the folder: `employee-api` and run the command:

```bash
> npm install
```

3. Include the Azure SQL Server connection string creating an `.env` file:

```bash
# Database connection string
DATABASE_URL="sqlserver://DB_SERVER_NAME.database.windows.net:1433;database=DB_NAME;user=DB_USER@DB_SERVER_NAME;password={PASSWORD};encrypt=true"

# Shadow database connection string for development
SHADOW_DATABASE_URL="sqlserver://DB_SERVER_NAME.database.windows.net:1433;database=DB_NAME;user=DB_USER@DB_SERVER_NAME;password={PASSWORD};encrypt=true"
```

4. After to install all the Node.Js packages, now you can execute the command:

```bash
> nodemon
```

5. Now you will see the message saying the application is running in the port: `localhost:3001/api/v1` and start to test locally the application (using Postman):

| Objective  |  HTTP Verb |  Route  | 
|---|---|---|
| Create a new Employee  | POST  | localhost:3001/api/v1/employees  | 
| List All Employees  | GET  | localhost:3001/api/v1/employees |   
| List Employee By Id | GET  | localhost:3001/api/v1/employees/:id |   
| Update Employee By Id  | PUT  | localhost:3001/api/v1/employees/:id |  
| Delete Employee By Id  | DELETE  | localhost:3001/api/v1/employees/:id |  

</details>

<details><summary><b>Project: client</b></summary>

To execute locally this project you will need to follow the steps bellow:

1. First you need to go to the folder: `client` and run the command:

```bash
> npm install
```
2. After to install all the Node.Js packages, now you can execute the command:

```bash
> npm run serve
```

3. Now, open your browser on `http://localhost:8080/` 

4. Inside the project you will see a file: `src/Api.js`. This file contains all the Back-End request information (local or Azure Functions). If you want to test the Front-End, just choose which url you want to test in the Back-End:

```js
/**
 * file: src/services/Api.js
 * data: 01/03/2022
 * description: file responsible for initializing 'axios' and HTTP base url requests
 * author: Glaucia Lemos <twitter: @glaucia_lemos86>
 */

import axios from 'axios';

export default () => axios.create({
  // => Back-End (local) 'baseURL'-> will make communication btw Front-End with Back-End
  // baseURL: 'http://localhost:3001/api/v1',

  // ==> Back-End (azure functions)
  baseURL: 'http://localhost:7071/api',
});
```

- **Back-End (local):** http://localhost:3001/api/v1
- **Back-End (Azure Functions):** http://localhost:7071/api

</details>

<details><summary><b>Project: employee-serverless-api</b></summary>

1. First you need to go to the folder: `employee-serverless-api` and run the command:

```bash
> npm install
```

2. Include the Azure SQL Server connection string creating an `.env` file:

```bash
# Database connection string
DATABASE_URL="sqlserver://DB_SERVER_NAME.database.windows.net:1433;database=DB_NAME;user=DB_USER@DB_SERVER_NAME;password={PASSWORD};encrypt=true"

# Shadow database connection string for development
SHADOW_DATABASE_URL="sqlserver://DB_SERVER_NAME.database.windows.net:1433;database=DB_NAME;user=DB_USER@DB_SERVER_NAME;password={PASSWORD};encrypt=true"
```

3. Now create a file called: `local.settings.json` (root of the project) and include this information below:

```json
{
  "IsEncrypted": false,
  "Values": {
    "FUNCTIONS_WORKER_RUNTIME": "node",
    "AzureWebJobsStorage": ""
  },
  "Host": {
    "LocalHttpPort": 7071,
    "CORS": "*"
  }
}
```

4. Now you can execute the command:

```bash
> npm run dev
```

You will see the message saying the application is running in the port: `http://localhost:7071/api/`

| Objective  |  HTTP Verb |  Route  | 
|---|---|---|
| CreateEmployee  | POST  | http://localhost:7071/api/employees  | 
| GetEmployees  | GET  | http://localhost:7071/api/employees |   
| GetEmployee | GET  | http://localhost:7071/api/{id} |   
| UpdateEmployee  | PUT  | http://localhost:7071/api/{id} |  
| DeleteEmployee | DELETE  | http://localhost:7071/api/{id} |  

</details>

## ⭐️ Important Resources

- ✅ **[Oficial Documentation - Azure SQL](https://bit.ly/azure-sql-documentation/)**
- ✅ **[Free Course Microsoft Learn - Azure SQL](https://bit.ly/mslearn-azuresql-course)**
- ✅ **[Free Course - Azure SQL for Beginners](https://bit.ly/free-course-azuresql)**
- ✅ **[Oficial Documentation - Prisma](https://www.prisma.io/docs/)**
- ✅ **[Prisma Blog](https://www.prisma.io/blog/)**
- ✅ **[Build serverless, full stack applications in Azure - Free Course](https://docs.microsoft.com/learn/paths/build-serverless-full-stack-apps-azure/?WT.mc_id=javascript-52133-gllemos)**
- ✅ **[Azure SQL Documentation](https://docs.microsoft.com/azure/azure-sql/azure-sql-iaas-vs-paas-what-is-overview?WT.mc_id=javascript-52133-gllemos)**
- ✅ **[Microsoft SQL Server Support in Prisma is Production-Ready](https://www.prisma.io/blog/prisma-microsoft-sql-server-azure-sql-production-ga)**
- ✅ **[Prisma Client CRUD Docs](https://www.prisma.io/docs/concepts/components/prisma-client/crud)**
- ✅ **[Deploying to Azure Functions Documentation](https://www.prisma.io/docs/guides/deployment/deployment-guides/deploying-to-azure-functions)**

## Questions? Comments? ❓

If you have any questions about the code developed, feel free to open an **[ISSUE HERE](https://github.com/glaucia86/azure-sql-prisma-vue/issues)**. We'll get back to you soon!
