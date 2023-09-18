.class final Lcn/thinkingdata/android/TDConfig$NetworkType;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/TDConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkType"
.end annotation


# static fields
.field public static final TYPE_2G:I = 0x1

.field public static final TYPE_3G:I = 0x2

.field public static final TYPE_4G:I = 0x4

.field public static final TYPE_5G:I = 0x10

.field public static final TYPE_ALL:I = 0xff

.field public static final TYPE_WIFI:I = 0x8


# instance fields
.field final synthetic this$0:Lcn/thinkingdata/android/TDConfig;


# direct methods
.method private constructor <init>(Lcn/thinkingdata/android/TDConfig;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig$NetworkType;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
