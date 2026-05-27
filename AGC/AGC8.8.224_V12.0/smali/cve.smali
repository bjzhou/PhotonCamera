.class final Lcve;
.super Ljava/lang/Object;

# interfaces
.implements Lkpk;


# instance fields
.field final synthetic a:Lgya;

.field final synthetic b:Lgxn;

.field final synthetic c:Lgxz;

.field final synthetic d:Z

.field final synthetic e:Lgyb;

.field final synthetic f:Lcvf;


# direct methods
.method public constructor <init>(Lcvf;Lgya;Lgxn;Lgxz;ZLgyb;)V
    .locals 0

    iput-object p1, p0, Lcve;->f:Lcvf;

    iput-object p2, p0, Lcve;->a:Lgya;

    iput-object p3, p0, Lcve;->b:Lgxn;

    iput-object p4, p0, Lcve;->c:Lgxz;

    iput-boolean p5, p0, Lcve;->d:Z

    iput-object p6, p0, Lcve;->e:Lgyb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcve;->f:Lcvf;

    iget-object v0, v0, Lcvf;->e:Ldlj;

    iget-object v1, p0, Lcve;->c:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    const-string v3, "onAbandoned"

    invoke-interface {v0, v1, v2, v3}, Ldlj;->c(JLjava/lang/String;)V

    sget-object v0, Lcvf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Video publish abandoned."

    const/16 v2, 0x2dd

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 4

    iget-object v0, p0, Lcve;->f:Lcvf;

    iget-object v0, v0, Lcvf;->e:Ldlj;

    iget-object v1, p0, Lcve;->c:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    const-string v3, "onError"

    invoke-interface {v0, v1, v2, v3}, Ldlj;->c(JLjava/lang/String;)V

    sget-object v0, Lcvf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Video publish error."

    const/16 v2, 0x2de

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcve;->b:Lgxn;

    iget-object v0, v0, Lgxn;->a:Lkph;

    invoke-interface {v0}, Lkph;->b()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcve;->c:Lgxz;

    iget-object v2, v2, Lgxz;->a:Lgxy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "MediaStoreUri is empty. Insert video into MediaStore failed for %s"

    invoke-static {v1, v3, v2}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lgxt;->a()Lgxs;

    move-result-object v1

    iget-object v2, p0, Lcve;->a:Lgya;

    invoke-virtual {v1, v2}, Lgxs;->c(Lgya;)V

    invoke-virtual {v1, v0}, Lgxs;->d(Landroid/net/Uri;)V

    iget-boolean v0, p0, Lcve;->d:Z

    invoke-virtual {v1, v0}, Lgxs;->b(Z)V

    invoke-virtual {v1}, Lgxs;->a()Lgxt;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iget-object v1, p0, Lcve;->f:Lcvf;

    iget-object v1, v1, Lcvf;->b:Lgxi;

    iget-object v2, p0, Lcve;->c:Lgxz;

    iget-object v2, v2, Lgxz;->a:Lgxy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcve;->e:Lgyb;

    invoke-virtual {v1, v2, v0, v3}, Lgxi;->g(Lgxy;Lnou;Lgyb;)V

    iget-object v0, p0, Lcve;->f:Lcvf;

    iget-object v0, v0, Lcvf;->b:Lgxi;

    iget-object v1, p0, Lcve;->c:Lgxz;

    iget-object v1, v1, Lgxz;->a:Lgxy;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lgxi;->f(Lgxy;)V

    iget-object v0, p0, Lcve;->f:Lcvf;

    iget-object v0, v0, Lcvf;->e:Ldlj;

    iget-object v1, p0, Lcve;->c:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    invoke-interface {v0, v1, v2}, Ldlj;->i(J)V

    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcve;->f:Lcvf;

    iget-object v0, v0, Lcvf;->e:Ldlj;

    iget-object v1, p0, Lcve;->c:Lgxz;

    iget-wide v1, v1, Lgxz;->b:J

    const-string v3, "onTimeout"

    invoke-interface {v0, v1, v2, v3}, Ldlj;->c(JLjava/lang/String;)V

    return-void
.end method
