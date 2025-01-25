// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OpenWeatherModel _$OpenWeatherModelFromJson(Map<String, dynamic> json) {
  return _OpenWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherModel {
  String? get cod => throw _privateConstructorUsedError;
  int? get message => throw _privateConstructorUsedError;
  int? get cnt => throw _privateConstructorUsedError;
  List<OpenWeatherListModel?>? get list => throw _privateConstructorUsedError;
  OpenWeatherCityModel? get city => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherModelCopyWith<OpenWeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherModelCopyWith<$Res> {
  factory $OpenWeatherModelCopyWith(
          OpenWeatherModel value, $Res Function(OpenWeatherModel) then) =
      _$OpenWeatherModelCopyWithImpl<$Res, OpenWeatherModel>;
  @useResult
  $Res call(
      {String? cod,
      int? message,
      int? cnt,
      List<OpenWeatherListModel?>? list,
      OpenWeatherCityModel? city});

  $OpenWeatherCityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$OpenWeatherModelCopyWithImpl<$Res, $Val extends OpenWeatherModel>
    implements $OpenWeatherModelCopyWith<$Res> {
  _$OpenWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherListModel?>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCityModel?,
    ) as $Val);
  }

  /// Create a copy of OpenWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenWeatherCityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $OpenWeatherCityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenWeatherModelImplCopyWith<$Res>
    implements $OpenWeatherModelCopyWith<$Res> {
  factory _$$OpenWeatherModelImplCopyWith(_$OpenWeatherModelImpl value,
          $Res Function(_$OpenWeatherModelImpl) then) =
      __$$OpenWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? cod,
      int? message,
      int? cnt,
      List<OpenWeatherListModel?>? list,
      OpenWeatherCityModel? city});

  @override
  $OpenWeatherCityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$OpenWeatherModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherModelCopyWithImpl<$Res, _$OpenWeatherModelImpl>
    implements _$$OpenWeatherModelImplCopyWith<$Res> {
  __$$OpenWeatherModelImplCopyWithImpl(_$OpenWeatherModelImpl _value,
      $Res Function(_$OpenWeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cod = freezed,
    Object? message = freezed,
    Object? cnt = freezed,
    Object? list = freezed,
    Object? city = freezed,
  }) {
    return _then(_$OpenWeatherModelImpl(
      cod: freezed == cod
          ? _value.cod
          : cod // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as int?,
      cnt: freezed == cnt
          ? _value.cnt
          : cnt // ignore: cast_nullable_to_non_nullable
              as int?,
      list: freezed == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherListModel?>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCityModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherModelImpl implements _OpenWeatherModel {
  _$OpenWeatherModelImpl(
      {this.cod,
      this.message,
      this.cnt,
      final List<OpenWeatherListModel?>? list,
      this.city})
      : _list = list;

  factory _$OpenWeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenWeatherModelImplFromJson(json);

  @override
  final String? cod;
  @override
  final int? message;
  @override
  final int? cnt;
  final List<OpenWeatherListModel?>? _list;
  @override
  List<OpenWeatherListModel?>? get list {
    final value = _list;
    if (value == null) return null;
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OpenWeatherCityModel? city;

  @override
  String toString() {
    return 'OpenWeatherModel(cod: $cod, message: $message, cnt: $cnt, list: $list, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherModelImpl &&
            (identical(other.cod, cod) || other.cod == cod) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.cnt, cnt) || other.cnt == cnt) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, cod, message, cnt,
      const DeepCollectionEquality().hash(_list), city);

  /// Create a copy of OpenWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherModelImplCopyWith<_$OpenWeatherModelImpl> get copyWith =>
      __$$OpenWeatherModelImplCopyWithImpl<_$OpenWeatherModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherModel implements OpenWeatherModel {
  factory _OpenWeatherModel(
      {final String? cod,
      final int? message,
      final int? cnt,
      final List<OpenWeatherListModel?>? list,
      final OpenWeatherCityModel? city}) = _$OpenWeatherModelImpl;

  factory _OpenWeatherModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherModelImpl.fromJson;

  @override
  String? get cod;
  @override
  int? get message;
  @override
  int? get cnt;
  @override
  List<OpenWeatherListModel?>? get list;
  @override
  OpenWeatherCityModel? get city;

  /// Create a copy of OpenWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherModelImplCopyWith<_$OpenWeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

OpenWeatherListModel _$OpenWeatherListModelFromJson(Map<String, dynamic> json) {
  return _OpenWeatherListModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherListModel {
  int? get dt => throw _privateConstructorUsedError;
  OpenWeatherListMainModel? get main => throw _privateConstructorUsedError;
  List<OpenWeatherListWeatherModel?>? get weather =>
      throw _privateConstructorUsedError;
  OpenWeatherListCloudsModel? get clouds => throw _privateConstructorUsedError;
  OpenWeatherListWindModel? get wind => throw _privateConstructorUsedError;
  int? get visibility => throw _privateConstructorUsedError;
  int? get pop => throw _privateConstructorUsedError;
  OpenWeatherListSysModel? get sys => throw _privateConstructorUsedError;
  @JsonKey(name: 'dt_txt')
  String? get dtTxt => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherListModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherListModelCopyWith<OpenWeatherListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherListModelCopyWith<$Res> {
  factory $OpenWeatherListModelCopyWith(OpenWeatherListModel value,
          $Res Function(OpenWeatherListModel) then) =
      _$OpenWeatherListModelCopyWithImpl<$Res, OpenWeatherListModel>;
  @useResult
  $Res call(
      {int? dt,
      OpenWeatherListMainModel? main,
      List<OpenWeatherListWeatherModel?>? weather,
      OpenWeatherListCloudsModel? clouds,
      OpenWeatherListWindModel? wind,
      int? visibility,
      int? pop,
      OpenWeatherListSysModel? sys,
      @JsonKey(name: 'dt_txt') String? dtTxt});

  $OpenWeatherListMainModelCopyWith<$Res>? get main;
  $OpenWeatherListCloudsModelCopyWith<$Res>? get clouds;
  $OpenWeatherListWindModelCopyWith<$Res>? get wind;
  $OpenWeatherListSysModelCopyWith<$Res>? get sys;
}

/// @nodoc
class _$OpenWeatherListModelCopyWithImpl<$Res,
        $Val extends OpenWeatherListModel>
    implements $OpenWeatherListModelCopyWith<$Res> {
  _$OpenWeatherListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
  }) {
    return _then(_value.copyWith(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListMainModel?,
      weather: freezed == weather
          ? _value.weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherListWeatherModel?>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListCloudsModel?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListWindModel?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListSysModel?,
      dtTxt: freezed == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenWeatherListMainModelCopyWith<$Res>? get main {
    if (_value.main == null) {
      return null;
    }

    return $OpenWeatherListMainModelCopyWith<$Res>(_value.main!, (value) {
      return _then(_value.copyWith(main: value) as $Val);
    });
  }

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenWeatherListCloudsModelCopyWith<$Res>? get clouds {
    if (_value.clouds == null) {
      return null;
    }

    return $OpenWeatherListCloudsModelCopyWith<$Res>(_value.clouds!, (value) {
      return _then(_value.copyWith(clouds: value) as $Val);
    });
  }

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenWeatherListWindModelCopyWith<$Res>? get wind {
    if (_value.wind == null) {
      return null;
    }

    return $OpenWeatherListWindModelCopyWith<$Res>(_value.wind!, (value) {
      return _then(_value.copyWith(wind: value) as $Val);
    });
  }

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenWeatherListSysModelCopyWith<$Res>? get sys {
    if (_value.sys == null) {
      return null;
    }

    return $OpenWeatherListSysModelCopyWith<$Res>(_value.sys!, (value) {
      return _then(_value.copyWith(sys: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenWeatherListModelImplCopyWith<$Res>
    implements $OpenWeatherListModelCopyWith<$Res> {
  factory _$$OpenWeatherListModelImplCopyWith(_$OpenWeatherListModelImpl value,
          $Res Function(_$OpenWeatherListModelImpl) then) =
      __$$OpenWeatherListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? dt,
      OpenWeatherListMainModel? main,
      List<OpenWeatherListWeatherModel?>? weather,
      OpenWeatherListCloudsModel? clouds,
      OpenWeatherListWindModel? wind,
      int? visibility,
      int? pop,
      OpenWeatherListSysModel? sys,
      @JsonKey(name: 'dt_txt') String? dtTxt});

  @override
  $OpenWeatherListMainModelCopyWith<$Res>? get main;
  @override
  $OpenWeatherListCloudsModelCopyWith<$Res>? get clouds;
  @override
  $OpenWeatherListWindModelCopyWith<$Res>? get wind;
  @override
  $OpenWeatherListSysModelCopyWith<$Res>? get sys;
}

/// @nodoc
class __$$OpenWeatherListModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherListModelCopyWithImpl<$Res, _$OpenWeatherListModelImpl>
    implements _$$OpenWeatherListModelImplCopyWith<$Res> {
  __$$OpenWeatherListModelImplCopyWithImpl(_$OpenWeatherListModelImpl _value,
      $Res Function(_$OpenWeatherListModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dt = freezed,
    Object? main = freezed,
    Object? weather = freezed,
    Object? clouds = freezed,
    Object? wind = freezed,
    Object? visibility = freezed,
    Object? pop = freezed,
    Object? sys = freezed,
    Object? dtTxt = freezed,
  }) {
    return _then(_$OpenWeatherListModelImpl(
      dt: freezed == dt
          ? _value.dt
          : dt // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListMainModel?,
      weather: freezed == weather
          ? _value._weather
          : weather // ignore: cast_nullable_to_non_nullable
              as List<OpenWeatherListWeatherModel?>?,
      clouds: freezed == clouds
          ? _value.clouds
          : clouds // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListCloudsModel?,
      wind: freezed == wind
          ? _value.wind
          : wind // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListWindModel?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as int?,
      pop: freezed == pop
          ? _value.pop
          : pop // ignore: cast_nullable_to_non_nullable
              as int?,
      sys: freezed == sys
          ? _value.sys
          : sys // ignore: cast_nullable_to_non_nullable
              as OpenWeatherListSysModel?,
      dtTxt: freezed == dtTxt
          ? _value.dtTxt
          : dtTxt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherListModelImpl implements _OpenWeatherListModel {
  _$OpenWeatherListModelImpl(
      {this.dt,
      this.main,
      final List<OpenWeatherListWeatherModel?>? weather,
      this.clouds,
      this.wind,
      this.visibility,
      this.pop,
      this.sys,
      @JsonKey(name: 'dt_txt') this.dtTxt})
      : _weather = weather;

  factory _$OpenWeatherListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenWeatherListModelImplFromJson(json);

  @override
  final int? dt;
  @override
  final OpenWeatherListMainModel? main;
  final List<OpenWeatherListWeatherModel?>? _weather;
  @override
  List<OpenWeatherListWeatherModel?>? get weather {
    final value = _weather;
    if (value == null) return null;
    if (_weather is EqualUnmodifiableListView) return _weather;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OpenWeatherListCloudsModel? clouds;
  @override
  final OpenWeatherListWindModel? wind;
  @override
  final int? visibility;
  @override
  final int? pop;
  @override
  final OpenWeatherListSysModel? sys;
  @override
  @JsonKey(name: 'dt_txt')
  final String? dtTxt;

  @override
  String toString() {
    return 'OpenWeatherListModel(dt: $dt, main: $main, weather: $weather, clouds: $clouds, wind: $wind, visibility: $visibility, pop: $pop, sys: $sys, dtTxt: $dtTxt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherListModelImpl &&
            (identical(other.dt, dt) || other.dt == dt) &&
            (identical(other.main, main) || other.main == main) &&
            const DeepCollectionEquality().equals(other._weather, _weather) &&
            (identical(other.clouds, clouds) || other.clouds == clouds) &&
            (identical(other.wind, wind) || other.wind == wind) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.pop, pop) || other.pop == pop) &&
            (identical(other.sys, sys) || other.sys == sys) &&
            (identical(other.dtTxt, dtTxt) || other.dtTxt == dtTxt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      dt,
      main,
      const DeepCollectionEquality().hash(_weather),
      clouds,
      wind,
      visibility,
      pop,
      sys,
      dtTxt);

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherListModelImplCopyWith<_$OpenWeatherListModelImpl>
      get copyWith =>
          __$$OpenWeatherListModelImplCopyWithImpl<_$OpenWeatherListModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherListModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherListModel implements OpenWeatherListModel {
  factory _OpenWeatherListModel(
          {final int? dt,
          final OpenWeatherListMainModel? main,
          final List<OpenWeatherListWeatherModel?>? weather,
          final OpenWeatherListCloudsModel? clouds,
          final OpenWeatherListWindModel? wind,
          final int? visibility,
          final int? pop,
          final OpenWeatherListSysModel? sys,
          @JsonKey(name: 'dt_txt') final String? dtTxt}) =
      _$OpenWeatherListModelImpl;

  factory _OpenWeatherListModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherListModelImpl.fromJson;

  @override
  int? get dt;
  @override
  OpenWeatherListMainModel? get main;
  @override
  List<OpenWeatherListWeatherModel?>? get weather;
  @override
  OpenWeatherListCloudsModel? get clouds;
  @override
  OpenWeatherListWindModel? get wind;
  @override
  int? get visibility;
  @override
  int? get pop;
  @override
  OpenWeatherListSysModel? get sys;
  @override
  @JsonKey(name: 'dt_txt')
  String? get dtTxt;

  /// Create a copy of OpenWeatherListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherListModelImplCopyWith<_$OpenWeatherListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenWeatherListMainModel _$OpenWeatherListMainModelFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherListMainModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherListMainModel {
  double? get temp => throw _privateConstructorUsedError;
  @JsonKey(name: 'feels_like')
  double? get feelsLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_min')
  double? get tempMin => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_max')
  double? get tempMax => throw _privateConstructorUsedError;
  int? get pressure => throw _privateConstructorUsedError;
  @JsonKey(name: 'sea_level')
  int? get seaLevel => throw _privateConstructorUsedError;
  @JsonKey(name: 'grnd_level')
  int? get grndLevel => throw _privateConstructorUsedError;
  int? get humidity => throw _privateConstructorUsedError;
  @JsonKey(name: 'temp_kf')
  int? get tempKf => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherListMainModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherListMainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherListMainModelCopyWith<OpenWeatherListMainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherListMainModelCopyWith<$Res> {
  factory $OpenWeatherListMainModelCopyWith(OpenWeatherListMainModel value,
          $Res Function(OpenWeatherListMainModel) then) =
      _$OpenWeatherListMainModelCopyWithImpl<$Res, OpenWeatherListMainModel>;
  @useResult
  $Res call(
      {double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      @JsonKey(name: 'temp_min') double? tempMin,
      @JsonKey(name: 'temp_max') double? tempMax,
      int? pressure,
      @JsonKey(name: 'sea_level') int? seaLevel,
      @JsonKey(name: 'grnd_level') int? grndLevel,
      int? humidity,
      @JsonKey(name: 'temp_kf') int? tempKf});
}

/// @nodoc
class _$OpenWeatherListMainModelCopyWithImpl<$Res,
        $Val extends OpenWeatherListMainModel>
    implements $OpenWeatherListMainModelCopyWith<$Res> {
  _$OpenWeatherListMainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherListMainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? seaLevel = freezed,
    Object? grndLevel = freezed,
    Object? humidity = freezed,
    Object? tempKf = freezed,
  }) {
    return _then(_value.copyWith(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMin: freezed == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMax: freezed == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      grndLevel: freezed == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      tempKf: freezed == tempKf
          ? _value.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenWeatherListMainModelImplCopyWith<$Res>
    implements $OpenWeatherListMainModelCopyWith<$Res> {
  factory _$$OpenWeatherListMainModelImplCopyWith(
          _$OpenWeatherListMainModelImpl value,
          $Res Function(_$OpenWeatherListMainModelImpl) then) =
      __$$OpenWeatherListMainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? temp,
      @JsonKey(name: 'feels_like') double? feelsLike,
      @JsonKey(name: 'temp_min') double? tempMin,
      @JsonKey(name: 'temp_max') double? tempMax,
      int? pressure,
      @JsonKey(name: 'sea_level') int? seaLevel,
      @JsonKey(name: 'grnd_level') int? grndLevel,
      int? humidity,
      @JsonKey(name: 'temp_kf') int? tempKf});
}

/// @nodoc
class __$$OpenWeatherListMainModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherListMainModelCopyWithImpl<$Res,
        _$OpenWeatherListMainModelImpl>
    implements _$$OpenWeatherListMainModelImplCopyWith<$Res> {
  __$$OpenWeatherListMainModelImplCopyWithImpl(
      _$OpenWeatherListMainModelImpl _value,
      $Res Function(_$OpenWeatherListMainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherListMainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temp = freezed,
    Object? feelsLike = freezed,
    Object? tempMin = freezed,
    Object? tempMax = freezed,
    Object? pressure = freezed,
    Object? seaLevel = freezed,
    Object? grndLevel = freezed,
    Object? humidity = freezed,
    Object? tempKf = freezed,
  }) {
    return _then(_$OpenWeatherListMainModelImpl(
      temp: freezed == temp
          ? _value.temp
          : temp // ignore: cast_nullable_to_non_nullable
              as double?,
      feelsLike: freezed == feelsLike
          ? _value.feelsLike
          : feelsLike // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMin: freezed == tempMin
          ? _value.tempMin
          : tempMin // ignore: cast_nullable_to_non_nullable
              as double?,
      tempMax: freezed == tempMax
          ? _value.tempMax
          : tempMax // ignore: cast_nullable_to_non_nullable
              as double?,
      pressure: freezed == pressure
          ? _value.pressure
          : pressure // ignore: cast_nullable_to_non_nullable
              as int?,
      seaLevel: freezed == seaLevel
          ? _value.seaLevel
          : seaLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      grndLevel: freezed == grndLevel
          ? _value.grndLevel
          : grndLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      humidity: freezed == humidity
          ? _value.humidity
          : humidity // ignore: cast_nullable_to_non_nullable
              as int?,
      tempKf: freezed == tempKf
          ? _value.tempKf
          : tempKf // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherListMainModelImpl implements _OpenWeatherListMainModel {
  _$OpenWeatherListMainModelImpl(
      {this.temp,
      @JsonKey(name: 'feels_like') this.feelsLike,
      @JsonKey(name: 'temp_min') this.tempMin,
      @JsonKey(name: 'temp_max') this.tempMax,
      this.pressure,
      @JsonKey(name: 'sea_level') this.seaLevel,
      @JsonKey(name: 'grnd_level') this.grndLevel,
      this.humidity,
      @JsonKey(name: 'temp_kf') this.tempKf});

  factory _$OpenWeatherListMainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenWeatherListMainModelImplFromJson(json);

  @override
  final double? temp;
  @override
  @JsonKey(name: 'feels_like')
  final double? feelsLike;
  @override
  @JsonKey(name: 'temp_min')
  final double? tempMin;
  @override
  @JsonKey(name: 'temp_max')
  final double? tempMax;
  @override
  final int? pressure;
  @override
  @JsonKey(name: 'sea_level')
  final int? seaLevel;
  @override
  @JsonKey(name: 'grnd_level')
  final int? grndLevel;
  @override
  final int? humidity;
  @override
  @JsonKey(name: 'temp_kf')
  final int? tempKf;

  @override
  String toString() {
    return 'OpenWeatherListMainModel(temp: $temp, feelsLike: $feelsLike, tempMin: $tempMin, tempMax: $tempMax, pressure: $pressure, seaLevel: $seaLevel, grndLevel: $grndLevel, humidity: $humidity, tempKf: $tempKf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherListMainModelImpl &&
            (identical(other.temp, temp) || other.temp == temp) &&
            (identical(other.feelsLike, feelsLike) ||
                other.feelsLike == feelsLike) &&
            (identical(other.tempMin, tempMin) || other.tempMin == tempMin) &&
            (identical(other.tempMax, tempMax) || other.tempMax == tempMax) &&
            (identical(other.pressure, pressure) ||
                other.pressure == pressure) &&
            (identical(other.seaLevel, seaLevel) ||
                other.seaLevel == seaLevel) &&
            (identical(other.grndLevel, grndLevel) ||
                other.grndLevel == grndLevel) &&
            (identical(other.humidity, humidity) ||
                other.humidity == humidity) &&
            (identical(other.tempKf, tempKf) || other.tempKf == tempKf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temp, feelsLike, tempMin,
      tempMax, pressure, seaLevel, grndLevel, humidity, tempKf);

  /// Create a copy of OpenWeatherListMainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherListMainModelImplCopyWith<_$OpenWeatherListMainModelImpl>
      get copyWith => __$$OpenWeatherListMainModelImplCopyWithImpl<
          _$OpenWeatherListMainModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherListMainModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherListMainModel implements OpenWeatherListMainModel {
  factory _OpenWeatherListMainModel(
          {final double? temp,
          @JsonKey(name: 'feels_like') final double? feelsLike,
          @JsonKey(name: 'temp_min') final double? tempMin,
          @JsonKey(name: 'temp_max') final double? tempMax,
          final int? pressure,
          @JsonKey(name: 'sea_level') final int? seaLevel,
          @JsonKey(name: 'grnd_level') final int? grndLevel,
          final int? humidity,
          @JsonKey(name: 'temp_kf') final int? tempKf}) =
      _$OpenWeatherListMainModelImpl;

  factory _OpenWeatherListMainModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherListMainModelImpl.fromJson;

  @override
  double? get temp;
  @override
  @JsonKey(name: 'feels_like')
  double? get feelsLike;
  @override
  @JsonKey(name: 'temp_min')
  double? get tempMin;
  @override
  @JsonKey(name: 'temp_max')
  double? get tempMax;
  @override
  int? get pressure;
  @override
  @JsonKey(name: 'sea_level')
  int? get seaLevel;
  @override
  @JsonKey(name: 'grnd_level')
  int? get grndLevel;
  @override
  int? get humidity;
  @override
  @JsonKey(name: 'temp_kf')
  int? get tempKf;

  /// Create a copy of OpenWeatherListMainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherListMainModelImplCopyWith<_$OpenWeatherListMainModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenWeatherListWeatherModel _$OpenWeatherListWeatherModelFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherListWeatherModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherListWeatherModel {
  int? get id => throw _privateConstructorUsedError;
  String? get main => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherListWeatherModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherListWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherListWeatherModelCopyWith<OpenWeatherListWeatherModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherListWeatherModelCopyWith<$Res> {
  factory $OpenWeatherListWeatherModelCopyWith(
          OpenWeatherListWeatherModel value,
          $Res Function(OpenWeatherListWeatherModel) then) =
      _$OpenWeatherListWeatherModelCopyWithImpl<$Res,
          OpenWeatherListWeatherModel>;
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class _$OpenWeatherListWeatherModelCopyWithImpl<$Res,
        $Val extends OpenWeatherListWeatherModel>
    implements $OpenWeatherListWeatherModelCopyWith<$Res> {
  _$OpenWeatherListWeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherListWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenWeatherListWeatherModelImplCopyWith<$Res>
    implements $OpenWeatherListWeatherModelCopyWith<$Res> {
  factory _$$OpenWeatherListWeatherModelImplCopyWith(
          _$OpenWeatherListWeatherModelImpl value,
          $Res Function(_$OpenWeatherListWeatherModelImpl) then) =
      __$$OpenWeatherListWeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? main, String? description, String? icon});
}

/// @nodoc
class __$$OpenWeatherListWeatherModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherListWeatherModelCopyWithImpl<$Res,
        _$OpenWeatherListWeatherModelImpl>
    implements _$$OpenWeatherListWeatherModelImplCopyWith<$Res> {
  __$$OpenWeatherListWeatherModelImplCopyWithImpl(
      _$OpenWeatherListWeatherModelImpl _value,
      $Res Function(_$OpenWeatherListWeatherModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherListWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? main = freezed,
    Object? description = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$OpenWeatherListWeatherModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      main: freezed == main
          ? _value.main
          : main // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherListWeatherModelImpl
    implements _OpenWeatherListWeatherModel {
  _$OpenWeatherListWeatherModelImpl(
      {this.id, this.main, this.description, this.icon});

  factory _$OpenWeatherListWeatherModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenWeatherListWeatherModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? main;
  @override
  final String? description;
  @override
  final String? icon;

  @override
  String toString() {
    return 'OpenWeatherListWeatherModel(id: $id, main: $main, description: $description, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherListWeatherModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.main, main) || other.main == main) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, main, description, icon);

  /// Create a copy of OpenWeatherListWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherListWeatherModelImplCopyWith<_$OpenWeatherListWeatherModelImpl>
      get copyWith => __$$OpenWeatherListWeatherModelImplCopyWithImpl<
          _$OpenWeatherListWeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherListWeatherModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherListWeatherModel
    implements OpenWeatherListWeatherModel {
  factory _OpenWeatherListWeatherModel(
      {final int? id,
      final String? main,
      final String? description,
      final String? icon}) = _$OpenWeatherListWeatherModelImpl;

  factory _OpenWeatherListWeatherModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherListWeatherModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get main;
  @override
  String? get description;
  @override
  String? get icon;

  /// Create a copy of OpenWeatherListWeatherModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherListWeatherModelImplCopyWith<_$OpenWeatherListWeatherModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenWeatherListCloudsModel _$OpenWeatherListCloudsModelFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherListCloudsModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherListCloudsModel {
  int? get all => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherListCloudsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherListCloudsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherListCloudsModelCopyWith<OpenWeatherListCloudsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherListCloudsModelCopyWith<$Res> {
  factory $OpenWeatherListCloudsModelCopyWith(OpenWeatherListCloudsModel value,
          $Res Function(OpenWeatherListCloudsModel) then) =
      _$OpenWeatherListCloudsModelCopyWithImpl<$Res,
          OpenWeatherListCloudsModel>;
  @useResult
  $Res call({int? all});
}

/// @nodoc
class _$OpenWeatherListCloudsModelCopyWithImpl<$Res,
        $Val extends OpenWeatherListCloudsModel>
    implements $OpenWeatherListCloudsModelCopyWith<$Res> {
  _$OpenWeatherListCloudsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherListCloudsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_value.copyWith(
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenWeatherListCloudsModelImplCopyWith<$Res>
    implements $OpenWeatherListCloudsModelCopyWith<$Res> {
  factory _$$OpenWeatherListCloudsModelImplCopyWith(
          _$OpenWeatherListCloudsModelImpl value,
          $Res Function(_$OpenWeatherListCloudsModelImpl) then) =
      __$$OpenWeatherListCloudsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? all});
}

/// @nodoc
class __$$OpenWeatherListCloudsModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherListCloudsModelCopyWithImpl<$Res,
        _$OpenWeatherListCloudsModelImpl>
    implements _$$OpenWeatherListCloudsModelImplCopyWith<$Res> {
  __$$OpenWeatherListCloudsModelImplCopyWithImpl(
      _$OpenWeatherListCloudsModelImpl _value,
      $Res Function(_$OpenWeatherListCloudsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherListCloudsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = freezed,
  }) {
    return _then(_$OpenWeatherListCloudsModelImpl(
      all: freezed == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherListCloudsModelImpl implements _OpenWeatherListCloudsModel {
  _$OpenWeatherListCloudsModelImpl({this.all});

  factory _$OpenWeatherListCloudsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$OpenWeatherListCloudsModelImplFromJson(json);

  @override
  final int? all;

  @override
  String toString() {
    return 'OpenWeatherListCloudsModel(all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherListCloudsModelImpl &&
            (identical(other.all, all) || other.all == all));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, all);

  /// Create a copy of OpenWeatherListCloudsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherListCloudsModelImplCopyWith<_$OpenWeatherListCloudsModelImpl>
      get copyWith => __$$OpenWeatherListCloudsModelImplCopyWithImpl<
          _$OpenWeatherListCloudsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherListCloudsModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherListCloudsModel
    implements OpenWeatherListCloudsModel {
  factory _OpenWeatherListCloudsModel({final int? all}) =
      _$OpenWeatherListCloudsModelImpl;

  factory _OpenWeatherListCloudsModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherListCloudsModelImpl.fromJson;

  @override
  int? get all;

  /// Create a copy of OpenWeatherListCloudsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherListCloudsModelImplCopyWith<_$OpenWeatherListCloudsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenWeatherListWindModel _$OpenWeatherListWindModelFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherListWindModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherListWindModel {
  double? get speed => throw _privateConstructorUsedError;
  int? get deg => throw _privateConstructorUsedError;
  double? get gust => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherListWindModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherListWindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherListWindModelCopyWith<OpenWeatherListWindModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherListWindModelCopyWith<$Res> {
  factory $OpenWeatherListWindModelCopyWith(OpenWeatherListWindModel value,
          $Res Function(OpenWeatherListWindModel) then) =
      _$OpenWeatherListWindModelCopyWithImpl<$Res, OpenWeatherListWindModel>;
  @useResult
  $Res call({double? speed, int? deg, double? gust});
}

/// @nodoc
class _$OpenWeatherListWindModelCopyWithImpl<$Res,
        $Val extends OpenWeatherListWindModel>
    implements $OpenWeatherListWindModelCopyWith<$Res> {
  _$OpenWeatherListWindModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherListWindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_value.copyWith(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: freezed == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenWeatherListWindModelImplCopyWith<$Res>
    implements $OpenWeatherListWindModelCopyWith<$Res> {
  factory _$$OpenWeatherListWindModelImplCopyWith(
          _$OpenWeatherListWindModelImpl value,
          $Res Function(_$OpenWeatherListWindModelImpl) then) =
      __$$OpenWeatherListWindModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? speed, int? deg, double? gust});
}

/// @nodoc
class __$$OpenWeatherListWindModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherListWindModelCopyWithImpl<$Res,
        _$OpenWeatherListWindModelImpl>
    implements _$$OpenWeatherListWindModelImplCopyWith<$Res> {
  __$$OpenWeatherListWindModelImplCopyWithImpl(
      _$OpenWeatherListWindModelImpl _value,
      $Res Function(_$OpenWeatherListWindModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherListWindModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = freezed,
    Object? deg = freezed,
    Object? gust = freezed,
  }) {
    return _then(_$OpenWeatherListWindModelImpl(
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      deg: freezed == deg
          ? _value.deg
          : deg // ignore: cast_nullable_to_non_nullable
              as int?,
      gust: freezed == gust
          ? _value.gust
          : gust // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherListWindModelImpl implements _OpenWeatherListWindModel {
  _$OpenWeatherListWindModelImpl({this.speed, this.deg, this.gust});

  factory _$OpenWeatherListWindModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenWeatherListWindModelImplFromJson(json);

  @override
  final double? speed;
  @override
  final int? deg;
  @override
  final double? gust;

  @override
  String toString() {
    return 'OpenWeatherListWindModel(speed: $speed, deg: $deg, gust: $gust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherListWindModelImpl &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.deg, deg) || other.deg == deg) &&
            (identical(other.gust, gust) || other.gust == gust));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed, deg, gust);

  /// Create a copy of OpenWeatherListWindModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherListWindModelImplCopyWith<_$OpenWeatherListWindModelImpl>
      get copyWith => __$$OpenWeatherListWindModelImplCopyWithImpl<
          _$OpenWeatherListWindModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherListWindModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherListWindModel implements OpenWeatherListWindModel {
  factory _OpenWeatherListWindModel(
      {final double? speed,
      final int? deg,
      final double? gust}) = _$OpenWeatherListWindModelImpl;

  factory _OpenWeatherListWindModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherListWindModelImpl.fromJson;

  @override
  double? get speed;
  @override
  int? get deg;
  @override
  double? get gust;

  /// Create a copy of OpenWeatherListWindModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherListWindModelImplCopyWith<_$OpenWeatherListWindModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenWeatherListSysModel _$OpenWeatherListSysModelFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherListSysModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherListSysModel {
  String? get pod => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherListSysModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherListSysModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherListSysModelCopyWith<OpenWeatherListSysModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherListSysModelCopyWith<$Res> {
  factory $OpenWeatherListSysModelCopyWith(OpenWeatherListSysModel value,
          $Res Function(OpenWeatherListSysModel) then) =
      _$OpenWeatherListSysModelCopyWithImpl<$Res, OpenWeatherListSysModel>;
  @useResult
  $Res call({String? pod});
}

/// @nodoc
class _$OpenWeatherListSysModelCopyWithImpl<$Res,
        $Val extends OpenWeatherListSysModel>
    implements $OpenWeatherListSysModelCopyWith<$Res> {
  _$OpenWeatherListSysModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherListSysModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pod = freezed,
  }) {
    return _then(_value.copyWith(
      pod: freezed == pod
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenWeatherListSysModelImplCopyWith<$Res>
    implements $OpenWeatherListSysModelCopyWith<$Res> {
  factory _$$OpenWeatherListSysModelImplCopyWith(
          _$OpenWeatherListSysModelImpl value,
          $Res Function(_$OpenWeatherListSysModelImpl) then) =
      __$$OpenWeatherListSysModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pod});
}

/// @nodoc
class __$$OpenWeatherListSysModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherListSysModelCopyWithImpl<$Res,
        _$OpenWeatherListSysModelImpl>
    implements _$$OpenWeatherListSysModelImplCopyWith<$Res> {
  __$$OpenWeatherListSysModelImplCopyWithImpl(
      _$OpenWeatherListSysModelImpl _value,
      $Res Function(_$OpenWeatherListSysModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherListSysModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pod = freezed,
  }) {
    return _then(_$OpenWeatherListSysModelImpl(
      pod: freezed == pod
          ? _value.pod
          : pod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherListSysModelImpl implements _OpenWeatherListSysModel {
  _$OpenWeatherListSysModelImpl({this.pod});

  factory _$OpenWeatherListSysModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenWeatherListSysModelImplFromJson(json);

  @override
  final String? pod;

  @override
  String toString() {
    return 'OpenWeatherListSysModel(pod: $pod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherListSysModelImpl &&
            (identical(other.pod, pod) || other.pod == pod));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pod);

  /// Create a copy of OpenWeatherListSysModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherListSysModelImplCopyWith<_$OpenWeatherListSysModelImpl>
      get copyWith => __$$OpenWeatherListSysModelImplCopyWithImpl<
          _$OpenWeatherListSysModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherListSysModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherListSysModel implements OpenWeatherListSysModel {
  factory _OpenWeatherListSysModel({final String? pod}) =
      _$OpenWeatherListSysModelImpl;

  factory _OpenWeatherListSysModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherListSysModelImpl.fromJson;

  @override
  String? get pod;

  /// Create a copy of OpenWeatherListSysModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherListSysModelImplCopyWith<_$OpenWeatherListSysModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenWeatherCityModel _$OpenWeatherCityModelFromJson(Map<String, dynamic> json) {
  return _OpenWeatherCityModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherCityModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  OpenWeatherCityCoordModel? get coord => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  int? get population => throw _privateConstructorUsedError;
  int? get timezone => throw _privateConstructorUsedError;
  int? get sunrise => throw _privateConstructorUsedError;
  int? get sunset => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherCityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherCityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherCityModelCopyWith<OpenWeatherCityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherCityModelCopyWith<$Res> {
  factory $OpenWeatherCityModelCopyWith(OpenWeatherCityModel value,
          $Res Function(OpenWeatherCityModel) then) =
      _$OpenWeatherCityModelCopyWithImpl<$Res, OpenWeatherCityModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      OpenWeatherCityCoordModel? coord,
      String? country,
      int? population,
      int? timezone,
      int? sunrise,
      int? sunset});

  $OpenWeatherCityCoordModelCopyWith<$Res>? get coord;
}

/// @nodoc
class _$OpenWeatherCityModelCopyWithImpl<$Res,
        $Val extends OpenWeatherCityModel>
    implements $OpenWeatherCityModelCopyWith<$Res> {
  _$OpenWeatherCityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherCityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? country = freezed,
    Object? population = freezed,
    Object? timezone = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCityCoordModel?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of OpenWeatherCityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OpenWeatherCityCoordModelCopyWith<$Res>? get coord {
    if (_value.coord == null) {
      return null;
    }

    return $OpenWeatherCityCoordModelCopyWith<$Res>(_value.coord!, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OpenWeatherCityModelImplCopyWith<$Res>
    implements $OpenWeatherCityModelCopyWith<$Res> {
  factory _$$OpenWeatherCityModelImplCopyWith(_$OpenWeatherCityModelImpl value,
          $Res Function(_$OpenWeatherCityModelImpl) then) =
      __$$OpenWeatherCityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      OpenWeatherCityCoordModel? coord,
      String? country,
      int? population,
      int? timezone,
      int? sunrise,
      int? sunset});

  @override
  $OpenWeatherCityCoordModelCopyWith<$Res>? get coord;
}

/// @nodoc
class __$$OpenWeatherCityModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherCityModelCopyWithImpl<$Res, _$OpenWeatherCityModelImpl>
    implements _$$OpenWeatherCityModelImplCopyWith<$Res> {
  __$$OpenWeatherCityModelImplCopyWithImpl(_$OpenWeatherCityModelImpl _value,
      $Res Function(_$OpenWeatherCityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherCityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? coord = freezed,
    Object? country = freezed,
    Object? population = freezed,
    Object? timezone = freezed,
    Object? sunrise = freezed,
    Object? sunset = freezed,
  }) {
    return _then(_$OpenWeatherCityModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      coord: freezed == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as OpenWeatherCityCoordModel?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      population: freezed == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as int?,
      sunrise: freezed == sunrise
          ? _value.sunrise
          : sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      sunset: freezed == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherCityModelImpl implements _OpenWeatherCityModel {
  _$OpenWeatherCityModelImpl(
      {this.id,
      this.name,
      this.coord,
      this.country,
      this.population,
      this.timezone,
      this.sunrise,
      this.sunset});

  factory _$OpenWeatherCityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenWeatherCityModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final OpenWeatherCityCoordModel? coord;
  @override
  final String? country;
  @override
  final int? population;
  @override
  final int? timezone;
  @override
  final int? sunrise;
  @override
  final int? sunset;

  @override
  String toString() {
    return 'OpenWeatherCityModel(id: $id, name: $name, coord: $coord, country: $country, population: $population, timezone: $timezone, sunrise: $sunrise, sunset: $sunset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherCityModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coord, coord) || other.coord == coord) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.population, population) ||
                other.population == population) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.sunrise, sunrise) || other.sunrise == sunrise) &&
            (identical(other.sunset, sunset) || other.sunset == sunset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, coord, country,
      population, timezone, sunrise, sunset);

  /// Create a copy of OpenWeatherCityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherCityModelImplCopyWith<_$OpenWeatherCityModelImpl>
      get copyWith =>
          __$$OpenWeatherCityModelImplCopyWithImpl<_$OpenWeatherCityModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherCityModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherCityModel implements OpenWeatherCityModel {
  factory _OpenWeatherCityModel(
      {final int? id,
      final String? name,
      final OpenWeatherCityCoordModel? coord,
      final String? country,
      final int? population,
      final int? timezone,
      final int? sunrise,
      final int? sunset}) = _$OpenWeatherCityModelImpl;

  factory _OpenWeatherCityModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherCityModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  OpenWeatherCityCoordModel? get coord;
  @override
  String? get country;
  @override
  int? get population;
  @override
  int? get timezone;
  @override
  int? get sunrise;
  @override
  int? get sunset;

  /// Create a copy of OpenWeatherCityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherCityModelImplCopyWith<_$OpenWeatherCityModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

OpenWeatherCityCoordModel _$OpenWeatherCityCoordModelFromJson(
    Map<String, dynamic> json) {
  return _OpenWeatherCityCoordModel.fromJson(json);
}

/// @nodoc
mixin _$OpenWeatherCityCoordModel {
  double? get lat => throw _privateConstructorUsedError;
  double? get lon => throw _privateConstructorUsedError;

  /// Serializes this OpenWeatherCityCoordModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OpenWeatherCityCoordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OpenWeatherCityCoordModelCopyWith<OpenWeatherCityCoordModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenWeatherCityCoordModelCopyWith<$Res> {
  factory $OpenWeatherCityCoordModelCopyWith(OpenWeatherCityCoordModel value,
          $Res Function(OpenWeatherCityCoordModel) then) =
      _$OpenWeatherCityCoordModelCopyWithImpl<$Res, OpenWeatherCityCoordModel>;
  @useResult
  $Res call({double? lat, double? lon});
}

/// @nodoc
class _$OpenWeatherCityCoordModelCopyWithImpl<$Res,
        $Val extends OpenWeatherCityCoordModel>
    implements $OpenWeatherCityCoordModelCopyWith<$Res> {
  _$OpenWeatherCityCoordModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OpenWeatherCityCoordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_value.copyWith(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OpenWeatherCityCoordModelImplCopyWith<$Res>
    implements $OpenWeatherCityCoordModelCopyWith<$Res> {
  factory _$$OpenWeatherCityCoordModelImplCopyWith(
          _$OpenWeatherCityCoordModelImpl value,
          $Res Function(_$OpenWeatherCityCoordModelImpl) then) =
      __$$OpenWeatherCityCoordModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? lat, double? lon});
}

/// @nodoc
class __$$OpenWeatherCityCoordModelImplCopyWithImpl<$Res>
    extends _$OpenWeatherCityCoordModelCopyWithImpl<$Res,
        _$OpenWeatherCityCoordModelImpl>
    implements _$$OpenWeatherCityCoordModelImplCopyWith<$Res> {
  __$$OpenWeatherCityCoordModelImplCopyWithImpl(
      _$OpenWeatherCityCoordModelImpl _value,
      $Res Function(_$OpenWeatherCityCoordModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OpenWeatherCityCoordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = freezed,
    Object? lon = freezed,
  }) {
    return _then(_$OpenWeatherCityCoordModelImpl(
      lat: freezed == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double?,
      lon: freezed == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OpenWeatherCityCoordModelImpl implements _OpenWeatherCityCoordModel {
  _$OpenWeatherCityCoordModelImpl({this.lat, this.lon});

  factory _$OpenWeatherCityCoordModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OpenWeatherCityCoordModelImplFromJson(json);

  @override
  final double? lat;
  @override
  final double? lon;

  @override
  String toString() {
    return 'OpenWeatherCityCoordModel(lat: $lat, lon: $lon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenWeatherCityCoordModelImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, lat, lon);

  /// Create a copy of OpenWeatherCityCoordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenWeatherCityCoordModelImplCopyWith<_$OpenWeatherCityCoordModelImpl>
      get copyWith => __$$OpenWeatherCityCoordModelImplCopyWithImpl<
          _$OpenWeatherCityCoordModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OpenWeatherCityCoordModelImplToJson(
      this,
    );
  }
}

abstract class _OpenWeatherCityCoordModel implements OpenWeatherCityCoordModel {
  factory _OpenWeatherCityCoordModel({final double? lat, final double? lon}) =
      _$OpenWeatherCityCoordModelImpl;

  factory _OpenWeatherCityCoordModel.fromJson(Map<String, dynamic> json) =
      _$OpenWeatherCityCoordModelImpl.fromJson;

  @override
  double? get lat;
  @override
  double? get lon;

  /// Create a copy of OpenWeatherCityCoordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenWeatherCityCoordModelImplCopyWith<_$OpenWeatherCityCoordModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
