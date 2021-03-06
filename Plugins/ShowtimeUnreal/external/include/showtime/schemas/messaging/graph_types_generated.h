// automatically generated by the FlatBuffers compiler, do not modify


#ifndef FLATBUFFERS_GENERATED_GRAPHTYPES_SHOWTIME_H_
#define FLATBUFFERS_GENERATED_GRAPHTYPES_SHOWTIME_H_

#include "flatbuffers/flatbuffers.h"

namespace showtime {

struct IntList;
struct IntListBuilder;

struct FloatList;
struct FloatListBuilder;

struct StrList;
struct StrListBuilder;

struct PlugHandshake;
struct PlugHandshakeBuilder;

struct PlugValue;
struct PlugValueBuilder;

struct EntityData;
struct EntityDataBuilder;

struct ComponentData;
struct ComponentDataBuilder;

struct PerformerData;
struct PerformerDataBuilder;

struct PlugData;
struct PlugDataBuilder;

struct FactoryData;
struct FactoryDataBuilder;

struct Entity;
struct EntityBuilder;

struct Component;
struct ComponentBuilder;

struct Performer;
struct PerformerBuilder;

struct Plug;
struct PlugBuilder;

struct Factory;
struct FactoryBuilder;

struct CableData;
struct CableDataBuilder;

struct Cable;
struct CableBuilder;

enum PlugValueData {
  PlugValueData_NONE = 0,
  PlugValueData_IntList = 1,
  PlugValueData_FloatList = 2,
  PlugValueData_StrList = 3,
  PlugValueData_PlugHandshake = 4,
  PlugValueData_MIN = PlugValueData_NONE,
  PlugValueData_MAX = PlugValueData_PlugHandshake
};

inline const PlugValueData (&EnumValuesPlugValueData())[5] {
  static const PlugValueData values[] = {
    PlugValueData_NONE,
    PlugValueData_IntList,
    PlugValueData_FloatList,
    PlugValueData_StrList,
    PlugValueData_PlugHandshake
  };
  return values;
}

inline const char * const *EnumNamesPlugValueData() {
  static const char * const names[6] = {
    "NONE",
    "IntList",
    "FloatList",
    "StrList",
    "PlugHandshake",
    nullptr
  };
  return names;
}

inline const char *EnumNamePlugValueData(PlugValueData e) {
  if (flatbuffers::IsOutRange(e, PlugValueData_NONE, PlugValueData_PlugHandshake)) return "";
  const size_t index = static_cast<size_t>(e);
  return EnumNamesPlugValueData()[index];
}

template<typename T> struct PlugValueDataTraits {
  static const PlugValueData enum_value = PlugValueData_NONE;
};

template<> struct PlugValueDataTraits<showtime::IntList> {
  static const PlugValueData enum_value = PlugValueData_IntList;
};

template<> struct PlugValueDataTraits<showtime::FloatList> {
  static const PlugValueData enum_value = PlugValueData_FloatList;
};

template<> struct PlugValueDataTraits<showtime::StrList> {
  static const PlugValueData enum_value = PlugValueData_StrList;
};

template<> struct PlugValueDataTraits<showtime::PlugHandshake> {
  static const PlugValueData enum_value = PlugValueData_PlugHandshake;
};

bool VerifyPlugValueData(flatbuffers::Verifier &verifier, const void *obj, PlugValueData type);
bool VerifyPlugValueDataVector(flatbuffers::Verifier &verifier, const flatbuffers::Vector<flatbuffers::Offset<void>> *values, const flatbuffers::Vector<uint8_t> *types);

enum PlugDirection {
  PlugDirection_NONE = 0,
  PlugDirection_IN_JACK = 1,
  PlugDirection_OUT_JACK = 2,
  PlugDirection_MIN = PlugDirection_NONE,
  PlugDirection_MAX = PlugDirection_OUT_JACK
};

inline const PlugDirection (&EnumValuesPlugDirection())[3] {
  static const PlugDirection values[] = {
    PlugDirection_NONE,
    PlugDirection_IN_JACK,
    PlugDirection_OUT_JACK
  };
  return values;
}

inline const char * const *EnumNamesPlugDirection() {
  static const char * const names[4] = {
    "NONE",
    "IN_JACK",
    "OUT_JACK",
    nullptr
  };
  return names;
}

inline const char *EnumNamePlugDirection(PlugDirection e) {
  if (flatbuffers::IsOutRange(e, PlugDirection_NONE, PlugDirection_OUT_JACK)) return "";
  const size_t index = static_cast<size_t>(e);
  return EnumNamesPlugDirection()[index];
}

enum EntityTypes {
  EntityTypes_NONE = 0,
  EntityTypes_Component = 1,
  EntityTypes_Performer = 2,
  EntityTypes_Plug = 3,
  EntityTypes_Factory = 4,
  EntityTypes_MIN = EntityTypes_NONE,
  EntityTypes_MAX = EntityTypes_Factory
};

inline const EntityTypes (&EnumValuesEntityTypes())[5] {
  static const EntityTypes values[] = {
    EntityTypes_NONE,
    EntityTypes_Component,
    EntityTypes_Performer,
    EntityTypes_Plug,
    EntityTypes_Factory
  };
  return values;
}

inline const char * const *EnumNamesEntityTypes() {
  static const char * const names[6] = {
    "NONE",
    "Component",
    "Performer",
    "Plug",
    "Factory",
    nullptr
  };
  return names;
}

inline const char *EnumNameEntityTypes(EntityTypes e) {
  if (flatbuffers::IsOutRange(e, EntityTypes_NONE, EntityTypes_Factory)) return "";
  const size_t index = static_cast<size_t>(e);
  return EnumNamesEntityTypes()[index];
}

template<typename T> struct EntityTypesTraits {
  static const EntityTypes enum_value = EntityTypes_NONE;
};

template<> struct EntityTypesTraits<showtime::Component> {
  static const EntityTypes enum_value = EntityTypes_Component;
};

template<> struct EntityTypesTraits<showtime::Performer> {
  static const EntityTypes enum_value = EntityTypes_Performer;
};

template<> struct EntityTypesTraits<showtime::Plug> {
  static const EntityTypes enum_value = EntityTypes_Plug;
};

template<> struct EntityTypesTraits<showtime::Factory> {
  static const EntityTypes enum_value = EntityTypes_Factory;
};

bool VerifyEntityTypes(flatbuffers::Verifier &verifier, const void *obj, EntityTypes type);
bool VerifyEntityTypesVector(flatbuffers::Verifier &verifier, const flatbuffers::Vector<flatbuffers::Offset<void>> *values, const flatbuffers::Vector<uint8_t> *types);

struct IntList FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef IntListBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_VAL = 4
  };
  const flatbuffers::Vector<int32_t> *val() const {
    return GetPointer<const flatbuffers::Vector<int32_t> *>(VT_VAL);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_VAL) &&
           verifier.VerifyVector(val()) &&
           verifier.EndTable();
  }
};

