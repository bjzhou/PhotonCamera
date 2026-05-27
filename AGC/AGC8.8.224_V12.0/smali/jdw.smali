.class public final Ljdw;
.super Ljds;


# instance fields
.field private final a:Ljfm;

.field private final b:Lkgd;


# direct methods
.method public constructor <init>(ILjfm;Lkgd;[B[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljds;-><init>(I)V

    iput-object p3, p0, Ljdw;->b:Lkgd;

    iput-object p2, p0, Ljdw;->a:Ljfm;

    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-boolean p1, p2, Ljfm;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljen;)Z
    .locals 0

    iget-object p1, p0, Ljdw;->a:Ljfm;

    iget-boolean p1, p1, Ljfm;->b:Z

    return p1
.end method

.method public final b(Ljen;)[Ljca;
    .locals 0

    iget-object p1, p0, Ljdw;->a:Ljfm;

    iget-object p1, p1, Ljfm;->a:[Ljca;

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Ljdw;->b:Lkgd;

    invoke-static {p1}, Ljhp;->ai(Lcom/google/android/gms/common/api/Status;)Ljda;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Ljdw;->b:Lkgd;

    invoke-virtual {v0, p1}, Lkgd;->j(Ljava/lang/Exception;)V

    return-void
.end method

.method public final f(Ljen;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljdw;->a:Ljfm;

    iget-object p1, p1, Ljen;->b:Ljcz;

    iget-object v1, p0, Ljdw;->b:Lkgd;

    iget-object v0, v0, Ljfm;->d:Ljfl;

    iget-object v0, v0, Ljfl;->a:Ljfh;

    invoke-interface {v0, p1, v1}, Ljfh;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljdw;->e(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception p1

    invoke-static {p1}, Ljdy;->h(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljdw;->d(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p1

    throw p1
.end method

.method public final g(Ligo;Z)V
    .locals 8

    iget-object v2, p0, Ljdw;->b:Lkgd;

    iget-object v0, p1, Ligo;->a:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, v2, Lkgd;->a:Ljava/lang/Object;

    new-instance v7, Ljek;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljek;-><init>(Ligo;Lkgd;[B[B[B[B)V

    check-cast p2, Ljot;

    invoke-virtual {p2, v7}, Ljot;->g(Ljon;)V

    return-void
.end method
