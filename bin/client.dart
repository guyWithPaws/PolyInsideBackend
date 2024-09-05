import 'package:grpc/grpc.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart';

void main(List<String> args) {
  final channel = ClientChannel(
    '194.87.210.193',
    port: 8080,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final stub = SearchServiceClient(channel,
    options: CallOptions(timeout: Duration(seconds: 30)));
  final data = stub.getListProfessor(ListProfessorRequest());
  data.forEach((element) => print(element.name));
}