struct IntListBuilder {
  typedef IntList Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_val(flatbuffers::Offset<flatbuffers::Vector<int32_t>> val) {
    fbb_.AddOffset(IntList::VT_VAL, val);
  }
  explicit IntListBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  IntListBuilder &operator=(const IntListBuilder &);
  flatbuffers::Offset<IntList> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<IntList>(end);
    return o;
  }
};

inline flatbuffers::Offset<IntList> CreateIntList(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::Vector<int32_t>> val = 0) {
  IntListBuilder builder_(_fbb);
  builder_.add_val(val);
  return builder_.Finish();
}

inline flatbuffers::Offset<IntList> CreateIntListDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const std::vector<int32_t> *val = nullptr) {
  auto val__ = val ? _fbb.CreateVector<int32_t>(*val) : 0;
  return showtime::CreateIntList(
      _fbb,
      val__);
}

struct FloatList FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef FloatListBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_VAL = 4
  };
  const flatbuffers::Vector<float> *val() const {
    return GetPointer<const flatbuffers::Vector<float> *>(VT_VAL);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_VAL) &&
           verifier.VerifyVector(val()) &&
           verifier.EndTable();
  }
};

struct FloatListBuilder {
  typedef FloatList Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_val(flatbuffers::Offset<flatbuffers::Vector<float>> val) {
    fbb_.AddOffset(FloatList::VT_VAL, val);
  }
  explicit FloatListBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  FloatListBuilder &operator=(const FloatListBuilder &);
  flatbuffers::Offset<FloatList> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<FloatList>(end);
    return o;
  }
};

