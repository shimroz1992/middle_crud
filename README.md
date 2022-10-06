## Install

### Clone the repository

```bash
git clone https://github.com/shimroz1992/middle_crud
cd 

```

### Check your Ruby version

```bash
ruby -v
```

The ouput should start with something like `ruby 3.0.0`

If not, install the right ruby version using rvm (it could take a while):

```bash
rvm install "ruby-3.0.0"
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler):

```bash
bundle
```

### Update database.yml file
In database.yml file, edit the database configuration as required.

### Initialize the database

```ruby
rails db:create db:migrate db:seed
```

### Serve

```ruby
rails s
```
### Below is the postman collection
```bash

{
	"info": {
		"_postman_id": "c9a07cf7-c782-4d32-9bb2-3cf1f6ab751b",
		"name": "Middeware",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json",
		"_exporter_id": "23734544"
	},
	"item": [
		{
			"name": "http://localhost:3000/api/v1/users.csv",
			"request": {
				"method": "GET",
				"header": [
					{
						"key": "username",
						"value": "'test_user'",
						"type": "text"
					},
					{
						"key": "password",
						"value": "'123456'",
						"type": "text"
					}
				],
				"url": {
					"raw": "http://localhost:3000/api/v1/users.csv",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users.csv"
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users"
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users",
			"request": {
				"method": "POST",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users?username=test_user&password=123456",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users"
					],
					"query": [
						{
							"key": "username",
							"value": "test_user"
						},
						{
							"key": "password",
							"value": "123456"
						}
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/8?password=12345678",
			"request": {
				"method": "PATCH",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/2?username=test2",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"2"
					],
					"query": [
						{
							"key": "username",
							"value": "test2"
						}
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/4",
			"request": {
				"method": "DELETE",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/4",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"4"
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/2/tasks",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/2/tasks",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"2",
						"tasks"
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/2/tasks?task_name=test_task&aim=test_aim",
			"request": {
				"method": "POST",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/2/tasks/?task_name=test_task1&aim=aim1",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"2",
						"tasks",
						""
					],
					"query": [
						{
							"key": "task_name",
							"value": "test_task1"
						},
						{
							"key": "aim",
							"value": "aim1"
						}
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/2/tasks/18?task_name=test_task1",
			"request": {
				"method": "PATCH",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/2/tasks/18?task_name=test_task1",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"2",
						"tasks",
						"18"
					],
					"query": [
						{
							"key": "task_name",
							"value": "test_task1"
						}
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/2/tasks/18",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/2/tasks/18",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"2",
						"tasks",
						"18"
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/2/tasks/18",
			"request": {
				"method": "DELETE",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/2/tasks/18",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"2",
						"tasks",
						"18"
					]
				}
			},
			"response": []
		},
		{
			"name": "http://localhost:3000/api/v1/users/2/tasks.csv",
			"request": {
				"method": "GET",
				"header": [],
				"url": {
					"raw": "http://localhost:3000/api/v1/users/2/tasks.csv",
					"protocol": "http",
					"host": [
						"localhost"
					],
					"port": "3000",
					"path": [
						"api",
						"v1",
						"users",
						"2",
						"tasks.csv"
					]
				}
			},
			"response": []
		}
	]
}

```
### postman demo

https://user-images.githubusercontent.com/16288470/194367719-f03d35d2-559f-49ad-888d-668ed276b68c.mp4


### csv demo

https://user-images.githubusercontent.com/16288470/194367777-4ca0eb42-23a8-4f56-922c-8242c1f79d30.mp4

