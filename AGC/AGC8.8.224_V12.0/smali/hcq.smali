.class public final Lhcq;
.super Ljava/lang/Object;

# interfaces
.implements Lhdt;
.implements Lhbv;
.implements Lfax;
.implements Lfat;
.implements Lfav;
.implements Lfaq;


# static fields
.field public static final a:Lnak;


# instance fields
.field public A:I

.field public B:I

.field public final C:Lhsh;

.field private final D:Lhcz;

.field private E:Z

.field public final b:Ljuh;

.field public final c:Landroid/os/Handler;

.field public final d:Lgxi;

.field public final e:Lccg;

.field public final f:Ljwb;

.field public final g:Ljvs;

.field public final h:Ljwb;

.field public final i:Ljava/util/Map;

.field public final j:Lkbc;

.field public final k:Lhdi;

.field public final l:Landroid/graphics/Matrix;

.field public final m:Ljuf;

.field public final n:Lnph;

.field public o:Lika;

.field public p:Lklv;

.field public q:Lkli;

.field public r:Z

.field public s:I

.field public t:Z

.field public u:I

.field public v:J

.field public w:Landroid/view/View;

.field public x:Landroid/view/View;

.field public y:Lgft;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/smarts/SmartsControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhcq;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lhsh;Lhdi;Lhcz;Ljuh;Landroid/os/Handler;Lgxi;Loiw;Ljwb;Ljwb;Ljvs;Lkbc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p12

    iput-object p12, p0, Lhcq;->n:Lnph;

    iput-object p1, p0, Lhcq;->C:Lhsh;

    iput-object p2, p0, Lhcq;->k:Lhdi;

    iput-object p3, p0, Lhcq;->D:Lhcz;

    iput-object p4, p0, Lhcq;->b:Ljuh;

    iput-object p5, p0, Lhcq;->c:Landroid/os/Handler;

    iput-object p6, p0, Lhcq;->d:Lgxi;

    invoke-interface {p7}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccg;

    iput-object p1, p0, Lhcq;->e:Lccg;

    iput-object p8, p0, Lhcq;->f:Ljwb;

    iput-object p9, p0, Lhcq;->h:Ljwb;

    iput-object p10, p0, Lhcq;->g:Ljvs;

    iput-object p11, p0, Lhcq;->j:Lkbc;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lhcq;->i:Ljava/util/Map;

    sget-object p1, Lika;->a:Lika;

    iput-object p1, p0, Lhcq;->o:Lika;

    sget-object p1, Lklv;->b:Lklv;

    iput-object p1, p0, Lhcq;->p:Lklv;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhcq;->r:Z

    iput p1, p0, Lhcq;->s:I

    iput-boolean p1, p0, Lhcq;->E:Z

    iput-boolean p1, p0, Lhcq;->t:Z

    iput p1, p0, Lhcq;->u:I

    const-wide/16 p2, 0x0

    iput-wide p2, p0, Lhcq;->v:J

    iput p1, p0, Lhcq;->B:I

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lhcq;->l:Landroid/graphics/Matrix;

    new-instance p1, Ljuf;

    invoke-direct {p1}, Ljuf;-><init>()V

    iput-object p1, p0, Lhcq;->m:Ljuf;

    return-void
.end method