inline flatbuffers::Offset<FloatList> CreateFloatList(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::Vector<float>> val = 0) {
  FloatListBuilder builder_(_fbb);
  builder_.add_val(val);
  return builder_.Finish();
}

inline flatbuffers::Offset<FloatList> CreateFloatListDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const std::vector<float> *val = nullptr) {
  auto val__ = val ? _fbb.CreateVector<float>(*val) : 0;
  return showtime::CreateFloatList(
      _fbb,
      val__);
}

struct StrList FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef StrListBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_VAL = 4
  };
  const flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> *val() const {
    return GetPointer<const flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> *>(VT_VAL);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_VAL) &&
           verifier.VerifyVector(val()) &&
           verifier.VerifyVectorOfStrings(val()) &&
           verifier.EndTable();
  }
};

struct StrListBuilder {
  typedef StrList Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_val(flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>>> val) {
    fbb_.AddOffset(StrList::VT_VAL, val);
  }
  explicit StrListBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  StrListBuilder &operator=(const StrListBuilder &);
  flatbuffers::Offset<StrList> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<StrList>(end);
    return o;
  }
};

inline flatbuffers::Offset<StrList> CreateStrList(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>>> val = 0) {
  StrListBuilder builder_(_fbb);
  builder_.add_val(val);
  return builder_.Finish();
}

inline flatbuffers::Offset<StrList> CreateStrListDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const std::vector<flatbuffers::Offset<flatbuffers::String>> *val = nullptr) {
  auto val__ = val ? _fbb.CreateVector<flatbuffers::Offset<flatbuffers::String>>(*val) : 0;
  return showtime::CreateStrList(
      _fbb,
      val__);
}

struct PlugHandshake FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef PlugHandshakeBuilder Builder;
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           verifier.EndTable();
  }
};

struct PlugHandshakeBuilder {
  typedef PlugHandshake Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  explicit PlugHandshakeBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  PlugHandshakeBuilder &operator=(const PlugHandshakeBuilder &);
  flatbuffers::Offset<PlugHandshake> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<PlugHandshake>(end);
    return o;
  }
};

inline flatbuffers::Offset<PlugHandshake> CreatePlugHandshake(
    flatbuffers::FlatBufferBuilder &_fbb) {
  PlugHandshakeBuilder builder_(_fbb);
  return builder_.Finish();
}

struct PlugValue FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef PlugValueBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_VALUES_TYPE = 4,
    VT_VALUES = 6
  };
  showtime::PlugValueData values_type() const {
    return static_cast<showtime::PlugValueData>(GetField<uint8_t>(VT_VALUES_TYPE, 0));
  }
  const void *values() const {
    return GetPointer<const void *>(VT_VALUES);
  }
  template<typename T> const T *values_as() const;
  const showtime::IntList *values_as_IntList() const {
    return values_type() == showtime::PlugValueData_IntList ? static_cast<const showtime::IntList *>(values()) : nullptr;
  }
  const showtime::FloatList *values_as_FloatList() const {
    return values_type() == showtime::PlugValueData_FloatList ? static_cast<const showtime::FloatList *>(values()) : nullptr;
  }
  const showtime::StrList *values_as_StrList() const {
    return values_type() == showtime::PlugValueData_StrList ? static_cast<const showtime::StrList *>(values()) : nullptr;
  }
  const showtime::PlugHandshake *values_as_PlugHandshake() const {
    return values_type() == showtime::PlugValueData_PlugHandshake ? static_cast<const showtime::PlugHandshake *>(values()) : nullptr;
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyField<uint8_t>(verifier, VT_VALUES_TYPE) &&
           VerifyOffset(verifier, VT_VALUES) &&
           VerifyPlugValueData(verifier, values(), values_type()) &&
           verifier.EndTable();
  }
};

template<> inline const showtime::IntList *PlugValue::values_as<showtime::IntList>() const {
  return values_as_IntList();
}

template<> inline const showtime::FloatList *PlugValue::values_as<showtime::FloatList>() const {
  return values_as_FloatList();
}

template<> inline const showtime::StrList *PlugValue::values_as<showtime::StrList>() const {
  return values_as_StrList();
}

template<> inline const showtime::PlugHandshake *PlugValue::values_as<showtime::PlugHandshake>() const {
  return values_as_PlugHandshake();
}

