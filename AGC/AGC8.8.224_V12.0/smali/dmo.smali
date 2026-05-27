.class public final Ldmo;
.super Ldmq;

# interfaces
.implements Lfaz;
.implements Lfan;
.implements Lfaq;
.implements Lgxm;


# instance fields
.field private final a:Lgxi;

.field private final b:Ljava/util/Set;

.field private volatile c:Z

.field private final d:Lbkc;


# direct methods
.method public constructor <init>(Lbkc;Lgxi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ldmq;-><init>()V

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Ldmo;->b:Ljava/util/Set;

    iput-object p1, p0, Ldmo;->d:Lbkc;

    iput-object p2, p0, Ldmo;->a:Lgxi;

    return-void
.end method

.method private final G()V
    .locals 2

    iget-object v0, p0, Ldmo;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-boolean v1, p0, Ldmo;->c:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Ldmo;->c:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final bK()V
    .locals 1

    iget-object v0, p0, Ldmo;->a:Lgxi;

    invoke-virtual {v0, p0}, Lgxi;->h(Lgxm;)V

    return-void
.end method

.method public final bQ()V
    .locals 1

    iget-object v0, p0, Ldmo;->a:Lgxi;

    invoke-virtual {v0, p0}, Lgxi;->a(Lgxm;)V

    return-void
.end method

.method public final g(D)V
    .locals 3

    iget-boolean v0, p0, Ldmo;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Logr;->b()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    iget-object p1, p0, Ldmo;->d:Lbkc;

    invoke-virtual {p1}, Lbkc;->v()V

    :cond_1
    return-void
.end method

.method public final j(Lgxy;)V
    .locals 1

    iget-object v0, p0, Ldmo;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldmo;->G()V

    return-void
.end method

.method public final synthetic k(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final l(Lgxy;)V
    .locals 1

    iget-object v0, p0, Ldmo;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldmo;->G()V

    return-void
.end method

.method public final synthetic m(J)V
    .locals 0

    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final synthetic o(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p0, p1}, Ljhp;->aw(Lgxm;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final synthetic p(Lgxy;Lkae;)V
    .locals 0

    return-void
.end method

.method public final q(Lgxy;Lgxt;Lgyb;)V
    .locals 0

    iget-object p2, p0, Ldmo;->b:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldmo;->G()V

    return-void
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final x(Lgxy;)V
    .locals 1

    iget-object v0, p0, Ldmo;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Ldmo;->G()V

    return-void
.end method
