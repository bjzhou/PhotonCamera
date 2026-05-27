.class final Lgwb;
.super Ljava/lang/Object;

# interfaces
.implements Lkpk;


# instance fields
.field final synthetic a:Lgwd;


# direct methods
.method public constructor <init>(Lgwd;)V
    .locals 0

    iput-object p1, p0, Lgwb;->a:Lgwd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->o:Lgxr;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Mediagroup.Listener#onAbandoned: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwd;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->b:Ldlj;

    iget-object v0, v0, Lgwd;->f:Lgxz;

    iget-wide v2, v0, Lgxz;->b:J

    const-string v0, "onAbandoned"

    invoke-interface {v1, v2, v3, v0}, Ldlj;->d(JLjava/lang/String;)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v0, v0, Lgwd;->q:Lnph;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 5

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->o:Lgxr;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mediagroup.Listener#onError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwd;->F(Ljava/lang/String;)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->b:Ldlj;

    iget-object v0, v0, Lgwd;->f:Lgxz;

    iget-wide v2, v0, Lgxz;->b:J

    const-string v0, "onError"

    invoke-interface {v1, v2, v3, v0}, Ldlj;->d(JLjava/lang/String;)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v0, v0, Lgwd;->q:Lnph;

    invoke-virtual {v0, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->g:Lgwm;

    iget v2, v0, Lgwd;->s:I

    iget v0, v0, Lgwd;->t:I

    invoke-virtual {v1, v2, v0, p1}, Lgwm;->h(IILjava/lang/Throwable;)V

    iget-object p1, p0, Lgwb;->a:Lgwd;

    sget-object v0, Ligh;->a:Ligf;

    invoke-virtual {p1, v0}, Lgwd;->K(Ligf;)V

    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->b:Ldlj;

    iget-object v0, v0, Lgwd;->f:Lgxz;

    iget-wide v2, v0, Lgxz;->b:J

    const-string v0, "onPublished"

    invoke-interface {v1, v2, v3, v0}, Ldlj;->d(JLjava/lang/String;)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v0, v0, Lgwd;->i:Lhjc;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lhjc;->e(J)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v0, v0, Lgwd;->x:Ljew;

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljew;->ai(II)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    sget-object v1, Lkae;->a:Lkae;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lgwd;->P(Lkae;Z)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->g:Lgwm;

    iget v2, v0, Lgwd;->s:I

    iget v0, v0, Lgwd;->t:I

    invoke-virtual {v1, v2, v0}, Lgwm;->i(II)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    invoke-virtual {v0}, Lgwd;->J()V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->b:Ldlj;

    iget-object v0, v0, Lgwd;->f:Lgxz;

    iget-wide v2, v0, Lgxz;->b:J

    invoke-interface {v1, v2, v3}, Ldlj;->i(J)V

    iget-object v0, p0, Lgwb;->a:Lgwd;

    iget-object v1, v0, Lgwd;->q:Lnph;

    iget-object v0, v0, Lgwd;->f:Lgxz;

    iget-object v0, v0, Lgxz;->a:Lgxy;

    invoke-virtual {v1, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d()V
    .locals 1

    sget-object v0, Ldho;->a:Ldhk;

    return-void
.end method