struct PlugValueBuilder {
  typedef PlugValue Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_values_type(showtime::PlugValueData values_type) {
    fbb_.AddElement<uint8_t>(PlugValue::VT_VALUES_TYPE, static_cast<uint8_t>(values_type), 0);
  }
  void add_values(flatbuffers::Offset<void> values) {
    fbb_.AddOffset(PlugValue::VT_VALUES, values);
  }
  explicit PlugValueBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  PlugValueBuilder &operator=(const PlugValueBuilder &);
  flatbuffers::Offset<PlugValue> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<PlugValue>(end);
    return o;
  }
};

inline flatbuffers::Offset<PlugValue> CreatePlugValue(
    flatbuffers::FlatBufferBuilder &_fbb,
    showtime::PlugValueData values_type = showtime::PlugValueData_NONE,
    flatbuffers::Offset<void> values = 0) {
  PlugValueBuilder builder_(_fbb);
  builder_.add_values(values);
  builder_.add_values_type(values_type);
  return builder_.Finish();
}

struct EntityData FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef EntityDataBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_URI = 4,
    VT_OWNER = 6
  };
  const flatbuffers::String *URI() const {
    return GetPointer<const flatbuffers::String *>(VT_URI);
  }
  const flatbuffers::String *owner() const {
    return GetPointer<const flatbuffers::String *>(VT_OWNER);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_URI) &&
           verifier.VerifyString(URI()) &&
           VerifyOffset(verifier, VT_OWNER) &&
           verifier.VerifyString(owner()) &&
           verifier.EndTable();
  }
};

struct EntityDataBuilder {
  typedef EntityData Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_URI(flatbuffers::Offset<flatbuffers::String> URI) {
    fbb_.AddOffset(EntityData::VT_URI, URI);
  }
  void add_owner(flatbuffers::Offset<flatbuffers::String> owner) {
    fbb_.AddOffset(EntityData::VT_OWNER, owner);
  }
  explicit EntityDataBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  EntityDataBuilder &operator=(const EntityDataBuilder &);
  flatbuffers::Offset<EntityData> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<EntityData>(end);
    return o;
  }
};

inline flatbuffers::Offset<EntityData> CreateEntityData(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::String> URI = 0,
    flatbuffers::Offset<flatbuffers::String> owner = 0) {
  EntityDataBuilder builder_(_fbb);
  builder_.add_owner(owner);
  builder_.add_URI(URI);
  return builder_.Finish();
}

inline flatbuffers::Offset<EntityData> CreateEntityDataDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const char *URI = nullptr,
    const char *owner = nullptr) {
  auto URI__ = URI ? _fbb.CreateString(URI) : 0;
  auto owner__ = owner ? _fbb.CreateString(owner) : 0;
  return showtime::CreateEntityData(
      _fbb,
      URI__,
      owner__);
}

struct ComponentData FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef ComponentDataBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_COMPONENT_TYPE = 4
  };
  const flatbuffers::String *component_type() const {
    return GetPointer<const flatbuffers::String *>(VT_COMPONENT_TYPE);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_COMPONENT_TYPE) &&
           verifier.VerifyString(component_type()) &&
           verifier.EndTable();
  }
};

struct ComponentDataBuilder {
  typedef ComponentData Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_component_type(flatbuffers::Offset<flatbuffers::String> component_type) {
    fbb_.AddOffset(ComponentData::VT_COMPONENT_TYPE, component_type);
  }
  explicit ComponentDataBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  ComponentDataBuilder &operator=(const ComponentDataBuilder &);
  flatbuffers::Offset<ComponentData> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<ComponentData>(end);
    return o;
  }
};

inline flatbuffers::Offset<ComponentData> CreateComponentData(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::String> component_type = 0) {
  ComponentDataBuilder builder_(_fbb);
  builder_.add_component_type(component_type);
  return builder_.Finish();
}

inline flatbuffers::Offset<ComponentData> CreateComponentDataDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const char *component_type = nullptr) {
  auto component_type__ = component_type ? _fbb.CreateString(component_type) : 0;
  return showtime::CreateComponentData(
      _fbb,
      component_type__);
}

struct PerformerData FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef PerformerDataBuilder Builder;
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           verifier.EndTable();
  }
};

