.class public final Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private adTagUri:Landroid/net/Uri;

.field private adsId:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;->adTagUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;)Landroid/net/Uri;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;->adTagUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;)Ljava/lang/Object;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;->adsId:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;
    .locals 2

    .line 857
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;-><init>(Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-object v0
.end method

.method public setAdTagUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;
    .locals 0

    .line 841
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;->adTagUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setAdsId(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration$Builder;->adsId:Ljava/lang/Object;

    return-object p0
.end method
