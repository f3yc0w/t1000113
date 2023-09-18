.class public Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;
.super Ljava/lang/Object;
.source "NERtcLiveStreamLayout.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public backgroundColor:I

.field public backgroundImg:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public backgroundImgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public height:I

.field public userTranscodingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamUserTranscoding;",
            ">;"
        }
    .end annotation
.end field

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 51
    iput v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;->backgroundColor:I

    return-void
.end method