struct PerformerDataBuilder {
  typedef PerformerData Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  explicit PerformerDataBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  PerformerDataBuilder &operator=(const PerformerDataBuilder &);
  flatbuffers::Offset<PerformerData> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<PerformerData>(end);
    return o;
  }
};

inline flatbuffers::Offset<PerformerData> CreatePerformerData(
    flatbuffers::FlatBufferBuilder &_fbb) {
  PerformerDataBuilder builder_(_fbb);
  return builder_.Finish();
}

struct PlugData FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef PlugDataBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_PLUG_DIRECTION = 4,
    VT_MAX_CABLES = 6,
    VT_VALUE = 8
  };
  showtime::PlugDirection plug_direction() const {
    return static_cast<showtime::PlugDirection>(GetField<int8_t>(VT_PLUG_DIRECTION, 0));
  }
  int32_t max_cables() const {
    return GetField<int32_t>(VT_MAX_CABLES, 0);
  }
  const showtime::PlugValue *value() const {
    return GetPointer<const showtime::PlugValue *>(VT_VALUE);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyField<int8_t>(verifier, VT_PLUG_DIRECTION) &&
           VerifyField<int32_t>(verifier, VT_MAX_CABLES) &&
           VerifyOffset(verifier, VT_VALUE) &&
           verifier.VerifyTable(value()) &&
           verifier.EndTable();
  }
};

struct PlugDataBuilder {
  typedef PlugData Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_plug_direction(showtime::PlugDirection plug_direction) {
    fbb_.AddElement<int8_t>(PlugData::VT_PLUG_DIRECTION, static_cast<int8_t>(plug_direction), 0);
  }
  void add_max_cables(int32_t max_cables) {
    fbb_.AddElement<int32_t>(PlugData::VT_MAX_CABLES, max_cables, 0);
  }
  void add_value(flatbuffers::Offset<showtime::PlugValue> value) {
    fbb_.AddOffset(PlugData::VT_VALUE, value);
  }
  explicit PlugDataBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  PlugDataBuilder &operator=(const PlugDataBuilder &);
  flatbuffers::Offset<PlugData> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<PlugData>(end);
    return o;
  }
};

inline flatbuffers::Offset<PlugData> CreatePlugData(
    flatbuffers::FlatBufferBuilder &_fbb,
    showtime::PlugDirection plug_direction = showtime::PlugDirection_NONE,
    int32_t max_cables = 0,
    flatbuffers::Offset<showtime::PlugValue> value = 0) {
  PlugDataBuilder builder_(_fbb);
  builder_.add_value(value);
  builder_.add_max_cables(max_cables);
  builder_.add_plug_direction(plug_direction);
  return builder_.Finish();
}

struct FactoryData FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef FactoryDataBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_CREATABLES = 4
  };
  const flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> *creatables() const {
    return GetPointer<const flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>> *>(VT_CREATABLES);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_CREATABLES) &&
           verifier.VerifyVector(creatables()) &&
           verifier.VerifyVectorOfStrings(creatables()) &&
           verifier.EndTable();
  }
};

struct FactoryDataBuilder {
  typedef FactoryData Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_creatables(flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>>> creatables) {
    fbb_.AddOffset(FactoryData::VT_CREATABLES, creatables);
  }
  explicit FactoryDataBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  FactoryDataBuilder &operator=(const FactoryDataBuilder &);
  flatbuffers::Offset<FactoryData> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<FactoryData>(end);
    return o;
  }
};

inline flatbuffers::Offset<FactoryData> CreateFactoryData(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<flatbuffers::String>>> creatables = 0) {
  FactoryDataBuilder builder_(_fbb);
  builder_.add_creatables(creatables);
  return builder_.Finish();
}

inline flatbuffers::Offset<FactoryData> CreateFactoryDataDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const std::vector<flatbuffers::Offset<flatbuffers::String>> *creatables = nullptr) {
  auto creatables__ = creatables ? _fbb.CreateVector<flatbuffers::Offset<flatbuffers::String>>(*creatables) : 0;
  return showtime::CreateFactoryData(
      _fbb,
      creatables__);
}

struct Entity FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef EntityBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_ENTITY = 4
  };
  const showtime::EntityData *entity() const {
    return GetPointer<const showtime::EntityData *>(VT_ENTITY);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_ENTITY) &&
           verifier.VerifyTable(entity()) &&
           verifier.EndTable();
  }
};

