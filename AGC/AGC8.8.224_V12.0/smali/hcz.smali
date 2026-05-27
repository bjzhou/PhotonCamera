.class public final Lhcz;
.super Lipd;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lfbz;

.field public final c:Lhdi;

.field public final d:Lhzh;

.field public final e:Lflf;

.field public volatile f:Z

.field public g:Ldbf;

.field public h:Ljava/util/concurrent/Callable;

.field public i:Z

.field public j:Landroid/os/CountDownTimer;

.field public k:Z

.field public final l:Lnom;

.field private m:J

.field private n:Z

.field private final o:Ldja;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/smarts/SmartsGestureListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhcz;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lfbz;Lhdi;Ldja;Lhzh;Lflf;Lnom;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lipd;-><init>()V

    const/4 p8, 0x0

    iput-boolean p8, p0, Lhcz;->f:Z

    iput-boolean p8, p0, Lhcz;->k:Z

    iput-object p2, p0, Lhcz;->b:Lfbz;

    iput-object p3, p0, Lhcz;->c:Lhdi;

    iput-object p4, p0, Lhcz;->o:Ldja;

    iput-object p5, p0, Lhcz;->d:Lhzh;

    iput-object p6, p0, Lhcz;->e:Lflf;

    iput-object p7, p0, Lhcz;->l:Lnom;

    invoke-virtual {p5}, Lhzh;->a()Lnou;

    move-result-object p2

    new-instance p3, Lcmc;

    const/16 p4, 0x11

    invoke-direct {p3, p0, p4}, Lcmc;-><init>(Lhcz;I)V

    invoke-static {p2, p3, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)V
    .locals 7

    iget-boolean p1, p0, Lhcz;->i:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lhcz;->n:Z

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lhcz;->m:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x1f4

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    iput-boolean v0, p0, Lhcz;->n:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lhcz;->n:Z

    :goto_0
    iput-wide v1, p0, Lhcz;->m:J

    return-void
.end method

.method public final b()V
    .locals 0

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Lhcz;->e()V

    return-void
.end method

.method public final d(Landroid/graphics/PointF;)V
    .locals 14

    invoke-static {}, Ljuh;->a()V

    iget-boolean v0, p0, Lhcz;->k:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhcz;->h:Ljava/util/concurrent/Callable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhcz;->g:Ldbf;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhcz;->j:Landroid/os/CountDownTimer;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-boolean v0, p0, Lhcz;->f:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhcz;->g:Ldbf;

    invoke-virtual {v0}, Ldbf;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lhcz;->o:Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lhcz;->n:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lhcz;->i:Z

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lhcz;->m:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x44c

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    new-instance v0, Lhcx;

    move-object v7, v0

    move-object v8, p0

    move-wide v9, v5

    move-wide v11, v5

    move-object v13, p1

    invoke-direct/range {v7 .. v13}, Lhcx;-><init>(Lhcz;JJLandroid/graphics/PointF;)V

    iput-object v0, p0, Lhcz;->j:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    cmp-long v0, v5, v3

    if-lez v0, :cond_4

    iget-object v0, p0, Lhcz;->l:Lnom;

    invoke-virtual {v0, v2}, Lnom;->f(I)V

    iget-object v0, p0, Lhcz;->c:Lhdi;

    new-instance v2, Landroid/graphics/Point;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    iget p1, p1, Landroid/graphics/PointF;->y:F

    float-to-int p1, p1

    invoke-direct {v2, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    iget-object p1, v0, Lhdi;->f:Ljuh;

    new-instance v3, Lhdg;

    invoke-direct {v3, v0, v2, v1}, Lhdg;-><init>(Lhdi;Landroid/graphics/Point;I)V

    invoke-virtual {p1, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Lhcz;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhcz;->j:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lhcz;->c:Lhdi;

    invoke-virtual {v0}, Lhdi;->a()V

    :cond_0
    return-void
.end method
