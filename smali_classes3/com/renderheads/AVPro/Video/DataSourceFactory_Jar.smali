.class public Lcom/renderheads/AVPro/Video/DataSourceFactory_Jar;
.super Ljava/lang/Object;
.source "DataSourceFactory_Jar.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# instance fields
.field private m_FileOffset:J

.field private m_Path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "fileOffset"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Jar;->m_Path:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Jar;->m_FileOffset:J

    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 4

    .line 1
    new-instance v0, Lcom/renderheads/AVPro/Video/DataSource_Jar;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Jar;->m_Path:Ljava/lang/String;

    iget-wide v2, p0, Lcom/renderheads/AVPro/Video/DataSourceFactory_Jar;->m_FileOffset:J

    invoke-direct {v0, v1, v2, v3}, Lcom/renderheads/AVPro/Video/DataSource_Jar;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method
