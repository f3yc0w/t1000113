.class public Lcom/netease/yunxin/lite/video/VideoCompatHelper;
.super Ljava/lang/Object;
.source "VideoCompatHelper.java"


# static fields
.field private static final KEY_1080P:Ljava/lang/String; = "1080P"

.field private static final KEY_480P:Ljava/lang/String; = "480P"

.field private static final KEY_720P:Ljava/lang/String; = "720P"

.field private static final KEY_LOW:Ljava/lang/String; = "LOW"

.field private static final KEY_LOWEST:Ljava/lang/String; = "LOWEST"

.field private static final QUALITY_1080P_PIXEL:I = 0x1fa400

.field private static final QUALITY_480P_PIXEL:J = 0x4b000L

.field private static final QUALITY_720P_PIXEL:J = 0xe1000L

.field private static final QUALITY_LOWEST_PIXEL:J = 0x4b00L

.field private static final QUALITY_LOW_PIXEL:J = 0x12c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findBestFpsForCapture(Ljava/lang/String;II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fpsCompat",
            "width",
            "height"
        }
    .end annotation

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_5

    .line 38
    invoke-static {p0}, Lcom/netease/yunxin/lite/video/VideoCompatHelper;->parseString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    int-to-long v2, p1

    int-to-long p1, p2

    mul-long v2, v2, p1

    const-wide/16 p1, 0x4b00

    cmp-long v0, v2, p1

    if-gtz v0, :cond_1

    const-string p1, "LOWEST"

    .line 44
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 45
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const-wide/32 p1, 0x12c00

    cmp-long v0, v2, p1

    if-gtz v0, :cond_2

    const-string p1, "LOW"

    .line 47
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 48
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    const-wide/32 p1, 0x4b000

    cmp-long v0, v2, p1

    if-gtz v0, :cond_3

    const-string p1, "480P"

    .line 50
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_3
    const-wide/32 p1, 0xe1000

    cmp-long v0, v2, p1

    if-gtz v0, :cond_4

    const-string p1, "720P"

    .line 53
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 54
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_4
    const-wide/32 p1, 0x1fa400

    cmp-long v0, v2, p1

    if-gtz v0, :cond_5

    const-string p1, "1080P"

    .line 56
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_5
    :goto_0
    return v1
.end method

.method private static parseString(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, ","

    .line 70
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 71
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    .line 72
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "="

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 77
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 78
    aget-object v5, v4, v2

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method
