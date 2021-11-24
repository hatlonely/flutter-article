# articleapi.api.ArticleServiceApi

## Load the API package
```dart
import 'package:articleapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**articleServiceAddOrUpdateAuthor**](ArticleServiceApi.md#articleserviceaddorupdateauthor) | **POST** /v1/addOrUpdateAuthor | 
[**articleServiceDelArticle**](ArticleServiceApi.md#articleservicedelarticle) | **DELETE** /v1/article/{id} | 
[**articleServiceDelAuthor**](ArticleServiceApi.md#articleservicedelauthor) | **DELETE** /v1/author | 
[**articleServiceDelAuthorByKey**](ArticleServiceApi.md#articleservicedelauthorbykey) | **POST** /v1/delAuthorByKey | 
[**articleServiceGetArticle**](ArticleServiceApi.md#articleservicegetarticle) | **GET** /v1/article/{id} | 
[**articleServiceListArticle**](ArticleServiceApi.md#articleservicelistarticle) | **GET** /v1/articles | 
[**articleServicePing**](ArticleServiceApi.md#articleserviceping) | **GET** /ping | 
[**articleServicePutArticle**](ArticleServiceApi.md#articleserviceputarticle) | **POST** /v1/article | 
[**articleServicePutOrUpdateArticle**](ArticleServiceApi.md#articleserviceputorupdatearticle) | **POST** /v1/putOrUpdateArticle | 
[**articleServiceUpdateArticle**](ArticleServiceApi.md#articleserviceupdatearticle) | **PUT** /v1/article/{id} | 


# **articleServiceAddOrUpdateAuthor**
> ApiAuthorID articleServiceAddOrUpdateAuthor(body)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final ApiAuthor body = ; // ApiAuthor | 

try { 
    final response = api.articleServiceAddOrUpdateAuthor(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServiceAddOrUpdateAuthor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiAuthor**](ApiAuthor.md)|  | 

### Return type

[**ApiAuthorID**](ApiAuthorID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServiceDelArticle**
> JsonObject articleServiceDelArticle(id)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final String id = id_example; // String | 

try { 
    final response = api.articleServiceDelArticle(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServiceDelArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServiceDelAuthor**
> JsonObject articleServiceDelAuthor(id)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final String id = id_example; // String | 

try { 
    final response = api.articleServiceDelAuthor(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServiceDelAuthor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServiceDelAuthorByKey**
> JsonObject articleServiceDelAuthorByKey(body)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final ApiAuthor body = ; // ApiAuthor | 

try { 
    final response = api.articleServiceDelAuthorByKey(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServiceDelAuthorByKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiAuthor**](ApiAuthor.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServiceGetArticle**
> ApiArticle articleServiceGetArticle(id)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final String id = id_example; // String | 

try { 
    final response = api.articleServiceGetArticle(id);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServiceGetArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiArticle**](ApiArticle.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServiceListArticle**
> ApiListArticleRes articleServiceListArticle(offset, limit, authorID)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final int offset = 56; // int | 
final int limit = 56; // int | 
final String authorID = authorID_example; // String | 

try { 
    final response = api.articleServiceListArticle(offset, limit, authorID);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServiceListArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **offset** | **int**|  | [optional] 
 **limit** | **int**|  | [optional] 
 **authorID** | **String**|  | [optional] 

### Return type

[**ApiListArticleRes**](ApiListArticleRes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServicePing**
> JsonObject articleServicePing()



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();

try { 
    final response = api.articleServicePing();
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServicePing: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServicePutArticle**
> ApiArticleID articleServicePutArticle(body)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final ApiArticle body = ; // ApiArticle | 

try { 
    final response = api.articleServicePutArticle(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServicePutArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiArticle**](ApiArticle.md)|  | 

### Return type

[**ApiArticleID**](ApiArticleID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServicePutOrUpdateArticle**
> ApiArticleID articleServicePutOrUpdateArticle(body)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final ApiArticle body = ; // ApiArticle | 

try { 
    final response = api.articleServicePutOrUpdateArticle(body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServicePutOrUpdateArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiArticle**](ApiArticle.md)|  | 

### Return type

[**ApiArticleID**](ApiArticleID.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **articleServiceUpdateArticle**
> JsonObject articleServiceUpdateArticle(id, body)



### Example 
```dart
import 'package:articleapi/api.dart';

final api = Articleapi().getArticleServiceApi();
final String id = id_example; // String | 
final InlineObject body = ; // InlineObject | 

try { 
    final response = api.articleServiceUpdateArticle(id, body);
    print(response);
} catch on DioError (e) {
    print('Exception when calling ArticleServiceApi->articleServiceUpdateArticle: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **body** | [**InlineObject**](InlineObject.md)|  | 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

