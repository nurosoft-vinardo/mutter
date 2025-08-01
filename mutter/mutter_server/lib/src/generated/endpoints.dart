/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import '../endpoints.yaml/message_endpoint.dart' as _i2;
import '../endpoints.yaml/user_info_endpoint.dart' as _i3;
import 'package:serverpod_auth_server/serverpod_auth_server.dart' as _i4;

class Endpoints extends _i1.EndpointDispatch {
  @override
  void initializeEndpoints(_i1.Server server) {
    var endpoints = <String, _i1.Endpoint>{
      'message': _i2.MessageEndpoint()
        ..initialize(
          server,
          'message',
          null,
        ),
      'userInfo': _i3.UserInfoEndpoint()
        ..initialize(
          server,
          'userInfo',
          null,
        ),
    };
    connectors['message'] = _i1.EndpointConnector(
      name: 'message',
      endpoint: endpoints['message']!,
      methodConnectors: {
        'sendMessage': _i1.MethodConnector(
          name: 'sendMessage',
          params: {
            'messageId': _i1.ParameterDescription(
              name: 'messageId',
              type: _i1.getType<String>(),
              nullable: false,
            ),
            'message': _i1.ParameterDescription(
              name: 'message',
              type: _i1.getType<String>(),
              nullable: false,
            ),
          },
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['message'] as _i2.MessageEndpoint).sendMessage(
            session,
            params['messageId'],
            params['message'],
          ),
        ),
        'messageUpdates': _i1.MethodStreamConnector(
          name: 'messageUpdates',
          params: {},
          streamParams: {},
          returnType: _i1.MethodStreamReturnType.streamType,
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
            Map<String, Stream> streamParams,
          ) =>
              (endpoints['message'] as _i2.MessageEndpoint)
                  .messageUpdates(session),
        ),
      },
    );
    connectors['userInfo'] = _i1.EndpointConnector(
      name: 'userInfo',
      endpoint: endpoints['userInfo']!,
      methodConnectors: {
        'getUsers': _i1.MethodConnector(
          name: 'getUsers',
          params: {},
          call: (
            _i1.Session session,
            Map<String, dynamic> params,
          ) async =>
              (endpoints['userInfo'] as _i3.UserInfoEndpoint).getUsers(session),
        )
      },
    );
    modules['serverpod_auth'] = _i4.Endpoints()..initializeEndpoints(server);
  }
}
