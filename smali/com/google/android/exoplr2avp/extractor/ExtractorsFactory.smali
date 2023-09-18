.class public interface abstract Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "ExtractorsFactory.java"


# static fields
.field public static final EMPTY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/exoplr2avp/extractor/-$$Lambda$ExtractorsFactory$fG1JITXBIlAKUPsXXlrO2HOtECw;->INSTANCE:Lcom/google/android/exoplr2avp/extractor/-$$Lambda$ExtractorsFactory$fG1JITXBIlAKUPsXXlrO2HOtECw;

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;->EMPTY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractors()[Lcom/google/android/exoplr2avp/extractor/Extractor;
.end method

.method public abstract createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Lcom/google/android/exoplr2avp/extractor/Extractor;"
        }
    .end annotation
.end method
