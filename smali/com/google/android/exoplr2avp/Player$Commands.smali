.class public final Lcom/google/android/exoplr2avp/Player$Commands;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/Bundleable$Creator<",
            "Lcom/google/android/exoplr2avp/Player$Commands;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Lcom/google/android/exoplr2avp/Player$Commands;

.field private static final FIELD_COMMANDS:I


# instance fields
.field private final flags:Lcom/google/android/exoplr2avp/util/FlagSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 509
    new-instance v0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->build()Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/Player$Commands;->EMPTY:Lcom/google/android/exoplr2avp/Player$Commands;

    .line 587
    sget-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$Player$Commands$RE3HwDI8morJMfOIvVdnDs7ZR7A;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$Player$Commands$RE3HwDI8morJMfOIvVdnDs7ZR7A;

    sput-object v0, Lcom/google/android/exoplr2avp/Player$Commands;->CREATOR:Lcom/google/android/exoplr2avp/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/util/FlagSet;)V
    .locals 0

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    iput-object p1, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/util/FlagSet;Lcom/google/android/exoplr2avp/Player$1;)V
    .locals 0

    .line 350
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/Player$Commands;-><init>(Lcom/google/android/exoplr2avp/util/FlagSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/Player$Commands;)Lcom/google/android/exoplr2avp/util/FlagSet;
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Player$Commands;
    .locals 3

    const/4 v0, 0x0

    .line 591
    invoke-static {v0}, Lcom/google/android/exoplr2avp/Player$Commands;->keyForField(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 593
    sget-object p0, Lcom/google/android/exoplr2avp/Player$Commands;->EMPTY:Lcom/google/android/exoplr2avp/Player$Commands;

    return-object p0

    .line 595
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;-><init>()V

    .line 596
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 597
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->add(I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->build()Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object p0

    return-object p0
.end method

.method private static keyForField(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    .line 603
    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$RE3HwDI8morJMfOIvVdnDs7ZR7A(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Player$Commands;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Player$Commands;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Lcom/google/android/exoplr2avp/Player$Commands$Builder;
    .locals 2

    .line 519
    new-instance v0, Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;-><init>(Lcom/google/android/exoplr2avp/Player$Commands;Lcom/google/android/exoplr2avp/Player$1;)V

    return-object v0
.end method

.method public contains(I)Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet;->contains(I)Z

    move-result p1

    return p1
.end method

.method public varargs containsAny([I)Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet;->containsAny([I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 553
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplr2avp/Player$Commands;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 556
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/Player$Commands;

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(I)I
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/FlagSet;->get(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/FlagSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 534
    iget-object v0, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/FlagSet;->size()I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 5

    .line 577
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 579
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/util/FlagSet;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 580
    iget-object v4, p0, Lcom/google/android/exoplr2avp/Player$Commands;->flags:Lcom/google/android/exoplr2avp/util/FlagSet;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplr2avp/util/FlagSet;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_0
    invoke-static {v2}, Lcom/google/android/exoplr2avp/Player$Commands;->keyForField(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
