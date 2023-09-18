.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$gCP3sl_AViP6RWmU6JcC80IN5Ac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/Bundleable$Creator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$gCP3sl_AViP6RWmU6JcC80IN5Ac;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$gCP3sl_AViP6RWmU6JcC80IN5Ac;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/-$$Lambda$gCP3sl_AViP6RWmU6JcC80IN5Ac;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/-$$Lambda$gCP3sl_AViP6RWmU6JcC80IN5Ac;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$gCP3sl_AViP6RWmU6JcC80IN5Ac;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplr2avp/Bundleable;
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/PlaybackException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackException;-><init>(Landroid/os/Bundle;)V

    return-object v0
.end method
