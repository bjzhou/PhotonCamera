.class public final synthetic Lggy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lghe;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lghe;ZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggy;->a:Lghe;

    iput-boolean p2, p0, Lggy;->b:Z

    iput-boolean p3, p0, Lggy;->c:Z

    iput-boolean p4, p0, Lggy;->d:Z

    iput-boolean p5, p0, Lggy;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lggy;->a:Lghe;

    iget-boolean v1, p0, Lggy;->b:Z

    iget-boolean v2, p0, Lggy;->c:Z

    iget-boolean v3, p0, Lggy;->d:Z

    iget-boolean v4, p0, Lggy;->e:Z

    iget-object v5, v0, Lghe;->c:Lken;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v2, v6}, Lken;->m(ZZZ)V

    if-eqz v3, :cond_2

    iget-object v1, v0, Lghe;->c:Lken;

    invoke-interface {v1}, Lken;->b()Lkdz;

    move-result-object v1

    if-eqz v4, :cond_0

    iget-object v3, v0, Lghe;->q:Ldfa;

    invoke-virtual {v3}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lkfr;

    iput-object v3, v4, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_0
    if-eqz v2, :cond_1

    iget-object v2, v0, Lghe;->q:Ldfa;

    invoke-virtual {v2}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkfr;

    iput-object v2, v3, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_1
    iget-object v2, v0, Lghe;->q:Ldfa;

    invoke-virtual {v2}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkfr;

    iput-object v2, v3, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v0, v0, Lghe;->c:Lken;

    invoke-interface {v1}, Lkdz;->a()Lkea;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->n(Lkea;)V

    :cond_2
    return-void
.end method
