.class public final Lcom/tendcloud/tenddata/game/bz;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 14
    sput-object v0, Lcom/tendcloud/tenddata/game/bz;->a:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .locals 0

    .line 30
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cd;->a()I

    .line 34
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/cb;->a([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 40
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 42
    sget-object p0, Lcom/tendcloud/tenddata/game/bz;->a:[B

    return-object p0
.end method

.method public static b([B)[B
    .locals 0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cd;->a()I

    .line 56
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/cb;->b([B)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 62
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 64
    sget-object p0, Lcom/tendcloud/tenddata/game/bz;->a:[B

    return-object p0
.end method
