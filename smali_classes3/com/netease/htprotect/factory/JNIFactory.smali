.class public Lcom/netease/htprotect/factory/JNIFactory;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/netease/htprotect/factory/JNIFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/htprotect/factory/JNIFactory;
    .locals 1

    sget-object v0, Lcom/netease/htprotect/factory/JNIFactory;->a:Lcom/netease/htprotect/factory/JNIFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/netease/htprotect/factory/JNIFactory;

    invoke-direct {v0}, Lcom/netease/htprotect/factory/JNIFactory;-><init>()V

    sput-object v0, Lcom/netease/htprotect/factory/JNIFactory;->a:Lcom/netease/htprotect/factory/JNIFactory;

    :cond_0
    sget-object v0, Lcom/netease/htprotect/factory/JNIFactory;->a:Lcom/netease/htprotect/factory/JNIFactory;

    return-object v0
.end method


# virtual methods
.method public native d0f149b4da6ec477(ILjava/lang/String;)Ljava/lang/String;
.end method

.method public native d8f5300ec791da421(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native db8b1e50841128606(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public native e3aa07afb863c1kva([B)[B
.end method

.method public native e9edd62242ad7aecf(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native f190da6241bff18bf()V
.end method

.method public native hccd63688a790ca65(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/netease/htprotect/HTPCallback;)V
.end method

.method public native r25d273c7ad4065c1(Ljava/lang/String;IZ)[B
.end method

.method public native r25d273c7ad4065c3([BIIZIZ)[B
.end method

.method public native r316e12523620efb7(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native t76euy9fu8bv485zh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public native u233ace17d63ca9e(ZIIIII)V
.end method

.method public native w3facf96be4b4fd19(ILjava/lang/String;)Ljava/lang/String;
.end method
