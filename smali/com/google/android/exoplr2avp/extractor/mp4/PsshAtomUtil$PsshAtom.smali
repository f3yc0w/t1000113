.class Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PsshAtom"
.end annotation


# instance fields
.field private final schemeData:[B

.field private final uuid:Ljava/util/UUID;

.field private final version:I


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    .line 201
    iput p2, p0, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    .line 202
    iput-object p3, p0, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;)Ljava/util/UUID;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;->uuid:Ljava/util/UUID;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;)I
    .locals 0

    .line 193
    iget p0, p0, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;->version:I

    return p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;)[B
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/google/android/exoplr2avp/extractor/mp4/PsshAtomUtil$PsshAtom;->schemeData:[B

    return-object p0
.end method