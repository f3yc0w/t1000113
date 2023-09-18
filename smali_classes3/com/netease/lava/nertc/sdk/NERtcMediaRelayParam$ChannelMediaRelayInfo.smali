.class public Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;
.super Ljava/lang/Object;
.source "NERtcMediaRelayParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChannelMediaRelayInfo"
.end annotation


# instance fields
.field private channelCid:J

.field private channelName:Ljava/lang/String;

.field private channelToken:Ljava/lang/String;

.field private channelUid:J

.field final synthetic this$0:Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "token",
            "channelName",
            "uid"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->this$0:Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 31
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelUid:J

    .line 50
    iput-wide p4, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelUid:J

    .line 51
    iput-object p3, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelName:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelToken:Ljava/lang/String;

    const-wide/16 p1, 0x0

    .line 53
    iput-wide p1, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelCid:J

    return-void
.end method


# virtual methods
.method public getChannelCid()J
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelCid:J

    return-wide v0
.end method

.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelToken()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelToken:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelUid()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->channelUid:J

    return-wide v0
.end method
