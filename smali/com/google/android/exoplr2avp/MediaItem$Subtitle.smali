.class public final Lcom/google/android/exoplr2avp/MediaItem$Subtitle;
.super Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subtitle"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1446
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/MediaItem$Subtitle;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1455
    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/MediaItem$Subtitle;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1469
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1473
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;-><init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplr2avp/MediaItem$1;)V
    .locals 0

    .line 1439
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/MediaItem$Subtitle;-><init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)V

    return-void
.end method
