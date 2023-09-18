.class final Lcom/google/android/exoplr2avp/extractor/mp4/Atom$LeafAtom;
.super Lcom/google/android/exoplr2avp/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final data:Lcom/google/android/exoplr2avp/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 0

    .line 441
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/mp4/Atom;-><init>(I)V

    .line 442
    iput-object p2, p0, Lcom/google/android/exoplr2avp/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    return-void
.end method
