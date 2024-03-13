import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goystore_app/data/datasources/category_response_model.dart';
import 'package:goystore_app/data/models/category_response_model.dart';

part 'categories_event.dart';
part 'categories_state.dart';
part 'categories_bloc.freezed.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc() : super(const _Initial()) {
    on<_GetCategories>((event, emit) async {
      emit(const _Loading());
      final result = await CategoryRemoteDatasource().getCategory();
      result.fold(
        (error) => emit(_Error(error)),
        (data) => emit(_Loaded(data)),
      );
    });
  }
}
