.class public final Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
.super Ljava/lang/Object;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowCrossProtocolRedirects:Z

.field private connectTimeoutMs:I

.field private contentTypePredicate:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

.field private keepPostFor302Redirects:Z

.field private readTimeoutMs:I

.field private transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    const/16 v0, 0x1f40

    .line 80
    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    .line 81
    iput v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;
    .locals 10

    .line 186
    new-instance v9, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    iget v3, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    iget-boolean v4, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    iget-object v5, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    iget-boolean v7, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->keepPostFor302Redirects:Z

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;-><init>(Ljava/lang/String;IIZLcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;Lcom/google/common/base/Predicate;ZLcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$1;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v9, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    :cond_0
    return-object v9
.end method

.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->allowCrossProtocolRedirects:Z

    return-object p0
.end method

.method public setConnectTimeoutMs(I)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 0

    .line 114
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->connectTimeoutMs:I

    return-object p0
.end method

.method public setContentTypePredicate(Lcom/google/common/base/Predicate;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->contentTypePredicate:Lcom/google/common/base/Predicate;

    return-object p0
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    return-object p0
.end method

.method public bridge synthetic setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setKeepPostFor302Redirects(Z)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 0

    .line 180
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->keepPostFor302Redirects:Z

    return-object p0
.end method

.method public setReadTimeoutMs(I)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 0

    .line 127
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->readTimeoutMs:I

    return-object p0
.end method

.method public setTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->userAgent:Ljava/lang/String;

    return-object p0
.end method
