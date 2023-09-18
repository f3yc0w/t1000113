.class public final synthetic Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$Provider;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;->INSTANCE:Lcom/google/android/exoplr2avp/drm/-$$Lambda$FrameworkMediaDrm$XMlbVCnTmNWSHY0wRlqQcfqEfdY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acquireExoMediaDrm(Ljava/util/UUID;)Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;
    .locals 0

    invoke-static {p1}, Lcom/google/android/exoplr2avp/drm/FrameworkMediaDrm;->lambda$static$0(Ljava/util/UUID;)Lcom/google/android/exoplr2avp/drm/ExoMediaDrm;

    move-result-object p1

    return-object p1
.end method
