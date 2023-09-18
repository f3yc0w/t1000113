.class public final Lcom/google/android/exoplr2avp/MediaItem;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;,
        Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;,
        Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;,
        Lcom/google/android/exoplr2avp/MediaItem$Subtitle;,
        Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;,
        Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;,
        Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;,
        Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;,
        Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;,
        Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;,
        Lcom/google/android/exoplr2avp/MediaItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_MEDIA_ID:Ljava/lang/String; = ""

.field public static final EMPTY:Lcom/google/android/exoplr2avp/MediaItem;

.field private static final FIELD_CLIPPING_PROPERTIES:I = 0x3

.field private static final FIELD_LIVE_CONFIGURATION:I = 0x1

.field private static final FIELD_MEDIA_ID:I = 0x0

.field private static final FIELD_MEDIA_METADATA:I = 0x2

.field private static final FIELD_REQUEST_METADATA:I = 0x4


# instance fields
.field public final clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

.field public final clippingProperties:Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

.field public final localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

.field public final mediaId:Ljava/lang/String;

.field public final mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

.field public final playbackProperties:Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1849
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/MediaItem;->EMPTY:Lcom/google/android/exoplr2avp/MediaItem;

    .line 1976
    sget-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaItem$TCQiwLu0LIUVo5lO8100vc335sE;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$MediaItem$TCQiwLu0LIUVo5lO8100vc335sE;

    sput-object v0, Lcom/google/android/exoplr2avp/MediaItem;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;)V
    .locals 0

    .line 1888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1889
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaId:Ljava/lang/String;

    .line 1890
    iput-object p3, p0, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 1891
    iput-object p3, p0, Lcom/google/android/exoplr2avp/MediaItem;->playbackProperties:Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;

    .line 1892
    iput-object p4, p0, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    .line 1893
    iput-object p5, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 1894
    iput-object p2, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    .line 1895
    iput-object p2, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingProperties:Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;

    .line 1896
    iput-object p6, p0, Lcom/google/android/exoplr2avp/MediaItem;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;Lcom/google/android/exoplr2avp/MediaItem$1;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplr2avp/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/MediaItem;
    .locals 8

    const/4 v0, 0x0

    .line 1980
    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const/4 v0, 0x1

    .line 1982
    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1985
    sget-object v0, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->UNSET:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    goto :goto_0

    .line 1987
    :cond_0
    sget-object v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    :goto_0
    move-object v5, v0

    const/4 v0, 0x2

    .line 1989
    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1992
    sget-object v0, Lcom/google/android/exoplr2avp/MediaMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaMetadata;

    goto :goto_1

    .line 1994
    :cond_1
    sget-object v1, Lcom/google/android/exoplr2avp/MediaMetadata;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaMetadata;

    :goto_1
    move-object v6, v0

    const/4 v0, 0x3

    .line 1997
    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2000
    sget-object v0, Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;->UNSET:Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;

    goto :goto_2

    .line 2002
    :cond_2
    sget-object v1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;

    :goto_2
    move-object v3, v0

    const/4 v0, 0x4

    .line 2004
    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    .line 2007
    sget-object p0, Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    goto :goto_3

    .line 2009
    :cond_3
    sget-object v0, Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    :goto_3
    move-object v7, p0

    .line 2011
    new-instance p0, Lcom/google/android/exoplr2avp/MediaItem;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/MediaItem;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$ClippingProperties;Lcom/google/android/exoplr2avp/MediaItem$PlaybackProperties;Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;)V

    return-object p0
.end method

.method public static fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 64
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static fromUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 54
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 2021
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$TCQiwLu0LIUVo5lO8100vc335sE(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/MediaItem;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/MediaItem;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;
    .locals 2

    .line 1901
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1909
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplr2avp/MediaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1913
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/MediaItem;

    .line 1915
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem;->mediaId:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    .line 1916
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 1917
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    .line 1918
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 1919
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    .line 1920
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
    .locals 2

    .line 1925
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1926
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1927
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1928
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1929
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1930
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1962
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    .line 1963
    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1964
    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x2

    .line 1965
    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaItem;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x3

    .line 1966
    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v1, 0x4

    .line 1967
    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaItem;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaItem;->requestMetadata:Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$RequestMetadata;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method
