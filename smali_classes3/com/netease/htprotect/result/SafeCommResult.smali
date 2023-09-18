.class public Lcom/netease/htprotect/result/SafeCommResult;
.super Ljava/lang/Object;


# static fields
.field public static final SC_ALG_ERROR:I = -0x7

.field public static final SC_BUFF_MALLOC_ERROR:I = -0x62

.field public static final SC_CODE_OK:I = 0x0

.field public static final SC_DATA_DECRYPT_ERROR:I = -0x6

.field public static final SC_DATA_TAMPERED:I = -0x5

.field public static final SC_FILE_IS_BROKEN:I = -0x2

.field public static final SC_FILE_NOTEXIST:I = -0x1

.field public static final SC_INSIDE_ERROR:I = -0x63

.field public static final SC_NOT_INIT:I = -0x9

.field public static final SC_PARAM_ERROR:I = -0x4

.field public static final SC_PROTOCOL_VERSION_ERROR:I = -0x3

.field public static final SC_TIMEOUT:I = -0x8


# instance fields
.field public decResult:[B

.field public encBytes:[B

.field public encResult:Ljava/lang/String;

.field public ret:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->decResult:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/netease/htprotect/result/SafeCommResult;->decResult:[B

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->ret:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/htprotect/result/SafeCommResult;->decResult:[B

    if-nez p2, :cond_0

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/netease/htprotect/result/SafeCommResult;->encBytes:[B

    :cond_0
    return-void
.end method
