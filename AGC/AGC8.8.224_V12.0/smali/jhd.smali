.class public final Ljhd;
.super Ljava/lang/Object;

# interfaces
.implements Ljdk;


# instance fields
.field final synthetic a:Ljdl;

.field final synthetic b:Ljhf;

.field final synthetic c:Lkgd;


# direct methods
.method public constructor <init>(Ljdl;Lkgd;Ljhf;[B[B)V
    .locals 0

    iput-object p1, p0, Ljhd;->a:Ljdl;

    iput-object p2, p0, Ljhd;->c:Lkgd;

    iput-object p3, p0, Ljhd;->b:Ljhf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Ljhd;->a:Ljdl;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Ljdl;->l(Ljava/util/concurrent/TimeUnit;)Ljdq;

    move-result-object p1

    iget-object v0, p0, Ljhd;->c:Lkgd;

    iget-object v1, p0, Ljhd;->b:Ljhf;

    invoke-interface {v1, p1}, Ljhf;->a(Ljdq;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkgd;->i(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Ljhd;->c:Lkgd;

    invoke-static {p1}, Ljhp;->ai(Lcom/google/android/gms/common/api/Status;)Ljda;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkgd;->h(Ljava/lang/Exception;)V

    return-void
.end method
