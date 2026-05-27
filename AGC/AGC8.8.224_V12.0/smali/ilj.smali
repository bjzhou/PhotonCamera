.class public final Lilj;
.super Lhdo;

# interfaces
.implements Lilk;
.implements Lils;
.implements Lgxm;


# static fields
.field private static final m:Lnak;


# instance fields
.field public final b:Lill;

.field public final c:Landroid/content/Context;

.field public final d:Lell;

.field public final e:Lgzm;

.field public final f:Lgzn;

.field public final g:Lfbz;

.field public final h:Lgxi;

.field public final i:J

.field final j:Licf;

.field public final k:Licf;

.field public l:J

.field private final n:Ljava/util/Set;

.field private final o:Ldin;

.field private final p:Ljuh;

.field private final q:Z

.field private final r:Z

.field private s:Z

.field private t:Z

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/update/InAppUpdateUIController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lilj;->m:Lnak;

    return-void
.end method

.method public constructor <init>(Lill;Landroid/content/Context;Lell;Lgzm;Lgzn;Landroid/content/pm/PackageInfo;Lfbz;Lgxi;Ldin;Ljuh;ZZ)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Lhdo;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lilj;->n:Ljava/util/Set;

    const/4 v1, 0x1

    iput v1, v0, Lilj;->u:I

    move-object v1, p1

    iput-object v1, v0, Lilj;->b:Lill;

    move-object v10, p2

    iput-object v10, v0, Lilj;->c:Landroid/content/Context;

    move-object v1, p3

    iput-object v1, v0, Lilj;->d:Lell;

    move-object v1, p4

    iput-object v1, v0, Lilj;->e:Lgzm;

    move-object/from16 v1, p5

    iput-object v1, v0, Lilj;->f:Lgzn;

    move-object/from16 v1, p7

    iput-object v1, v0, Lilj;->g:Lfbz;

    move-object/from16 v1, p8

    iput-object v1, v0, Lilj;->h:Lgxi;

    move-object/from16 v1, p9

    iput-object v1, v0, Lilj;->o:Ldin;

    move-object/from16 v1, p10

    iput-object v1, v0, Lilj;->p:Ljuh;

    move/from16 v1, p11

    iput-boolean v1, v0, Lilj;->q:Z

    move/from16 v1, p12

    iput-boolean v1, v0, Lilj;->r:Z

    const/4 v1, 0x0

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f140443

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v9, 0x8

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, v0, Lilj;->j:Licf;

    const/4 v1, 0x1

    const/16 v2, 0xbb8

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f140572

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Lidm;

    const/4 v6, 0x3

    invoke-direct {v3, p0, v6}, Lidm;-><init>(Lilj;I)V

    move-object v6, p2

    invoke-static/range {v1 .. v9}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v1

    iput-object v1, v0, Lilj;->k:Licf;

    invoke-virtual/range {p6 .. p6}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    iput-wide v1, v0, Lilj;->i:J

    return-void
.end method

.method private final B()V
    .locals 2

    iget v0, p0, Lilj;->u:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lilj;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lilj;->d:Lell;

    iget-object v1, p0, Lilj;->j:Licf;

    invoke-interface {v0, v1}, Lell;->d(Lelk;)Lkad;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lilj;->d:Lell;

    iget-object v1, p0, Lilj;->j:Licf;

    invoke-interface {v0, v1}, Lell;->g(Lelk;)V

    :goto_0
    iget v0, p0, Lilj;->u:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lilj;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lilj;->n:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lilj;->d:Lell;

    iget-object v1, p0, Lilj;->k:Licf;

    invoke-interface {v0, v1}, Lell;->d(Lelk;)Lkad;

    return-void

    :cond_1
    iget-object v0, p0, Lilj;->d:Lell;

    iget-object v1, p0, Lilj;->k:Licf;

    invoke-interface {v0, v1}, Lell;->g(Lelk;)V

    return-void
.end method


