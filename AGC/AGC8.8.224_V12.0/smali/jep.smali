.class public final Ljep;
.super Ljava/lang/Object;

# interfaces
.implements Ljfw;


# instance fields
.field public final a:Ljcz;

.field public final b:Ljdz;

.field public c:Ljava/util/Set;

.field public d:Z

.field public final synthetic e:Ljeq;

.field public f:Ljgu;


# direct methods
.method public constructor <init>(Ljeq;Ljcz;Ljdz;)V
    .locals 0

    iput-object p1, p0, Ljep;->e:Ljeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ljep;->f:Ljgu;

    iput-object p1, p0, Ljep;->c:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ljep;->d:Z

    iput-object p2, p0, Ljep;->a:Ljcz;

    iput-object p3, p0, Ljep;->b:Ljdz;

    return-void
.end method


# virtual methods
.method public final a(Ljby;)V
    .locals 3

    iget-object v0, p0, Ljep;->e:Ljeq;

    iget-object v0, v0, Ljeq;->n:Landroid/os/Handler;

    new-instance v1, Lioi;

    const/16 v2, 0xd

    invoke-direct {v1, p0, p1, v2}, Lioi;-><init>(Ljep;Ljby;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljby;)V
    .locals 6

    iget-object v0, p0, Ljep;->e:Ljeq;

    iget-object v0, v0, Ljeq;->k:Ljava/util/Map;

    iget-object v1, p0, Ljep;->b:Ljdz;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljen;

    if-eqz v0, :cond_0

    iget-object v1, v0, Ljen;->k:Ljeq;

    iget-object v1, v1, Ljeq;->n:Landroid/os/Handler;

    invoke-static {v1}, Ljhp;->V(Landroid/os/Handler;)V

    iget-object v1, v0, Ljen;->b:Ljcz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSignInFailed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljcz;->k(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljen;->i(Ljby;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Ljep;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljep;->f:Ljgu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Ljep;->a:Ljcz;

    iget-object v2, p0, Ljep;->c:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Ljcz;->q(Ljgu;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
