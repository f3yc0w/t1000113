.class public final Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ApplicationInfo.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/ApplicationInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/ApplicationInfo;",
        "Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/ApplicationInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 682
    invoke-static {}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$000()Lcom/google/firebase/perf/v1/ApplicationInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/ApplicationInfo$1;)V
    .locals 0

    .line 675
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAndroidAppInfo()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 956
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$900(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0
.end method

.method public clearAppInstanceId()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 869
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$500(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0
.end method

.method public clearApplicationProcessState()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1150
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1151
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1700(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0
.end method

.method public clearCustomAttributes()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1176
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1177
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1800(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearGoogleAppId()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$200(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0
.end method

.method public clearIosAppInfo()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1027
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1028
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1200(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0
.end method

.method public clearWebAppInfo()Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1098
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1099
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1500(Lcom/google/firebase/perf/v1/ApplicationInfo;)V

    return-object p0
.end method

.method public containsCustomAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 1171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1172
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAndroidAppInfo()Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstanceId()Ljava/lang/String;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAppInstanceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInstanceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getAppInstanceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationProcessState()Lcom/google/firebase/perf/v1/ApplicationProcessState;
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getApplicationProcessState()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1201
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributesCount()I
    .locals 1

    .line 1158
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    .line 1213
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1228
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    .line 1229
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 1230
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1244
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    .line 1245
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 1246
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1247
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getGoogleAppId()Ljava/lang/String;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getGoogleAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getGoogleAppIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIosAppInfo()Lcom/google/firebase/perf/v1/IosApplicationInfo;
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getIosAppInfo()Lcom/google/firebase/perf/v1/IosApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWebAppInfo()Lcom/google/firebase/perf/v1/WebApplicationInfo;
    .locals 1

    .line 1052
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->getWebAppInfo()Lcom/google/firebase/perf/v1/WebApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasAndroidAppInfo()Z
    .locals 1

    .line 899
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAndroidAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasAppInstanceId()Z
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasAppInstanceId()Z

    move-result v0

    return v0
.end method

.method public hasApplicationProcessState()Z
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasApplicationProcessState()Z

    move-result v0

    return v0
.end method

.method public hasGoogleAppId()Z
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasGoogleAppId()Z

    move-result v0

    return v0
.end method

.method public hasIosAppInfo()Z
    .locals 1

    .line 970
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasIosAppInfo()Z

    move-result v0

    return v0
.end method

.method public hasWebAppInfo()Z
    .locals 1

    .line 1041
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->hasWebAppInfo()Z

    move-result v0

    return v0
.end method

.method public mergeAndroidAppInfo(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 945
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 946
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$800(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0
.end method

.method public mergeIosAppInfo(Lcom/google/firebase/perf/v1/IosApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1016
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1017
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1100(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/IosApplicationInfo;)V

    return-object p0
.end method

.method public mergeWebAppInfo(Lcom/google/firebase/perf/v1/WebApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1087
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1088
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1400(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method

.method public putAllCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;"
        }
    .end annotation

    .line 1276
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1277
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1800(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCustomAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1262
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1263
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1264
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1800(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeCustomAttributes(Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1191
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1192
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1800(Lcom/google/firebase/perf/v1/ApplicationInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setAndroidAppInfo(Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 934
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0
.end method

.method public setAndroidAppInfo(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    return-object p0
.end method

.method public setAppInstanceId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 853
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/ApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setAppInstanceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 886
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$600(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setApplicationProcessState(Lcom/google/firebase/perf/v1/ApplicationProcessState;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1137
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1138
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1600(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    return-object p0
.end method

.method public setGoogleAppId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 754
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/ApplicationInfo;Ljava/lang/String;)V

    return-object p0
.end method

.method public setGoogleAppIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 793
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$300(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIosAppInfo(Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/IosApplicationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/IosApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1000(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/IosApplicationInfo;)V

    return-object p0
.end method

.method public setIosAppInfo(Lcom/google/firebase/perf/v1/IosApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 991
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1000(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/IosApplicationInfo;)V

    return-object p0
.end method

.method public setWebAppInfo(Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1075
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1076
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/WebApplicationInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/WebApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1300(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method

.method public setWebAppInfo(Lcom/google/firebase/perf/v1/WebApplicationInfo;)Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->copyOnWrite()V

    .line 1063
    iget-object v0, p0, Lcom/google/firebase/perf/v1/ApplicationInfo$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$1300(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/WebApplicationInfo;)V

    return-object p0
.end method