# virtual methods
.method public final A(II)V
    .locals 9

    sget-object v0, Lilj;->m:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x10cf

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "onUpdateFailed failureType=%s, errorCode=%d"

    invoke-static {p1}, Lmoz;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lnah;->x(Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v0, 0x1

    iput v0, p0, Lilj;->u:I

    invoke-direct {p0}, Lilj;->B()V

    iget-object v1, p0, Lilj;->g:Lfbz;

    const/4 v2, 0x6

    iget-wide v3, p0, Lilj;->l:J

    iget-wide v5, p0, Lilj;->i:J

    move v7, p1

    move v8, p2

    invoke-interface/range {v1 .. v8}, Lfbz;->al(IJJII)V

    iget-object v0, p0, Lilj;->o:Ldin;

    sget-object v1, Ldin;->c:Ldin;

    invoke-virtual {v0, v1}, Ldin;->b(Ldin;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lilj;->p:Ljuh;

    new-instance v1, Lili;

    invoke-direct {v1, p0, p1, p2}, Lili;-><init>(Lilj;II)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final a()V
    .locals 1

    invoke-super {p0}, Lhdo;->a()V

    iget-object v0, p0, Lilj;->h:Lgxi;

    invoke-virtual {v0, p0}, Lgxi;->h(Lgxm;)V

    return-void
.end method

.method public final e()V
    .locals 0

    invoke-virtual {p0}, Lhdo;->c()V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lilj;->t:Z

    invoke-direct {p0}, Lilj;->B()V

    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lilj;->t:Z

    invoke-direct {p0}, Lilj;->B()V

    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final i()V
    .locals 8

    iget-object v0, p0, Lilj;->g:Lfbz;

    const/4 v1, 0x3

    iget-wide v2, p0, Lilj;->l:J

    iget-wide v4, p0, Lilj;->i:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lfbz;->al(IJJII)V

    return-void
.end method

.method public final j(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lilj;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lilj;->B()V

    :cond_0
    return-void
.end method

.method public final synthetic k(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final l(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lilj;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lilj;->B()V

    :cond_0
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
    .locals 1

    iget-object p3, p2, Lgxt;->c:Lgya;

    sget-object v0, Lgya;->j:Lgya;

    if-eq p3, v0, :cond_0

    iget-object p2, p2, Lgxt;->c:Lgya;

    sget-object p3, Lgya;->n:Lgya;

    if-eq p2, p3, :cond_0

    sget-object p3, Lgya;->r:Lgya;

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lilj;->n:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lilj;->B()V

    :cond_0
    return-void
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final s(ILjava/lang/Integer;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lilj;->e:Lgzm;

    sget-object v3, Lgzd;->ah:Lgzs;

    invoke-interface {v2, v3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p1, :cond_0

    iget-object v2, p0, Lilj;->f:Lgzn;

    sget-object v3, Lgzd;->ah:Lgzs;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v2, p0, Lilj;->f:Lgzn;

    sget-object v3, Lgzd;->ai:Lgzt;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_0
    sget-object v2, Logu;->a:Logu;

    invoke-virtual {v2}, Logu;->b()Logv;

    move-result-object v2

    invoke-interface {v2}, Logv;->a()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lilj;->e:Lgzm;

    sget-object v6, Lgzd;->ai:Lgzt;

    invoke-interface {v5, v6}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    sget-object v0, Logu;->a:Logu;

    invoke-virtual {v0}, Logu;->b()Logv;

    move-result-object v0

    invoke-interface {v0}, Logv;->c()J

    move-result-wide v0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v2, p2

    cmp-long p2, v2, v0

    if-ltz p2, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p2, p0, Lilj;->c:Landroid/content/Context;

    const v0, 0x7f08038c

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v0

    iget-object v1, p0, Lilj;->c:Landroid/content/Context;

    const v2, 0x7f14035e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhea;->a:Ljava/lang/String;

    iput-object p2, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance p2, Licv;

    const/16 v1, 0xb

    invoke-direct {p2, p0, v1}, Licv;-><init>(Lilj;I)V

    iput-object p2, v0, Lhea;->c:Ljava/lang/Runnable;

    iget-boolean p2, p0, Lilj;->q:Z

    if-eqz p2, :cond_5

    iget-boolean p2, p0, Lilj;->r:Z

    if-nez p2, :cond_7

    :cond_5
    sget-object p2, Logu;->a:Logu;

    invoke-virtual {p2}, Logu;->b()Logv;

    move-result-object p2

    invoke-interface {p2}, Logv;->d()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_6

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-virtual {v0, v1, v2}, Lhea;->e(J)V

    :cond_6
    sget-object p2, Logu;->a:Logu;

    invoke-virtual {p2}, Logu;->b()Logv;

    move-result-object p2

    invoke-interface {p2}, Logv;->e()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Licv;

    const/16 v1, 0xc

    invoke-direct {p2, p0, v1}, Licv;-><init>(Lilj;I)V

    iput-object p2, v0, Lhea;->f:Ljava/lang/Runnable;

    :cond_7
    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object p2

    invoke-virtual {p0, p2}, Lhdo;->d(Lheb;)V

    int-to-long v2, p1

    iput-wide v2, p0, Lilj;->l:J

    iget-object v0, p0, Lilj;->g:Lfbz;

    const/4 v1, 0x2

    iget-wide v4, p0, Lilj;->i:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lfbz;->al(IJJII)V

    return-void
.end method

.method public final t()V
    .locals 9

    const/4 v0, 0x3

    iput v0, p0, Lilj;->u:I

    invoke-direct {p0}, Lilj;->B()V

    iget-object v0, p0, Lilj;->h:Lgxi;

    invoke-virtual {v0, p0}, Lgxi;->a(Lgxm;)V

    iget-boolean v0, p0, Lilj;->s:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lilj;->g:Lfbz;

    const/4 v2, 0x4

    iget-wide v3, p0, Lilj;->l:J

    iget-wide v5, p0, Lilj;->i:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Lfbz;->al(IJJII)V

    :cond_0
    return-void
.end method

.method public final u(I)V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lilj;->u:I

    invoke-direct {p0}, Lilj;->B()V

    iget-object v0, p0, Lilj;->j:Licf;

    if-nez p1, :cond_0

    iget-object p1, p0, Lilj;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f140443

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lilj;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const p1, 0x7f140163

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-interface {v0, p1}, Licf;->s(Ljava/lang/String;)V

    return-void
.end method

.method public final x(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lilj;->n:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lilj;->B()V

    :cond_0
    return-void
.end method

.method public final y()V
    .locals 8

    iget-object v0, p0, Lilj;->g:Lfbz;

    const/4 v1, 0x7

    iget-wide v2, p0, Lilj;->l:J

    iget-wide v4, p0, Lilj;->i:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lfbz;->al(IJJII)V

    return-void
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lilj;->s:Z

    return-void
.end method
