.class public final Lcom/google/android/exoplr2avp/MediaItem$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

.field private clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

.field private customCacheKey:Ljava/lang/String;

.field private drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

.field private liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

.field private mediaId:Ljava/lang/String;

.field private mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

.field private mimeType:Ljava/lang/String;

.field private requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

.field private streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    .line 94
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplr2avp/MediaItem$1;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 96
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 97
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 98
    sget-object v0, Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 103
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    .line 104
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->mediaId:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mediaId:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 106
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 107
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    .line 108
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    if-eqz p1, :cond_1

    .line 110
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    .line 111
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->uri:Landroid/net/Uri;

    .line 113
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->streamKeys:Ljava/util/List;

    .line 114
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 115
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->tag:Ljava/lang/Object;

    .line 117
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    move-result-object v0

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplr2avp/MediaItem$1;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    .line 120
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/MediaItem$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>(Lcom/google/android/exoplr2avp/MediaItem;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 21

    move-object/from16 v0, p0

    .line 516
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->access$200(Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 518
    iget-object v3, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v3, :cond_3

    .line 520
    new-instance v12, Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mimeType:Ljava/lang/String;

    .line 524
    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->access$300(Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;)Ljava/util/UUID;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    move-result-object v1

    :cond_2
    move-object v5, v1

    iget-object v6, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    iget-object v7, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->streamKeys:Ljava/util/List;

    iget-object v8, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v10, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->tag:Ljava/lang/Object;

    const/4 v11, 0x0

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    move-object/from16 v16, v12

    goto :goto_2

    :cond_3
    move-object/from16 v16, v1

    .line 531
    :goto_2
    new-instance v1, Lcom/google/android/exoplr2avp/MediaItem;

    .line 532
    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mediaId:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    move-object v14, v2

    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    .line 533
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->buildClippingProperties()Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;

    move-result-object v15

    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 535
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    move-result-object v17

    .line 536
    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    sget-object v2, Lcom/google/android/exoplr2avp/MediaMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaMetadata;

    :goto_4
    move-object/from16 v18, v2

    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    const/16 v20, 0x0

    move-object v13, v1

    move-object/from16 v19, v2

    invoke-direct/range {v13 .. v20}, Lcom/google/android/exoplr2avp/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-object v1
.end method

.method public setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setAdTagUri(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdTagUri(Landroid/net/Uri;Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 428
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;->setAdsId(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    return-object p0
.end method

.method public setAdTagUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 408
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdsConfiguration(Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    return-object p0
.end method

.method public setClipEndPositionMs(J)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->setEndPositionMs(J)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    return-object p0
.end method

.method public setClipRelativeToDefaultPosition(Z)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->setRelativeToDefaultPosition(Z)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    return-object p0
.end method

.method public setClipRelativeToLiveWindow(Z)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->setRelativeToLiveWindow(Z)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    return-object p0
.end method

.method public setClipStartPositionMs(J)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->setStartPositionMs(J)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    return-object p0
.end method

.method public setClipStartsAtKeyFrame(Z)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;->setStartsAtKeyFrame(Z)Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    return-object p0
.end method

.method public setClippingConfiguration(Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 173
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration$Builder;

    return-object p0
.end method

.method public setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->customCacheKey:Ljava/lang/String;

    return-object p0
.end method

.method public setDrmConfiguration(Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 230
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;-><init>(Lcom/google/android/exoplr2avp/MediaItem$1;)V

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmForceDefaultLicenseUri(Z)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 294
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setForceDefaultLicenseUri(Z)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmKeySetId([B)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setKeySetId([B)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 264
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 263
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setLicenseRequestHeaders(Ljava/util/Map;)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmMultiSession(Z)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setMultiSession(Z)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmPlayClearContentWithoutKey(Z)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setPlayClearContentWithoutKey(Z)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmSessionForClearPeriods(Z)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setForceSessionsForAudioAndVideoTracks(Z)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmSessionForClearTypes(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/exoplr2avp/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 327
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->setForcedSessionTrackTypes(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setDrmUuid(Ljava/util/UUID;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;->access$100(Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;Ljava/util/UUID;)Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration$Builder;

    return-object p0
.end method

.method public setLiveConfiguration(Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 434
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setLiveMaxOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setLiveMaxPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 484
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setLiveMinPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    return-object p0
.end method

.method public setMediaId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 130
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mediaId:Ljava/lang/String;

    return-object p0
.end method

.method public setMediaMetadata(Lcom/google/android/exoplr2avp/MediaMetadata;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 502
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestMetadata(Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    return-object p0
.end method

.method public setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplr2avp/MediaItem$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 353
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 355
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->streamKeys:Ljava/util/List;

    return-object p0
.end method

.method public setSubtitleConfigurations(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;",
            ">;)",
            "Lcom/google/android/exoplr2avp/MediaItem$Builder;"
        }
    .end annotation

    .line 387
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setSubtitles(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem$Subtitle;",
            ">;)",
            "Lcom/google/android/exoplr2avp/MediaItem$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 377
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    return-object p1
.end method
