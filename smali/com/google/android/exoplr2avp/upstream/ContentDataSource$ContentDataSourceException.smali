.class public Lcom/google/android/exoplr2avp/upstream/ContentDataSource$ContentDataSourceException;
.super Lcom/google/android/exoplr2avp/upstream/DataSourceException;
.source "ContentDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/ContentDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/upstream/ContentDataSource$ContentDataSourceException;-><init>(Ljava/io/IOException;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
