// automatically generated by the FlatBuffers compiler, do not modify


#ifndef FLATBUFFERS_GENERATED_STAGEBEACONMESSAGE_H_
#define FLATBUFFERS_GENERATED_STAGEBEACONMESSAGE_H_

#include "flatbuffers/flatbuffers.h"

struct StageBeaconMessage;
struct StageBeaconMessageBuilder;

struct StageBeaconMessage FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  typedef StageBeaconMessageBuilder Builder;
  enum FlatBuffersVTableOffset FLATBUFFERS_VTABLE_UNDERLYING_TYPE {
    VT_NAME = 4,
    VT_PORT = 6
  };
  const flatbuffers::String *name() const {
    return GetPointer<const flatbuffers::String *>(VT_NAME);
  }
  int32_t port() const {
    return GetField<int32_t>(VT_PORT, 0);
  }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyOffset(verifier, VT_NAME) &&
           verifier.VerifyString(name()) &&
           VerifyField<int32_t>(verifier, VT_PORT) &&
           verifier.EndTable();
  }
};

struct StageBeaconMessageBuilder {
  typedef StageBeaconMessage Table;
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_name(flatbuffers::Offset<flatbuffers::String> name) {
    fbb_.AddOffset(StageBeaconMessage::VT_NAME, name);
  }
  void add_port(int32_t port) {
    fbb_.AddElement<int32_t>(StageBeaconMessage::VT_PORT, port, 0);
  }
  explicit StageBeaconMessageBuilder(flatbuffers::FlatBufferBuilder &_fbb)
        : fbb_(_fbb) {
    start_ = fbb_.StartTable();
  }
  StageBeaconMessageBuilder &operator=(const StageBeaconMessageBuilder &);
  flatbuffers::Offset<StageBeaconMessage> Finish() {
    const auto end = fbb_.EndTable(start_);
    auto o = flatbuffers::Offset<StageBeaconMessage>(end);
    return o;
  }
};

inline flatbuffers::Offset<StageBeaconMessage> CreateStageBeaconMessage(
    flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::String> name = 0,
    int32_t port = 0) {
  StageBeaconMessageBuilder builder_(_fbb);
  builder_.add_port(port);
  builder_.add_name(name);
  return builder_.Finish();
}

inline flatbuffers::Offset<StageBeaconMessage> CreateStageBeaconMessageDirect(
    flatbuffers::FlatBufferBuilder &_fbb,
    const char *name = nullptr,
    int32_t port = 0) {
  auto name__ = name ? _fbb.CreateString(name) : 0;
  return CreateStageBeaconMessage(
      _fbb,
      name__,
      port);
}

inline const StageBeaconMessage *GetStageBeaconMessage(const void *buf) {
  return flatbuffers::GetRoot<StageBeaconMessage>(buf);
}

inline const StageBeaconMessage *GetSizePrefixedStageBeaconMessage(const void *buf) {
  return flatbuffers::GetSizePrefixedRoot<StageBeaconMessage>(buf);
}

inline bool VerifyStageBeaconMessageBuffer(
    flatbuffers::Verifier &verifier) {
  return verifier.VerifyBuffer<StageBeaconMessage>(nullptr);
}

inline bool VerifySizePrefixedStageBeaconMessageBuffer(
    flatbuffers::Verifier &verifier) {
  return verifier.VerifySizePrefixedBuffer<StageBeaconMessage>(nullptr);
}

inline void FinishStageBeaconMessageBuffer(
    flatbuffers::FlatBufferBuilder &fbb,
    flatbuffers::Offset<StageBeaconMessage> root) {
  fbb.Finish(root);
}

inline void FinishSizePrefixedStageBeaconMessageBuffer(
    flatbuffers::FlatBufferBuilder &fbb,
    flatbuffers::Offset<StageBeaconMessage> root) {
  fbb.FinishSizePrefixed(root);
}

#endif  // FLATBUFFERS_GENERATED_STAGEBEACONMESSAGE_H_