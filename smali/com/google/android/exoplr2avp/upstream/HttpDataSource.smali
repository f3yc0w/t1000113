.class public interface abstract Lcom/google/android/exoplr2avp/upstream/HttpDataSource;
.super Ljava/lang/Object;
.source "HttpDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidResponseCodeException;,
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$InvalidContentTypeException;,
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$CleartextNotPermittedException;,
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;,
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$BaseFactory;,
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$RequestProperties;,
        Lcom/google/android/exoplr2avp/upstream/HttpDataSource$Factory;
    }
.end annotation


# static fields
.field public static final REJECT_PAYWALL_TYPES:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    sget-object v0, Lcom/google/android/exoplr2avp/upstream/-$$Lambda$HttpDataSource$aLth3vdYadVGxzIXSVOlNK2ceuA;->INSTANCE:Lcom/google/android/exoplr2avp/upstream/-$$Lambda$HttpDataSource$aLth3vdYadVGxzIXSVOlNK2ceuA;

    sput-object v0, Lcom/google/android/exoplr2avp/upstream/HttpDataSource;->REJECT_PAYWALL_TYPES:Lcom/google/common/base/Predicate;

    return-void
.end method


# virtual methods
.method public abstract clearAllRequestProperties()V
.end method

.method public abstract clearRequestProperty(Ljava/lang/String;)V
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract getResponseCode()I
.end method

.method public abstract getResponseHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract read([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/HttpDataSource$HttpDataSourceException;
        }
    .end annotation
.end method

.method public abstract setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
.end method
