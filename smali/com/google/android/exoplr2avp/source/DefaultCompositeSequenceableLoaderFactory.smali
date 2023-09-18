.class public final Lcom/google/android/exoplr2avp/source/DefaultCompositeSequenceableLoaderFactory;
.super Ljava/lang/Object;
.source "DefaultCompositeSequenceableLoaderFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs createCompositeSequenceableLoader([Lcom/google/android/exoplr2avp/source/SequenceableLoader;)Lcom/google/android/exoplr2avp/source/SequenceableLoader;
    .locals 1

    .line 24
    new-instance v0, Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoader;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoader;-><init>([Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V

    return-object v0
.end method
