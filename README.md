# Apartment-app

## Introduction

We're going to build an app for Apartments
create the following database structure:

- You will have two models (and their corresponding tables) `Apartment` and `Tenant`,
- A Tenant `belongs_to` an apartment and an apartment `has_many` tenants.

## Instructions

**Before ANYTHING, run `bundle install`**

#### Migrations

Write migrations to create the following tables:

**Apartments**

| **id** |      **address**      |
| :----: | :----------------: |
|   1    | Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979 |
|   2    | 7768 David Avenue, Greenside, PA 67475-3655 |

**Tenants**

| **id** |        **name**         | **apartment_id** |
| :----: | :---------------------: | :------------ |
|   1    | Casie Effertz | 1 |
|   2    | Dorris Bogan | 5 | 
|   3    | Bernie Schiller | 4 |
|   4    | Manie Dare | 10 |

##### Seed data

After your Active Record models have been properly defined, you can load the
seed data by running `rake db:seed`.

#### Deliverables
> You do not have to follow any specific convention for the routes (verbs and paths), nor the views, in this lab. It may be helpful to write a list of the routes and views you'll need before you begin.

**A user should be able to:**
<!-- * Edit a tenant
    * Change the name of the tenant
    * Change the apartment the tenant lives in -->
<!-- * See the details of a specific apartment
    * See the apartment's address
    * See a list of the tenants living in the apartment
    * NOTE: You will need an ID in the path for this page! -->
<!-- * See a list of all tenants 
    * Click on a tenant to go to the tennants edit page -->
<!-- * See a list of all apartments
    * Click on a apartment to go to the apartment details page -->
<!-- * Create a new apartment
    * With it's address
    * After creating the apartment, send the user to see the list of all apartments -->
<!-- * Create a new tenant
    * With their name
    * After creating the tennant, send the user to see the list of all tennants -->
* Delete an apartment
    * Then send the user to see the list of all apartments
* Delete a tenant
    * Then send the user to see the list of all tenants
* Navigate your application using links instead of typing in the URL bar
