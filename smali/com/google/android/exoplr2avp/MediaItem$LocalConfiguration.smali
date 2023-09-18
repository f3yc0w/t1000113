.class public Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalConfiguration"
.end annotation


# instance fields
.field public final adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

.field public final customCacheKey:Ljava/lang/String;

.field public final drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

.field public final mimeType:Ljava/lang/String;

.field public final streamKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitleConfigurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public final subtitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem$Subtitle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final tag:Ljava/lang/Object;

.field public final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;",
            "Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 958
    iput-object p2, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 959
    iput-object p3, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    .line 960
    iput-object p4, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    .line 961
    iput-object p5, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 962
    iput-object p6, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 963
    iput-object p7, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 964
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 965
    :goto_0
    invoke-virtual {p7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p3

    if-ge p2, p3, :cond_0

    .line 966
    invoke-virtual {p7, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->access$1800(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)Lcom/google/android/exoplr2avp/MediaItem$Subtitle;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 968
    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->subtitles:Ljava/util/List;

    .line 969
    iput-object p8, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem$1;)V
    .locals 0

    .line 908
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 977
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 980
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 982
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 983
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    .line 984
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    .line 985
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 986
    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 987
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 988
    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    .line 989
    invoke-static {v1, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 994
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 995
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 996
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 997
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 998
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 999
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1000
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1001
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method
