.class public interface abstract Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createDataSource()Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
.end method

.method public abstract setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;
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
.end method
