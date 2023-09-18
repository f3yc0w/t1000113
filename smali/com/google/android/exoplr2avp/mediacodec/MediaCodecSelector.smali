.class public interface abstract Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;
.super Ljava/lang/Object;
.source "MediaCodecSelector.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    sget-object v0, Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;->INSTANCE:Lcom/google/android/exoplr2avp/mediacodec/-$$Lambda$R9-VvtMBL47Gr8AoGoc_GQfrX78;

    sput-object v0, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;

    return-void
.end method


# virtual methods
.method public abstract getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation
.end method
