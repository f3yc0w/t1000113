.class public interface abstract Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/metadata/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entry"
.end annotation


# virtual methods
.method public abstract getWrappedMetadataBytes()[B
.end method

.method public abstract getWrappedMetadataFormat()Lcom/google/android/exoplr2avp/Format;
.end method

.method public abstract populateMediaMetadata(Lcom/google/android/exoplr2avp/MediaMetadata$Builder;)V
.end method
