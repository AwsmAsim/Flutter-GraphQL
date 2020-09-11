import 'package:back4appgraphqldemo/consonents.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'consonents.dart';


class GraphQlConfiguration {

  //
  //
  //   static HttpLink httpLink = HttpLink(
  //   uri: 'https://parseapi.back4app.com/graphql',
  //   headers: {
  //     'X-Parse-Application-Id' : kParseApplicationId,
  //     'X-Parse-Client-Key' : kParseClientKey,
  //     'X-Parse-Master-Key': kParseMasterKey,
  //     //'X-Parse-REST-API-Key' : kParseRestApiKey,
  //   },//getheaders()
  // );
  //
  //
  // ValueNotifier<GraphQLClient> client = ValueNotifier(
  //   GraphQLClient(
  //     cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
  //     link: httpLink,
  //   ),
  // );


 GraphQLClient clientToQuery({String sessionToken}) {

   var httpLink = HttpLink(
     uri: 'https://parseapi.back4app.com/graphql',
     headers: {
      'X-Parse-Application-Id' : kParseApplicationId,
      'X-Parse-Client-Key' : kParseClientKey,
      'X-Parse-Master-Key': kParseMasterKey,
      //'X-Parse-REST-API-Key' : kParseRestApiKey,
    },
   );


   return GraphQLClient(
     cache: OptimisticCache(dataIdFromObject: typenameDataIdFromObject),
     link: httpLink,
   );
 }


}