.class public Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;
.super Lcom/google/android/exoplr2avp/upstream/DataSourceException;
.source "FileDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/FileDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileDataSourceException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x7d0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/DataSourceException;-><init>(Ljava/lang/Throwable;I)V

    return-void
.end method