.method public static final k(Lgyu;)Z
    .locals 1

    sget-object v0, Lgyu;->a:Lgyu;

    invoke-virtual {p0, v0}, Lgyu;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final l(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 6

    invoke-static {p0}, Ljvd;->y(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    int-to-float p0, v4

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, p0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method


# virtual methods
.method public final bK()V
    .locals 1

    iget-boolean v0, p0, Lhcq;->t:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    sget-object v0, Lhci;->a:Lhci;

    invoke-virtual {p0, v0}, Lhcq;->h(Lhco;)V

    iget-object v0, p0, Lhcq;->m:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final bM()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhcq;->t:Z

    sget-object v0, Lhci;->b:Lhci;

    invoke-virtual {p0, v0}, Lhcq;->h(Lhco;)V

    iget-object v0, p0, Lhcq;->k:Lhdi;

    iget-object v1, v0, Lhdi;->f:Ljuh;

    new-instance v2, Lhbi;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Lhbi;-><init>(Lhdi;I)V

    invoke-virtual {v1, v2}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bN()V
    .locals 2

    iget-object v0, p0, Lhcq;->j:Lkbc;

    const-string v1, "smartsProcessor#resume"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    sget-object v0, Lhci;->c:Lhci;

    invoke-virtual {p0, v0}, Lhcq;->h(Lhco;)V

    iget-object v0, p0, Lhcq;->j:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcq;->t:Z

    return-void
.end method

.method public final bO()V
    .locals 4

    invoke-static {}, Ljuh;->a()V

    iget-boolean v0, p0, Lhcq;->E:Z

    if-nez v0, :cond_0

    new-instance v0, Lhbi;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lhbi;-><init>(Lhcq;I)V

    iget-object v1, p0, Lhcq;->e:Lccg;

    invoke-virtual {v1, v0}, Lccg;->b(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lhcq;->m:Ljuf;

    new-instance v2, Lgss;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v0, v3}, Lgss;-><init>(Lhcq;Ljava/lang/Runnable;I)V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lhcq;->m:Ljuf;

    iget-object v1, p0, Lhcq;->f:Ljwb;

    new-instance v2, Lguy;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Lguy;-><init>(Lhcq;I)V

    iget-object v3, p0, Lhcq;->b:Ljuh;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lhcq;->m:Ljuf;

    iget-object v1, p0, Lhcq;->g:Ljvs;

    new-instance v2, Lguy;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Lguy;-><init>(Lhcq;I)V

    iget-object v3, p0, Lhcq;->b:Ljuh;

    invoke-interface {v1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhcq;->E:Z

    :cond_0
    return-void
.end method

.method public final e(Lkli;)V
    .locals 3

    iget-object v0, p0, Lhcq;->b:Ljuh;

    new-instance v1, Lgps;

    const/16 v2, 0x12

    invoke-direct {v1, p0, p1, v2}, Lgps;-><init>(Lhcq;Lkli;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Lkou;)V
    .locals 3

    iget-object v0, p0, Lhcq;->b:Ljuh;

    new-instance v1, Lgps;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, v2}, Lgps;-><init>(Lhcq;Lkou;I)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g(Lkhr;Lkfj;)V
    .locals 2

    new-instance v0, Lctg;

    const/4 v1, 0x5

    invoke-direct {v0, p0, p2, v1}, Lctg;-><init>(Lhcq;Lkfj;I)V

    invoke-static {p1, v0}, Lkfg;->B(Lkhr;Lkex;)V

    return-void
.end method

.method public final h(Lhco;)V
    .locals 2

    iget-object v0, p0, Lhcq;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhdf;

    invoke-interface {p1, v1}, Lhco;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Ljuh;->a()V

    iget v0, p0, Lhcq;->s:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v3, p0, Lhcq;->r:Z

    if-eq v3, v0, :cond_2

    iput-boolean v0, p0, Lhcq;->r:Z

    new-instance v0, Lhch;

    const/4 v3, 0x6

    invoke-direct {v0, p0, v3}, Lhch;-><init>(Lhcq;I)V

    invoke-virtual {p0, v0}, Lhcq;->h(Lhco;)V

    iget-boolean v0, p0, Lhcq;->r:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhcq;->D:Lhcz;

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {v0}, Lhcz;->e()V

    iput-boolean v1, v0, Lhcz;->i:Z

    return-void

    :cond_1
    iget-object v0, p0, Lhcq;->D:Lhcz;

    invoke-static {}, Ljuh;->a()V

    iput-boolean v2, v0, Lhcz;->i:Z

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 7

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lhcq;->y:Lgft;

    invoke-interface {v0}, Lgft;->f()Lkab;

    move-result-object v0

    iget v0, v0, Lkab;->e:I

    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lhcq;->B:I

    iget v1, p0, Lhcq;->z:I

    iget v2, p0, Lhcq;->A:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget-object v0, p0, Lhcq;->x:Landroid/view/View;

    invoke-static {v0}, Lhcq;->l(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v2, p0, Lhcq;->w:Landroid/view/View;

    invoke-static {v2}, Lhcq;->l(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v2

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    int-to-float v1, v1

    div-float/2addr v5, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lhcq;->l:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lhcq;->l:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget v5, v0, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v2, p0, Lhcq;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v3, v0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-void
.end method
