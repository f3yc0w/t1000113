.class Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/TDWebAppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackFlag"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/thinkingdata/android/TDWebAppInterface;

.field private tracked:Z


# direct methods
.method private constructor <init>(Lcn/thinkingdata/android/TDWebAppInterface;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;->this$0:Lcn/thinkingdata/android/TDWebAppInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/thinkingdata/android/TDWebAppInterface;Lcn/thinkingdata/android/TDWebAppInterface$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;-><init>(Lcn/thinkingdata/android/TDWebAppInterface;)V

    return-void
.end method


# virtual methods
.method shouldTrack()Z
    .locals 1

    iget-boolean v0, p0, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;->tracked:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method tracked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;->tracked:Z

    return-void
.end method
