.class final Ljam;
.super Ljaw;


# instance fields
.field final synthetic a:Ljan;


# direct methods
.method public constructor <init>(Ljan;)V
    .locals 0

    iput-object p1, p0, Ljam;->a:Ljan;

    invoke-direct {p0}, Ljaw;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljam;->a:Ljan;

    iget-object v0, v0, Ljan;->a:Landroid/content/Context;

    invoke-static {v0}, Ljav;->c(Landroid/content/Context;)Ljav;

    move-result-object v0

    iget-object v1, p0, Ljam;->a:Ljan;

    iget-object v1, v1, Ljan;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, v1, p1}, Ljav;->e(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    iget-object v0, p0, Ljam;->a:Ljan;

    new-instance v1, Ljqu;

    const/4 v2, 0x1

    invoke-direct {v1, p1, p2, v2}, Ljqu;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;I)V

    invoke-virtual {v0, v1}, Ljan;->i(Ljdq;)V

    return-void
.end method
