.class public final Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private roleFlags:I

.field private selectionFlags:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1287
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;)V
    .locals 1

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    .line 1292
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    .line 1293
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    .line 1294
    iget v0, p1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    .line 1295
    iget v0, p1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    .line 1296
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    .line 1297
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplr2avp/MediaItem$1;)V
    .locals 0

    .line 1272
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;-><init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)Lcom/google/android/exoplr2avp/MediaItem$Subtitle;
    .locals 0

    .line 1272
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->buildSubtitle()Lcom/google/android/exoplr2avp/MediaItem$Subtitle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)I
    .locals 0

    .line 1272
    iget p0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    return p0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)I
    .locals 0

    .line 1272
    iget p0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    return p0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1272
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method private buildSubtitle()Lcom/google/android/exoplr2avp/MediaItem$Subtitle;
    .locals 2

    .line 1348
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Subtitle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Subtitle;-><init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;
    .locals 2

    .line 1344
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;-><init>(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplr2avp/MediaItem$1;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    .line 1338
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    .line 1332
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    .line 1314
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setRoleFlags(I)Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    .line 1326
    iput p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    return-object p0
.end method

.method public setSelectionFlags(I)Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    .line 1320
    iput p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    .line 1302
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method
