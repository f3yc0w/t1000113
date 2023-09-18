.class public final synthetic Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$yPvvi16mHahdVxV8sfXTPeE3ftg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$yPvvi16mHahdVxV8sfXTPeE3ftg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$yPvvi16mHahdVxV8sfXTPeE3ftg;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$yPvvi16mHahdVxV8sfXTPeE3ftg;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$yPvvi16mHahdVxV8sfXTPeE3ftg;->INSTANCE:Lcom/google/android/exoplr2avp/trackselection/-$$Lambda$yPvvi16mHahdVxV8sfXTPeE3ftg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object p1

    return-object p1
.end method
