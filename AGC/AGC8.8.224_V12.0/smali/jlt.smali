.class final Ljlt;
.super Ljeu;


# instance fields
.field final synthetic a:Ljln;

.field final synthetic b:Lkgd;


# direct methods
.method public constructor <init>(Lkgd;Ljln;[B[B)V
    .locals 0

    iput-object p1, p0, Ljlt;->b:Lkgd;

    iput-object p2, p0, Ljlt;->a:Ljln;

    invoke-direct {p0}, Ljeu;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget v0, p1, Lcom/google/android/gms/common/api/Status;->g:I

    if-nez v0, :cond_0

    iget-object p1, p0, Ljlt;->b:Lkgd;

    new-instance v0, Ljlw;

    iget-object v1, p0, Ljlt;->a:Ljln;

    invoke-direct {v0, v1}, Ljlw;-><init>(Ljln;)V

    invoke-virtual {p1, v0}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Ljlt;->b:Lkgd;

    new-instance v1, Ljda;

    invoke-direct {v1, p1}, Ljda;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lkgd;->h(Ljava/lang/Exception;)V

    return-void
.end method
