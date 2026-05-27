.class public final Lhls;
.super Lhdo;

# interfaces
.implements Lfaz;
.implements Lfan;
.implements Lezh;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lgus;

.field public final d:Lfbz;

.field public final e:Ldhi;

.field public f:Z

.field private final g:Ljwb;

.field private final h:Ljuh;

.field private final i:Lfak;

.field private j:Lheb;

.field private k:J

.field private final l:Ldqx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljwb;Lgus;Ldqx;Lfbz;Ljuh;Lfak;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lhdo;-><init>()V

    const-wide/16 p9, -0x1

    iput-wide p9, p0, Lhls;->k:J

    iput-object p1, p0, Lhls;->b:Landroid/content/Context;

    iput-object p2, p0, Lhls;->g:Ljwb;

    iput-object p3, p0, Lhls;->c:Lgus;

    iput-object p4, p0, Lhls;->l:Ldqx;

    iput-object p5, p0, Lhls;->d:Lfbz;

    iput-object p6, p0, Lhls;->h:Ljuh;

    iput-object p7, p0, Lhls;->i:Lfak;

    iput-object p8, p0, Lhls;->e:Ldhi;

    return-void
.end method


# virtual methods
.method public final b(Lhec;)V
    .locals 1

    invoke-super {p0, p1}, Lhdo;->b(Lhec;)V

    iget-object p1, p0, Lhls;->h:Ljuh;

    iget-object v0, p0, Lhls;->i:Lfak;

    invoke-static {p1, v0, p0}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-void
.end method

.method public final bL(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhls;->f:Z

    return-void
.end method

.method public final bQ()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhls;->f:Z

    return-void
.end method

.method public final e(Lhlv;)V
    .locals 7

    iget-boolean v0, p0, Lhls;->f:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lhls;->l:Ldqx;

    invoke-virtual {v0, p1}, Ldqx;->s(Lhlv;)Lhln;

    move-result-object v0

    iget-object v1, p0, Lhls;->g:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    sget-object v2, Lika;->b:Lika;

    if-eq v1, v2, :cond_0

    sget-object v2, Lika;->g:Lika;

    if-eq v1, v2, :cond_0

    sget-object v2, Lika;->m:Lika;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-boolean v2, v0, Lhln;->c:Z

    if-nez v2, :cond_3

    :cond_1
    sget-object v2, Lika;->c:Lika;

    if-ne v1, v2, :cond_2

    iget-boolean v0, v0, Lhln;->d:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhls;->k:J

    invoke-virtual {p0}, Lhdo;->c()V

    return-void

    :cond_3
    :goto_0
    iget-wide v0, p0, Lhls;->k:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    iget-wide v4, p1, Lhlv;->b:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_4

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_1
    iget-wide v0, p1, Lhlv;->b:J

    const-wide/32 v4, -0x17d7840

    add-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lhls;->k:J

    iget-object p1, p0, Lhls;->j:Lheb;

    if-nez p1, :cond_6

    iget-object p1, p0, Lhls;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v0

    const v1, 0x7f1404f9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lhea;->a:Ljava/lang/String;

    const v1, 0x7f08037c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lhea;->b:Landroid/graphics/drawable/Drawable;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Lhea;->e(J)V

    new-instance p1, Lhfi;

    const/16 v1, 0x14

    invoke-direct {p1, p0, v1}, Lhfi;-><init>(Lhls;I)V

    iput-object p1, v0, Lhea;->c:Ljava/lang/Runnable;

    new-instance p1, Lhma;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lhma;-><init>(Lhls;I)V

    iput-object p1, v0, Lhea;->f:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object p1

    iput-object p1, p0, Lhls;->j:Lheb;

    :cond_6
    iget-object p1, p0, Lhls;->j:Lheb;

    invoke-virtual {p0, p1}, Lhdo;->d(Lheb;)V

    return-void

    :cond_7
    iget-object p1, p0, Lhls;->e:Ldhi;

    sget-object v0, Ldhq;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->c()V

    return-void
.end method

.method public final v()V
    .locals 2

    invoke-super {p0}, Lhdo;->v()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lhls;->k:J

    return-void
.end method
