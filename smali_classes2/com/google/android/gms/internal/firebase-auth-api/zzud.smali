.class final Lcom/google/android/gms/internal/firebase-auth-api/zzud;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@21.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzyg;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

.field final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzue;Lcom/google/android/gms/internal/firebase-auth-api/zzyg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzue;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyg;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 10

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;->zzf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4281

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzue;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzue;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;->zzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;->zzf()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v2, p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    .line 6
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzxa;->zzg(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    return-void

    .line 7
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzzy;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;->zze()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;->zzc()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;->zzb()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Bearer"

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzzy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzue;

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzue;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzvf;

    const/4 v4, 0x0

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzabh;->zzg()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzue;

    iget-object v8, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzue;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxa;

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzud;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzyg;

    const-string v5, "phone"

    .line 12
    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzvf;->zzc(Lcom/google/android/gms/internal/firebase-auth-api/zzvf;Lcom/google/android/gms/internal/firebase-auth-api/zzzy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zze;Lcom/google/android/gms/internal/firebase-auth-api/zzxa;Lcom/google/android/gms/internal/firebase-auth-api/zzyf;)V

    return-void
.end method
