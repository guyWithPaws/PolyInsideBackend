import 'package:poly_inside_server/database/database.dart';
import 'package:poly_inside_server/generated/protobufs/service.pbgrpc.dart'
    as grpc;

extension EbanutiyCast on grpc.Review {
  Review castFromGRPCToDrift() => Review(
        id: reviewId,
        userId: userId,
        professorId: professorId,
        comment: comment,
        status: status,
        objectivity: objectivity,
        loyalty: loyalty,
        professionalism: professionalism,
        harshness: harshness,
        date: date,
        rating: rating,
      );
}
