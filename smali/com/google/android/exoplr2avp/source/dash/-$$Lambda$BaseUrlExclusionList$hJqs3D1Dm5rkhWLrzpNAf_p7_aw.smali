.class public final synthetic Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$BaseUrlExclusionList$hJqs3D1Dm5rkhWLrzpNAf_p7_aw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$BaseUrlExclusionList$hJqs3D1Dm5rkhWLrzpNAf_p7_aw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$BaseUrlExclusionList$hJqs3D1Dm5rkhWLrzpNAf_p7_aw;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$BaseUrlExclusionList$hJqs3D1Dm5rkhWLrzpNAf_p7_aw;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$BaseUrlExclusionList$hJqs3D1Dm5rkhWLrzpNAf_p7_aw;->INSTANCE:Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$BaseUrlExclusionList$hJqs3D1Dm5rkhWLrzpNAf_p7_aw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    check-cast p2, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->lambda$hJqs3D1Dm5rkhWLrzpNAf_p7_aw(Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;)I

    move-result p1

    return p1
.end method
