.class public final Ldgb;
.super Lhdr;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgus;

.field public final c:Lfbz;

.field public final d:Ldgc;

.field public final e:Z

.field public final f:Landroid/view/View$OnClickListener;

.field public final g:Landroid/view/View$OnClickListener;

.field public h:Lmqp;

.field private final j:Landroid/content/res/Resources;

.field private final k:Ldsy;


# direct methods
.method public constructor <init>(Ldgc;Landroid/content/Context;Lgus;Lmqp;Lfbz;Ljava/util/concurrent/ScheduledExecutorService;Ljew;Ldhi;[B[B[B[B)V
    .locals 9

    move-object v8, p0

    const-string v3, "selfie_angle_advice_smarts_chip"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p6

    move-object/from16 v2, p7

    invoke-direct/range {v0 .. v7}, Lhdr;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljew;Ljava/lang/String;[B[B[B[B)V

    new-instance v0, Lhu;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lhu;-><init>(Ldgb;I)V

    iput-object v0, v8, Ldgb;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lhu;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lhu;-><init>(Ldgb;I)V

    iput-object v0, v8, Ldgb;->g:Landroid/view/View$OnClickListener;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, v8, Ldgb;->h:Lmqp;

    move-object v0, p1

    iput-object v0, v8, Ldgb;->d:Ldgc;

    move-object v0, p2

    iput-object v0, v8, Ldgb;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, v8, Ldgb;->j:Landroid/content/res/Resources;

    move-object v0, p5

    iput-object v0, v8, Ldgb;->c:Lfbz;

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    move-object v0, p4

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Ldsy;

    iput-object v0, v8, Ldgb;->k:Ldsy;

    move-object v0, p3

    iput-object v0, v8, Ldgb;->b:Lgus;

    sget-object v0, Ldgv;->l:Ldhj;

    move-object/from16 v1, p8

    invoke-interface {v1, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iput-boolean v0, v8, Ldgb;->e:Z

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface/range {p8 .. p8}, Ldhi;->c()V

    return-void
.end method


# virtual methods
.method protected final d()Lhdq;
    .locals 5

    invoke-static {}, Lhdq;->a()Lhdp;

    move-result-object v0

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v1

    iget-object v2, p0, Ldgb;->j:Landroid/content/res/Resources;

    const v3, 0x7f14047a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhea;->a:Ljava/lang/String;

    iget-object v2, p0, Ldgb;->j:Landroid/content/res/Resources;

    const v3, 0x7f0803a3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lhea;->b:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Ldgb;->d:Ldgc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ldfd;

    const/16 v4, 0xd

    invoke-direct {v3, v2, v4}, Ldfd;-><init>(Ldgc;I)V

    iput-object v3, v1, Lhea;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1770

    invoke-virtual {v1, v2, v3}, Lhea;->e(J)V

    new-instance v2, Ldfd;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v3}, Ldfd;-><init>(Ldgb;I)V

    iput-object v2, v1, Lhea;->g:Ljava/lang/Runnable;

    new-instance v2, Ldfd;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Ldfd;-><init>(Ldgb;I)V

    iput-object v2, v1, Lhea;->c:Ljava/lang/Runnable;

    iget-object v2, p0, Ldgb;->d:Ldgc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ldfd;

    const/16 v4, 0x10

    invoke-direct {v3, v2, v4}, Ldfd;-><init>(Ldgc;I)V

    iput-object v3, v1, Lhea;->h:Ljava/lang/Runnable;

    invoke-virtual {v1}, Lhea;->a()Lheb;

    move-result-object v1

    iput-object v1, v0, Lhdp;->a:Lheb;

    invoke-virtual {v0}, Lhdp;->a()Lhdq;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Lkou;)Z
    .locals 1

    iget-object p1, p0, Ldgb;->k:Ldsy;

    invoke-interface {p1}, Ldsy;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Ldgb;->k:Ldsy;

    invoke-interface {p1}, Ldsy;->d()Ldsv;

    move-result-object p1

    invoke-static {p1}, Lfjo;->a(Ldsv;)Lfjo;

    move-result-object p1

    iget-object v0, p0, Ldgb;->d:Ldgc;

    iget p1, p1, Lfjo;->b:F

    invoke-virtual {v0, p1}, Ldgc;->d(F)V

    iget-object p1, p0, Ldgb;->d:Ldgc;

    invoke-virtual {p1}, Ldgc;->f()Z

    move-result p1

    return p1
.end method

.method public final v()V
    .locals 1

    invoke-super {p0}, Lhdr;->v()V

    iget-object v0, p0, Ldgb;->d:Ldgc;

    invoke-virtual {v0}, Ldgc;->e()V

    iget-object v0, p0, Ldgb;->h:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ldgb;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgb;->h:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldne;

    invoke-virtual {v0}, Ldne;->l()V

    :cond_0
    return-void
.end method
