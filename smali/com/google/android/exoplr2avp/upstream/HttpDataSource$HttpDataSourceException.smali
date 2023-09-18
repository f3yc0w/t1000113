.class public Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;
.super Lcom/google/android/exoplr2avp/upstream/DataSourceException;
.source "HttpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static final TYPE_CLOSE:I = 0x3

.field public static final TYPE_OPEN:I = 0x1

.field public static final TYPE_READ:I = 0x2


# instance fields
.field public final dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 242
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V
    .locals 0

    .line 255
    invoke-static {p2, p3}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(I)V

    .line 256
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 257
    iput p3, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 296
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V
    .locals 0

    .line 313
    invoke-static {p3, p4}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    .line 314
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 315
    iput p4, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/DataSpec;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 267
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V
    .locals 0

    .line 284
    invoke-static {p3, p4}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/String;I)V

    .line 285
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 286
    iput p4, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;I)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v4, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 326
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V
    .locals 0

    .line 345
    invoke-static {p4, p5}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->assignErrorCode(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 346
    iput-object p3, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 347
    iput p5, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;->type:I

    return-void
.end method

.method private static assignErrorCode(II)I
    .locals 1

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p0, 0x7d1

    :cond_0
    return p0
.end method

.method public static createForIOException(Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;I)Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;
    .locals 3

    .line 212
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 213
    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d7

    if-eqz v1, :cond_0

    const/16 v0, 0x7d2

    goto :goto_0

    .line 215
    :cond_0
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_1

    const/16 v0, 0x3ec

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 221
    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7d7

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d1

    :goto_0
    if-ne v0, v2, :cond_3

    .line 227
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$CleartextNotPermittedException;

    invoke-direct {p2, p0, p1}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$CleartextNotPermittedException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    goto :goto_1

    .line 228
    :cond_3
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/io/IOException;Lcom/google/android/exoplr2avp/upstream/DataSpec;II)V

    move-object p2, v1

    :goto_1
    return-object p2
.end method