struct EntityBuilder {
  typedef Entity Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_entity(flatbuffers::Offset<showtime::EntityData> entity) {
    fbb_.AddOffset(Entity::VT_ENTITY, entity);
  }
  explicit EntityBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  EntityBuilder &operator=(const EntityBuilder &);
  flatbuffers::Offset<Entity> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<Entity>(end);
    return o;
  }
};

inline flatbuffers::Offset<Entity> CreateEntity(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<showtime::EntityData> entity = 0) {
  EntityBuilder builder_(_fbb);
  builder_.add_entity(entity);
  return builder_.Finish();
}

struct Component FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef ComponentBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_ENTITY = 4,
    VT_COMPONENT = 6
  };
  const showtime::EntityData *entity() const {
    return GetPointer<const showtime::EntityData *>(VT_ENTITY);
  }
  const showtime::ComponentData *component() const {
    return GetPointer<const showtime::ComponentData *>(VT_COMPONENT);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_ENTITY) &&
           verifier.VerifyTable(entity()) &&
           VerifyOffset(verifier, VT_COMPONENT) &&
           verifier.VerifyTable(component()) &&
           verifier.EndTable();
  }
};

struct ComponentBuilder {
  typedef Component Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_entity(flatbuffers::Offset<showtime::EntityData> entity) {
    fbb_.AddOffset(Component::VT_ENTITY, entity);
  }
  void add_component(flatbuffers::Offset<showtime::ComponentData> component) {
    fbb_.AddOffset(Component::VT_COMPONENT, component);
  }
  explicit ComponentBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  ComponentBuilder &operator=(const ComponentBuilder &);
  flatbuffers::Offset<Component> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<Component>(end);
    return o;
  }
};

inline flatbuffers::Offset<Component> CreateComponent(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<showtime::EntityData> entity = 0,
    flatbuffers::Offset<showtime::ComponentData> component = 0) {
  ComponentBuilder builder_(_fbb);
  builder_.add_component(component);
  builder_.add_entity(entity);
  return builder_.Finish();
}

struct Performer FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef PerformerBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_ENTITY = 4,
    VT_COMPONENT = 6,
    VT_PERFORMER = 8
  };
  const showtime::EntityData *entity() const {
    return GetPointer<const showtime::EntityData *>(VT_ENTITY);
  }
  const showtime::ComponentData *component() const {
    return GetPointer<const showtime::ComponentData *>(VT_COMPONENT);
  }
  const showtime::PerformerData *performer() const {
    return GetPointer<const showtime::PerformerData *>(VT_PERFORMER);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_ENTITY) &&
           verifier.VerifyTable(entity()) &&
           VerifyOffset(verifier, VT_COMPONENT) &&
           verifier.VerifyTable(component()) &&
           VerifyOffset(verifier, VT_PERFORMER) &&
           verifier.VerifyTable(performer()) &&
           verifier.EndTable();
  }
};

struct PerformerBuilder {
  typedef Performer Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_entity(flatbuffers::Offset<showtime::EntityData> entity) {
    fbb_.AddOffset(Performer::VT_ENTITY, entity);
  }
  void add_component(flatbuffers::Offset<showtime::ComponentData> component) {
    fbb_.AddOffset(Performer::VT_COMPONENT, component);
  }
  void add_performer(flatbuffers::Offset<showtime::PerformerData> performer) {
    fbb_.AddOffset(Performer::VT_PERFORMER, performer);
  }
  explicit PerformerBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  PerformerBuilder &operator=(const PerformerBuilder &);
  flatbuffers::Offset<Performer> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<Performer>(end);
    return o;
  }
};

inline flatbuffers::Offset<Performer> CreatePerformer(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<showtime::EntityData> entity = 0,
    flatbuffers::Offset<showtime::ComponentData> component = 0,
    flatbuffers::Offset<showtime::PerformerData> performer = 0) {
  PerformerBuilder builder_(_fbb);
  builder_.add_performer(performer);
  builder_.add_component(component);
  builder_.add_entity(entity);
  return builder_.Finish();
}

