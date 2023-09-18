.class public Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption;
.super Ljava/lang/Object;
.source "NERtcLiveStreamTaskOption.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;
    }
.end annotation


# instance fields
.field public layoutMode:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

.field public layoutParamters:Ljava/lang/String;

.field public mainPictureUid:J

.field public serverRecordEnabled:Z

.field public taskId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption;->serverRecordEnabled:Z

    .line 75
    sget-object v0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;->layoutFloatingRightVertical:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption;->layoutMode:Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption$NERtcLiveStreamLayoutMode;

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/NERtcLiveStreamTaskOption;->mainPictureUid:J

    return-void
.end method
