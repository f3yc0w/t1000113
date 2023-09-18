.class public interface abstract Lcom/google/android/exoplr2avp/source/MediaSourceFactory;
.super Ljava/lang/Object;
.source "MediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final UNSUPPORTED:Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lcom/google/android/exoplr2avp/source/MediaSourceFactory$1;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/MediaSourceFactory$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/MediaSourceFactory;->UNSUPPORTED:Lcom/google/android/exoplr2avp/source/MediaSourceFactory;

    return-void
.end method
