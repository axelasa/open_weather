// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_weather_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveOpenWeatherModelAdapter extends TypeAdapter<HiveOpenWeatherModel> {
  @override
  final int typeId = 0;

  @override
  HiveOpenWeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherModel(
      cod: fields[0] as String?,
      message: fields[1] as int?,
      cnt: fields[2] as int?,
      list: (fields[3] as List?)?.cast<HiveOpenWeatherListModel>(),
      city: fields[4] as HiveOpenWeatherCityModel?,
      timestamp: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.cod)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.cnt)
      ..writeByte(3)
      ..write(obj.list)
      ..writeByte(4)
      ..write(obj.city)
      ..writeByte(5)
      ..write(obj.timestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherListModelAdapter
    extends TypeAdapter<HiveOpenWeatherListModel> {
  @override
  final int typeId = 1;

  @override
  HiveOpenWeatherListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherListModel(
      dt: fields[0] as int?,
      main: fields[1] as HiveOpenWeatherListMainModel?,
      weather: (fields[2] as List?)?.cast<HiveOpenWeatherListWeatherModel>(),
      clouds: fields[3] as HiveOpenWeatherListCloudsModel?,
      wind: fields[4] as HiveOpenWeatherListWindModel?,
      visibility: fields[5] as int?,
      pop: fields[6] as int?,
      sys: fields[7] as HiveOpenWeatherListSysModel?,
      dtTxt: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherListModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.dt)
      ..writeByte(1)
      ..write(obj.main)
      ..writeByte(2)
      ..write(obj.weather)
      ..writeByte(3)
      ..write(obj.clouds)
      ..writeByte(4)
      ..write(obj.wind)
      ..writeByte(5)
      ..write(obj.visibility)
      ..writeByte(6)
      ..write(obj.pop)
      ..writeByte(7)
      ..write(obj.sys)
      ..writeByte(8)
      ..write(obj.dtTxt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherListMainModelAdapter
    extends TypeAdapter<HiveOpenWeatherListMainModel> {
  @override
  final int typeId = 2;

  @override
  HiveOpenWeatherListMainModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherListMainModel(
      temp: fields[0] as double?,
      feelsLike: fields[1] as double?,
      tempMin: fields[2] as double?,
      tempMax: fields[3] as double?,
      pressure: fields[4] as int?,
      seaLevel: fields[5] as int?,
      grndLevel: fields[6] as int?,
      humidity: fields[7] as int?,
      tempKf: fields[8] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherListMainModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.temp)
      ..writeByte(1)
      ..write(obj.feelsLike)
      ..writeByte(2)
      ..write(obj.tempMin)
      ..writeByte(3)
      ..write(obj.tempMax)
      ..writeByte(4)
      ..write(obj.pressure)
      ..writeByte(5)
      ..write(obj.seaLevel)
      ..writeByte(6)
      ..write(obj.grndLevel)
      ..writeByte(7)
      ..write(obj.humidity)
      ..writeByte(8)
      ..write(obj.tempKf);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherListMainModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherListWeatherModelAdapter
    extends TypeAdapter<HiveOpenWeatherListWeatherModel> {
  @override
  final int typeId = 3;

  @override
  HiveOpenWeatherListWeatherModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherListWeatherModel(
      id: fields[0] as int?,
      main: fields[1] as String?,
      description: fields[2] as String?,
      icon: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherListWeatherModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.main)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.icon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherListWeatherModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherListCloudsModelAdapter
    extends TypeAdapter<HiveOpenWeatherListCloudsModel> {
  @override
  final int typeId = 4;

  @override
  HiveOpenWeatherListCloudsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherListCloudsModel(
      all: fields[0] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherListCloudsModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.all);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherListCloudsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherListWindModelAdapter
    extends TypeAdapter<HiveOpenWeatherListWindModel> {
  @override
  final int typeId = 5;

  @override
  HiveOpenWeatherListWindModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherListWindModel(
      speed: fields[0] as double?,
      deg: fields[1] as int?,
      gust: fields[2] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherListWindModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.speed)
      ..writeByte(1)
      ..write(obj.deg)
      ..writeByte(2)
      ..write(obj.gust);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherListWindModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherListSysModelAdapter
    extends TypeAdapter<HiveOpenWeatherListSysModel> {
  @override
  final int typeId = 6;

  @override
  HiveOpenWeatherListSysModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherListSysModel(
      pod: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherListSysModel obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.pod);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherListSysModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherCityModelAdapter
    extends TypeAdapter<HiveOpenWeatherCityModel> {
  @override
  final int typeId = 7;

  @override
  HiveOpenWeatherCityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherCityModel(
      id: fields[0] as int?,
      name: fields[1] as String?,
      coord: fields[2] as HiveOpenWeatherCityCoordModel?,
      country: fields[3] as String?,
      population: fields[4] as int?,
      timezone: fields[5] as int?,
      sunrise: fields[6] as int?,
      sunset: fields[7] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherCityModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.coord)
      ..writeByte(3)
      ..write(obj.country)
      ..writeByte(4)
      ..write(obj.population)
      ..writeByte(5)
      ..write(obj.timezone)
      ..writeByte(6)
      ..write(obj.sunrise)
      ..writeByte(7)
      ..write(obj.sunset);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherCityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HiveOpenWeatherCityCoordModelAdapter
    extends TypeAdapter<HiveOpenWeatherCityCoordModel> {
  @override
  final int typeId = 8;

  @override
  HiveOpenWeatherCityCoordModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveOpenWeatherCityCoordModel(
      lat: fields[0] as double?,
      lon: fields[1] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, HiveOpenWeatherCityCoordModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.lat)
      ..writeByte(1)
      ..write(obj.lon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveOpenWeatherCityCoordModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
