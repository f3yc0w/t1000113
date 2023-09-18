.class public Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;
.super Ljava/lang/Object;
.source "NERtcMediaRelayParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelMediaRelayConfiguration"
.end annotation


# instance fields
.field public destMediaInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public sourceMediaInfo:Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;

.field final synthetic this$0:Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->this$0:Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->destMediaInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDstMediaInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;",
            ">;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->destMediaInfo:Ljava/util/Map;

    return-object v0
.end method

.method public getSrcMediaInfo()Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->sourceMediaInfo:Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;

    return-object v0
.end method

.method public removeDestChannelInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelName"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->destMediaInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDestChannelInfo(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "channelName",
            "destInfo"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->destMediaInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->destMediaInfo:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setSrcChannelInfo(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcInfo"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;->sourceMediaInfo:Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;

    return-void
.end method
