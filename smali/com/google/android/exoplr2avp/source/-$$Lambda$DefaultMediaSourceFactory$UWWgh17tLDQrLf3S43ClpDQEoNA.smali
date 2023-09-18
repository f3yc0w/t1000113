.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$UWWgh17tLDQrLf3S43ClpDQEoNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/Format;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$UWWgh17tLDQrLf3S43ClpDQEoNA;->f$0:Lcom/google/android/exoplr2avp/Format;

    return-void
.end method


# virtual methods
.method public final createExtractors()[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$UWWgh17tLDQrLf3S43ClpDQEoNA;->f$0:Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->lambda$createMediaSource$0(Lcom/google/android/exoplr2avp/Format;)[Lcom/google/android/exoplr2avp/extractor/Extractor;

    move-result-object v0

    return-object v0
.end method

.method public synthetic createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory$-CC;->$default$createExtractors(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/exoplr2avp/extractor/Extractor;

    move-result-object p1

    return-object p1
.end method
