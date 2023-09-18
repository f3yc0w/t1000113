.class public interface abstract Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;
.super Ljava/lang/Object;
.source "MetadataDecoderFactory.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;->DEFAULT:Lcom/google/android/exoplr2avp/metadata/MetadataDecoderFactory;

    return-void
.end method


# virtual methods
.method public abstract createDecoder(Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/metadata/MetadataDecoder;
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z
.end method
