.class public final Llox;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 7

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Llox;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llox;->a:Landroid/net/Uri;

    iput-object p2, p0, Llox;->b:Ljava/lang/String;

    iput-object p3, p0, Llox;->c:Ljava/lang/String;

    iput-boolean p4, p0, Llox;->d:Z

    iput-boolean p5, p0, Llox;->e:Z

    iput-boolean p6, p0, Llox;->f:Z

    return-void
.end method


# virtual methods
.method public final a()Llox;
    .locals 8

    new-instance v7, Llox;

    iget-object v1, p0, Llox;->a:Landroid/net/Uri;

    iget-object v2, p0, Llox;->b:Ljava/lang/String;

    iget-object v3, p0, Llox;->c:Ljava/lang/String;

    iget-boolean v4, p0, Llox;->d:Z

    const/4 v5, 0x1

    iget-boolean v6, p0, Llox;->f:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Llox;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v7
.end method

.method public final b()Llox;
    .locals 8

    iget-object v1, p0, Llox;->a:Landroid/net/Uri;

    if-eqz v1, :cond_0

    new-instance v7, Llox;

    iget-object v2, p0, Llox;->b:Ljava/lang/String;

    iget-object v3, p0, Llox;->c:Ljava/lang/String;

    iget-boolean v4, p0, Llox;->d:Z

    iget-boolean v5, p0, Llox;->e:Z

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Llox;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v7

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set enableAutoSubpackage on SharedPrefs-backed flags"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Llox;
    .locals 8

    iget-object v0, p0, Llox;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Llox;

    iget-object v2, p0, Llox;->a:Landroid/net/Uri;

    iget-object v3, p0, Llox;->b:Ljava/lang/String;

    iget-object v4, p0, Llox;->c:Ljava/lang/String;

    const/4 v5, 0x1

    iget-boolean v6, p0, Llox;->e:Z

    iget-boolean v7, p0, Llox;->f:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Llox;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot set GServices prefix and skip GServices"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Ljava/lang/String;Z)Lloz;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lloz;->b(Llox;Ljava/lang/String;Ljava/lang/Boolean;Z)Lloz;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;J)Lloz;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Lloz;->c(Llox;Ljava/lang/String;Ljava/lang/Long;Z)Lloz;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Lloz;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lloz;->d(Llox;Ljava/lang/String;Ljava/lang/String;Z)Lloz;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Z)Lloz;
    .locals 1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lloz;->b(Llox;Ljava/lang/String;Ljava/lang/Boolean;Z)Lloz;

    move-result-object p1

    return-object p1
.end method