struct Plug FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef PlugBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_ENTITY = 4,
    VT_PLUG = 6
  };
  const showtime::EntityData *entity() const {
    return GetPointer<const showtime::EntityData *>(VT_ENTITY);
  }
  const showtime::PlugData *plug() const {
    return GetPointer<const showtime::PlugData *>(VT_PLUG);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_ENTITY) &&
           verifier.VerifyTable(entity()) &&
           VerifyOffset(verifier, VT_PLUG) &&
           verifier.VerifyTable(plug()) &&
           verifier.EndTable();
  }
};

struct PlugBuilder {
  typedef Plug Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_entity(flatbuffers::Offset<showtime::EntityData> entity) {
    fbb_.AddOffset(Plug::VT_ENTITY, entity);
  }
  void add_plug(flatbuffers::Offset<showtime::PlugData> plug) {
    fbb_.AddOffset(Plug::VT_PLUG, plug);
  }
  explicit PlugBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  PlugBuilder &operator=(const PlugBuilder &);
  flatbuffers::Offset<Plug> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<Plug>(end);
    return o;
  }
};

inline flatbuffers::Offset<Plug> CreatePlug(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<showtime::EntityData> entity = 0,
    flatbuffers::Offset<showtime::PlugData> plug = 0) {
  PlugBuilder builder_(_fbb);
  builder_.add_plug(plug);
  builder_.add_entity(entity);
  return builder_.Finish();
}

struct Factory FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef FactoryBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_ENTITY = 4,
    VT_FACTORY = 6
  };
  const showtime::EntityData *entity() const {
    return GetPointer<const showtime::EntityData *>(VT_ENTITY);
  }
  const showtime::FactoryData *factory() const {
    return GetPointer<const showtime::FactoryData *>(VT_FACTORY);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_ENTITY) &&
           verifier.VerifyTable(entity()) &&
           VerifyOffset(verifier, VT_FACTORY) &&
           verifier.VerifyTable(factory()) &&
           verifier.EndTable();
  }
};

struct FactoryBuilder {
  typedef Factory Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_entity(flatbuffers::Offset<showtime::EntityData> entity) {
    fbb_.AddOffset(Factory::VT_ENTITY, entity);
  }
  void add_factory(flatbuffers::Offset<showtime::FactoryData> factory) {
    fbb_.AddOffset(Factory::VT_FACTORY, factory);
  }
  explicit FactoryBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  FactoryBuilder &operator=(const FactoryBuilder &);
  flatbuffers::Offset<Factory> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<Factory>(end);
    return o;
  }
};

inline flatbuffers::Offset<Factory> CreateFactory(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<showtime::EntityData> entity = 0,
    flatbuffers::Offset<showtime::FactoryData> factory = 0) {
  FactoryBuilder builder_(_fbb);
  builder_.add_factory(factory);
  builder_.add_entity(entity);
  return builder_.Finish();
}

struct CableData FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef CableDataBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_INPUT_URI = 4,
    VT_OUTPUT_URI = 6
  };
  const flatbuffers::String *input_URI() const {
    return GetPointer<const flatbuffers::String *>(VT_INPUT_URI);
  }
  const flatbuffers::String *output_URI() const {
    return GetPointer<const flatbuffers::String *>(VT_OUTPUT_URI);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_INPUT_URI) &&
           verifier.VerifyString(input_URI()) &&
           VerifyOffset(verifier, VT_OUTPUT_URI) &&
           verifier.VerifyString(output_URI()) &&
           verifier.EndTable();
  }
};

struct CableDataBuilder {
  typedef CableData Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_input_URI(flatbuffers::Offset<flatbuffers::String> input_URI) {
    fbb_.AddOffset(CableData::VT_INPUT_URI, input_URI);
  }
  void add_output_URI(flatbuffers::Offset<flatbuffers::String> output_URI) {
    fbb_.AddOffset(CableData::VT_OUTPUT_URI, output_URI);
  }
  explicit CableDataBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  CableDataBuilder &operator=(const CableDataBuilder &);
  flatbuffers::Offset<CableData> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<CableData>(end);
    return o;
  }
};

inline flatbuffers::Offset<CableData> CreateCableData(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::String> input_URI = 0,
    flatbuffers::Offset<flatbuffers::String> output_URI = 0) {
  CableDataBuilder builder_(_fbb);
  builder_.add_output_URI(output_URI);
  builder_.add_input_URI(input_URI);
  return builder_.Finish();
}

