.class public final Lcom/google/android/exoplr2avp/Player$Commands$Builder;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/Player$Commands;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final SUPPORTED_COMMANDS:[I


# instance fields
.field private final flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    new-array v0, v0, [I

    .line 355
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->SUPPORTED_COMMANDS:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    new-instance v0, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    new-instance v0, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    .line 398
    invoke-static {p1}, Lcom/google/android/exoplr2avp/Player$Commands;->access$000(Lcom/google/android/exoplr2avp/Player$Commands;)Lcom/google/android/exoplr2avp/util/FlagSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->addAll(Lcom/google/android/exoplr2avp/util/FlagSet;)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/Player$Commands;Lcom/google/android/exoplr2avp/Player$1;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;-><init>(Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method


# virtual methods
.method public add(I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->add(I)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method

.method public addAll(Lcom/google/android/exoplr2avp/Player$Commands;)Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/Player$Commands;->access$000(Lcom/google/android/exoplr2avp/Player$Commands;)Lcom/google/android/exoplr2avp/util/FlagSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->addAll(Lcom/google/android/exoplr2avp/util/FlagSet;)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method

.method public varargs addAll([I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->addAll([I)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method

.method public addAllCommands()Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    sget-object v1, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->SUPPORTED_COMMANDS:[I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->addAll([I)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method

.method public addIf(IZ)Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->addIf(IZ)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method

.method public build()Lcom/google/android/exoplr2avp/Player$Commands;
    .locals 3

    .line 504
    new-instance v0, Lcom/google/android/exoplr2avp/Player$Commands;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->build()Lcom/google/android/exoplr2avp/util/FlagSet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/Player$Commands;-><init>(Lcom/google/android/exoplr2avp/util/FlagSet;Lcom/google/android/exoplr2avp/Player$1;)V

    return-object v0
.end method

.method public remove(I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->remove(I)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method

.method public varargs removeAll([I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->removeAll([I)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method

.method public removeIf(IZ)Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->flagsBuilder:Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/util/FlagSet$Builder;->removeIf(IZ)Lcom/google/android/exoplr2avp/util/FlagSet$Builder;

    return-object p0
.end method
