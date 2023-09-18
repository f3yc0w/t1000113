.class public interface abstract Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    new-instance v0, Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/text/SubtitleDecoder;
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z
.end method
