# SendinblueApiv3::ListsApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_contact_to_list**](ListsApi.md#add_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/add | Add existing contacts to a list
[**create_list**](ListsApi.md#create_list) | **POST** /contacts/lists | Create a list
[**delete_list**](ListsApi.md#delete_list) | **DELETE** /contacts/lists/{listId} | Delete a list
[**get_contacts_from_list**](ListsApi.md#get_contacts_from_list) | **GET** /contacts/lists/{listId}/contacts | Get the contacts in a list
[**get_folder_lists**](ListsApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get the lists in a folder
[**get_list**](ListsApi.md#get_list) | **GET** /contacts/lists/{listId} | Get the details of a list
[**get_lists**](ListsApi.md#get_lists) | **GET** /contacts/lists | Get all the lists
[**remove_contact_to_list**](ListsApi.md#remove_contact_to_list) | **POST** /contacts/lists/{listId}/contacts/remove | Remove existing contacts from a list
[**update_list**](ListsApi.md#update_list) | **PUT** /contacts/lists/{listId} | Update a list


# **add_contact_to_list**
> PostContactInfo add_contact_to_list(list_id, contact_emails)

Add existing contacts to a list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

list_id = "list_id_example" # String | Id of the list

contact_emails = SendinblueApiv3::AddRemoveContactToList.new # AddRemoveContactToList | Emails addresses of the contacts


begin
  #Add existing contacts to a list
  result = api_instance.add_contact_to_list(list_id, contact_emails)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->add_contact_to_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| Id of the list | 
 **contact_emails** | [**AddRemoveContactToList**](AddRemoveContactToList.md)| Emails addresses of the contacts | 

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **create_list**
> CreateModel create_list(create_list)

Create a list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

create_list = SendinblueApiv3::CreateList.new # CreateList | Values to create a list


begin
  #Create a list
  result = api_instance.create_list(create_list)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->create_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **create_list** | [**CreateList**](CreateList.md)| Values to create a list | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_list**
> delete_list(list_id)

Delete a list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

list_id = "list_id_example" # String | Id of the list


begin
  #Delete a list
  api_instance.delete_list(list_id)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->delete_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| Id of the list | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_contacts_from_list**
> GetContacts get_contacts_from_list(list_id, opts)

Get the contacts in a list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

list_id = "list_id_example" # String | Id of the list

opts = { 
  modified_since: "modified_since_example", # String | Filter the contacts modified after a given date (YYYY-MM-DD HH:mm:ss)
  limit: 50, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document of the page
}

begin
  #Get the contacts in a list
  result = api_instance.get_contacts_from_list(list_id, opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->get_contacts_from_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| Id of the list | 
 **modified_since** | **String**| Filter the contacts modified after a given date (YYYY-MM-DD HH:mm:ss) | [optional] 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 50]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]

### Return type

[**GetContacts**](GetContacts.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder_lists**
> GetFolderLists get_folder_lists(folder_id, opts)

Get the lists in a folder

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

folder_id = "folder_id_example" # String | Id of the folder

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document of the page
}

begin
  #Get the lists in a folder
  result = api_instance.get_folder_lists(folder_id, opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->get_folder_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **String**| Id of the folder | 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]

### Return type

[**GetFolderLists**](GetFolderLists.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_list**
> GetExtendedList get_list(list_id)

Get the details of a list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

list_id = "list_id_example" # String | Id of the list


begin
  #Get the details of a list
  result = api_instance.get_list(list_id)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->get_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| Id of the list | 

### Return type

[**GetExtendedList**](GetExtendedList.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_lists**
> GetLists get_lists(opts)

Get all the lists

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document of the page
}

begin
  #Get all the lists
  result = api_instance.get_lists(opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->get_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]

### Return type

[**GetLists**](GetLists.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **remove_contact_to_list**
> PostContactInfo remove_contact_to_list(list_id, contact_emails)

Remove existing contacts from a list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

list_id = "list_id_example" # String | Id of the list

contact_emails = SendinblueApiv3::AddRemoveContactToList.new # AddRemoveContactToList | Emails adresses of the contact


begin
  #Remove existing contacts from a list
  result = api_instance.remove_contact_to_list(list_id, contact_emails)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->remove_contact_to_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| Id of the list | 
 **contact_emails** | [**AddRemoveContactToList**](AddRemoveContactToList.md)| Emails adresses of the contact | 

### Return type

[**PostContactInfo**](PostContactInfo.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_list**
> update_list(list_id, update_list)

Update a list

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::ListsApi.new

list_id = "list_id_example" # String | Id of the list

update_list = SendinblueApiv3::UpdateList.new # UpdateList | Values to update a list


begin
  #Update a list
  api_instance.update_list(list_id, update_list)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ListsApi->update_list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **String**| Id of the list | 
 **update_list** | [**UpdateList**](UpdateList.md)| Values to update a list | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


