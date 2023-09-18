.class public Lcom/netease/htprotect/poly/a;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Lcom/netease/htprotect/HTPCallback;

.field private static volatile d:[Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/netease/htprotect/poly/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/netease/htprotect/poly/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/htprotect/poly/a$1;

    invoke-direct {v1, p0}, Lcom/netease/htprotect/poly/a$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/netease/htprotect/poly/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "^[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    sget-object v0, Lcom/netease/htprotect/poly/a;->a:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public static e()I
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/xt/ClickHelper;->get()Lcom/netease/mobsec/xt/ClickHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobsec/xt/ClickHelper;->startHook()I

    move-result v0

    return v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/xt/ClickHelper;->get()Lcom/netease/mobsec/xt/ClickHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mobsec/xt/ClickHelper;->getClickInfos()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g([BLjava/lang/String;Ljava/util/HashMap;II)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)[B"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    invoke-static {p0, p1, p2, p4}, Lcom/netease/htprotect/d/b;->a([BLjava/lang/String;Ljava/util/HashMap;I)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2, p4}, Lcom/netease/htprotect/d/b;->b([BLjava/lang/String;Ljava/util/HashMap;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static ga(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/netease/htprotect/poly/a;->ge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    return v0

    :cond_1
    array-length p0, v2

    new-array p1, p0, [Ljava/security/cert/X509Certificate;

    sput-object p1, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_3

    aget-object p2, v2, p1

    if-nez p2, :cond_2

    return v0

    :cond_2
    sget-object p3, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    aput-object p2, p3, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static ge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    const-string v0, "EC"

    invoke-static {v0, p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object p1

    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    new-instance p0, Ljava/security/spec/ECGenParameterSpec;

    invoke-direct {p0, p2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAlgorithmParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    const-string p2, "NONE"

    const-string v0, "SHA-256"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object p0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p2, v0, :cond_0

    const/16 p2, 0x20

    new-array p2, p2, [B

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {p0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p2, v0, :cond_1

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    :cond_1
    invoke-virtual {p0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static gn()[B
    .locals 3

    sget-object v0, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v0, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static h(Ljava/lang/String;Ljava/util/HashMap;II)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;II)[B"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, p3}, Lcom/netease/htprotect/d/b;->a(Ljava/lang/String;Ljava/util/HashMap;I)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p3}, Lcom/netease/htprotect/d/b;->b(Ljava/lang/String;Ljava/util/HashMap;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static i()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/netease/htprotect/poly/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "00000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    sget-object v0, Lcom/netease/htprotect/poly/a;->b:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/netease/mobsec/vt/ViewTracker;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static s(Lcom/netease/htprotect/HTPCallback;)V
    .locals 0

    sput-object p0, Lcom/netease/htprotect/poly/a;->c:Lcom/netease/htprotect/HTPCallback;

    return-void
.end method

.method public static v([B[B)I
    .locals 5

    sget-object v0, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    sget-object v2, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    array-length v2, v2

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    sget-object v4, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    aget-object v4, v4, v2

    :try_start_0
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    move-object v0, v4

    goto :goto_0

    :catch_0
    return v1

    :cond_1
    sget-object v0, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    sget-object v1, Lcom/netease/htprotect/poly/a;->d:[Ljava/security/cert/X509Certificate;

    sub-int/2addr v0, v3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    return v3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public static y(ILjava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/netease/htprotect/poly/a;->c:Lcom/netease/htprotect/HTPCallback;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/htprotect/poly/a;->c:Lcom/netease/htprotect/HTPCallback;

    invoke-interface {v0, p0, p1}, Lcom/netease/htprotect/HTPCallback;->onReceive(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
