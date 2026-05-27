.class public final Lfmf;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z

.field public e:Lhxi;

.field private final f:Z

.field private final g:Lihg;

.field private final h:Lgzm;

.field private final i:Ljuh;

.field private final j:Ljvs;

.field private final k:Ljvs;


# direct methods
.method public constructor <init>(Ldhi;Lgzm;Lihg;Ljuh;Ljvs;Ljvs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldho;->bQ:Ldhj;

    invoke-interface {p1, v0}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lfmf;->f:Z

    iput-object p2, p0, Lfmf;->h:Lgzm;

    iput-object p3, p0, Lfmf;->g:Lihg;

    iput-object p4, p0, Lfmf;->i:Ljuh;

    sget-object p1, Lgzd;->e:Lgzs;

    invoke-interface {p2, p1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lfmf;->a:I

    sget-object p1, Lgzd;->f:Lgzs;

    invoke-interface {p2, p1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lfmf;->b:I

    sget-object p1, Lgzd;->g:Lgzs;

    invoke-interface {p2, p1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lfmf;->c:I

    invoke-interface {p5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhxi;

    iput-object p1, p0, Lfmf;->e:Lhxi;

    iput-object p5, p0, Lfmf;->j:Ljvs;

    iput-object p6, p0, Lfmf;->k:Ljvs;

    check-cast p6, Ljvk;

    iget-object p1, p6, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lfmf;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Lchk;Lika;)V
    .locals 3

    iget-boolean v0, p1, Lchk;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfmf;->g:Lihg;

    iget-object v0, v0, Lihg;->e:Ljava/lang/Object;

    new-instance v1, Lfib;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, Lfib;-><init>(Lchk;I)V

    check-cast v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {v0, p2, v1}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->m(Lika;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lchk;Lika;Ljuf;)V
    .locals 4

    sget-object v0, Lika;->c:Lika;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    sget-object v0, Lika;->i:Lika;

    if-eq p2, v0, :cond_1

    sget-object v0, Lika;->f:Lika;

    if-eq p2, v0, :cond_1

    sget-object v0, Lika;->n:Lika;

    if-eq p2, v0, :cond_1

    sget-object v0, Lika;->t:Lika;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lfmf;->f:Z

    if-nez v0, :cond_3

    if-nez v1, :cond_2

    iget-object v0, p0, Lfmf;->h:Lgzm;

    sget-object v1, Lgzd;->e:Lgzs;

    invoke-interface {v0, v1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v0

    new-instance v1, Lctn;

    const/4 v2, 0x5

    invoke-direct {v1, p0, p1, p2, v2}, Lctn;-><init>(Lfmf;Lchk;Lika;I)V

    iget-object p1, p0, Lfmf;->i:Ljuh;

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lfmf;->j:Ljvs;

    new-instance v2, Lctn;

    const/4 v3, 0x6

    invoke-direct {v2, p0, p1, p2, v3}, Lctn;-><init>(Lfmf;Lchk;Lika;I)V

    iget-object v3, p0, Lfmf;->i:Ljuh;

    invoke-interface {v0, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lfmf;->k:Ljvs;

    new-instance v2, Lctn;

    const/4 v3, 0x7

    invoke-direct {v2, p0, p1, p2, v3}, Lctn;-><init>(Lfmf;Lchk;Lika;I)V

    iget-object v3, p0, Lfmf;->i:Ljuh;

    invoke-interface {v0, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljuf;->d(Lkad;)V

    if-eqz v1, :cond_4

    iget-object v0, p0, Lfmf;->h:Lgzm;

    sget-object v1, Lgzd;->f:Lgzs;

    invoke-interface {v0, v1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v0

    new-instance v1, Lctn;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, p2, v2}, Lctn;-><init>(Lfmf;Lchk;Lika;I)V

    iget-object p1, p0, Lfmf;->i:Ljuh;

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    return-void

    :cond_4
    iget-object v0, p0, Lfmf;->h:Lgzm;

    sget-object v1, Lgzd;->g:Lgzs;

    invoke-interface {v0, v1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v0

    new-instance v1, Lctn;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p1, p2, v2}, Lctn;-><init>(Lfmf;Lchk;Lika;I)V

    iget-object v2, p0, Lfmf;->i:Ljuh;

    invoke-interface {v0, v1, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lfmf;->h:Lgzm;

    sget-object v1, Lgzd;->e:Lgzs;

    invoke-interface {v0, v1}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v0

    new-instance v1, Lctn;

    const/16 v2, 0xa

    invoke-direct {v1, p0, p1, p2, v2}, Lctn;-><init>(Lfmf;Lchk;Lika;I)V

    iget-object p1, p0, Lfmf;->i:Ljuh;

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method