inline flatbuffers::Offset<CableData> CreateCableDataDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const char *input_URI = nullptr,
    const char *output_URI = nullptr) {
  auto input_URI__ = input_URI ? _fbb.CreateString(input_URI) : 0;
  auto output_URI__ = output_URI ? _fbb.CreateString(output_URI) : 0;
  return showtime::CreateCableData(
      _fbb,
      input_URI__,
      output_URI__);
}

struct Cable FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef CableBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_ADDRESS = 4
  };
  const showtime::CableData *address() const {
    return GetPointer<const showtime::CableData *>(VT_ADDRESS);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_ADDRESS) &&
           verifier.VerifyTable(address()) &&
           verifier.EndTable();
  }
};

struct CableBuilder {
  typedef Cable Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_address(flatbuffers::Offset<showtime::CableData> address) {
    fbb_.AddOffset(Cable::VT_ADDRESS, address);
  }
  explicit CableBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  CableBuilder &operator=(const CableBuilder &);
  flatbuffers::Offset<Cable> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<Cable>(end);
    return o;
  }
};

inline flatbuffers::Offset<Cable> CreateCable(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<showtime::CableData> address = 0) {
  CableBuilder builder_(_fbb);
  builder_.add_address(address);
  return builder_.Finish();
}

inline bool VerifyPlugValueData(flatbuffers::Verifier &verifier, const void *obj, PlugValueData type) {
  switch (type) {
    case PlugValueData_NONE: {
      return true;
    }
    case PlugValueData_IntList: {
      auto ptr = reinterpret_cast<const showtime::IntList *>(obj);
      return verifier.VerifyTable(ptr);
    }
    case PlugValueData_FloatList: {
      auto ptr = reinterpret_cast<const showtime::FloatList *>(obj);
      return verifier.VerifyTable(ptr);
    }
    case PlugValueData_StrList: {
      auto ptr = reinterpret_cast<const showtime::StrList *>(obj);
      return verifier.VerifyTable(ptr);
    }
    case PlugValueData_PlugHandshake: {
      auto ptr = reinterpret_cast<const showtime::PlugHandshake *>(obj);
      return verifier.VerifyTable(ptr);
    }
    default: return true;
  }
}

inline bool VerifyPlugValueDataVector(flatbuffers::Verifier &verifier, const flatbuffers::Vector<flatbuffers::Offset<void>> *values, const flatbuffers::Vector<uint8_t> *types) {
  if (!values || !types) return !values && !types;
  if (values->size() != types->size()) return false;
  for (flatbuffers::uoffset_t i = 0; i < values->size(); ++i) {
    if (!VerifyPlugValueData(
        verifier,  values->Get(i), types->GetEnum<PlugValueData>(i))) {
      return false;
    }
  }
  return true;
}

inline bool VerifyEntityTypes(flatbuffers::Verifier &verifier, const void *obj, EntityTypes type) {
  switch (type) {
    case EntityTypes_NONE: {
      return true;
    }
    case EntityTypes_Component: {
      auto ptr = reinterpret_cast<const showtime::Component *>(obj);
      return verifier.VerifyTable(ptr);
    }
    case EntityTypes_Performer: {
      auto ptr = reinterpret_cast<const showtime::Performer *>(obj);
      return verifier.VerifyTable(ptr);
    }
    case EntityTypes_Plug: {
      auto ptr = reinterpret_cast<const showtime::Plug *>(obj);
      return verifier.VerifyTable(ptr);
    }
    case EntityTypes_Factory: {
      auto ptr = reinterpret_cast<const showtime::Factory *>(obj);
      return verifier.VerifyTable(ptr);
    }
    default: return true;
  }
}

inline bool VerifyEntityTypesVector(flatbuffers::Verifier &verifier, const flatbuffers::Vector<flatbuffers::Offset<void>> *values, const flatbuffers::Vector<uint8_t> *types) {
  if (!values || !types) return !values && !types;
  if (values->size() != types->size()) return false;
  for (flatbuffers::uoffset_t i = 0; i < values->size(); ++i) {
    if (!VerifyEntityTypes(
        verifier,  values->Get(i), types->GetEnum<EntityTypes>(i))) {
      return false;
    }
  }
  return true;
}

}  // namespace showtime

#endif  // FLATBUFFERS_GENERATED_GRAPHTYPES_SHOWTIME_H_
