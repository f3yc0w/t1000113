.class public abstract Lcom/google/android/exoplr2avp/upstream/HttpDataSource$BaseFactory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BaseFactory"
.end annotation


# instance fields
.field private final defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$BaseFactory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$BaseFactory;->createDataSourceInternal(Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplr2avp/upstream/HttpDataSource;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createDataSourceInternal(Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;)Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
.end method

.method public final setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$BaseFactory;->defaultRequestProperties:Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;->clearAndSet(Ljava/util/Map;)V

    return-object p0
.end method
