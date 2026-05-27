.class public final synthetic Lhjk;
.super Ljava/lang/Object;

# interfaces
.implements Lmrl;


# instance fields
.field public final synthetic a:Lhjl;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lhjl;IIZZZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjk;->a:Lhjl;

    iput p2, p0, Lhjk;->f:I

    iput p3, p0, Lhjk;->g:I

    iput-boolean p4, p0, Lhjk;->b:Z

    iput-boolean p5, p0, Lhjk;->c:Z

    iput-boolean p6, p0, Lhjk;->d:Z

    iput-wide p7, p0, Lhjk;->e:J

    iput p9, p0, Lhjk;->h:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lhjk;->a:Lhjl;

    iget v1, p0, Lhjk;->f:I

    iget v2, p0, Lhjk;->g:I

    iget-boolean v3, p0, Lhjk;->b:Z

    iget-boolean v4, p0, Lhjk;->c:Z

    iget-boolean v5, p0, Lhjk;->d:Z

    iget-wide v6, p0, Lhjk;->e:J

    iget v8, p0, Lhjk;->h:I

    sget-object v9, Lnif;->l:Lnif;

    invoke-virtual {v9}, Lnws;->O()Lnwn;

    move-result-object v9

    iget-object v10, v9, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_0
    iget-object v10, v9, Lnwn;->b:Lnws;

    move-object v11, v10

    check-cast v11, Lnif;

    add-int/lit8 v1, v1, -0x1

    iput v1, v11, Lnif;->b:I

    iget v1, v11, Lnif;->a:I

    const/4 v12, 0x1

    or-int/2addr v1, v12

    iput v1, v11, Lnif;->a:I

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_1
    iget-object v1, v9, Lnwn;->b:Lnws;

    move-object v10, v1

    check-cast v10, Lnif;

    add-int/lit8 v2, v2, -0x1

    iput v2, v10, Lnif;->c:I

    iget v2, v10, Lnif;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v10, Lnif;->a:I

    iget-object v2, v0, Lhjl;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_2
    iget-object v1, v9, Lnwn;->b:Lnws;

    move-object v10, v1

    check-cast v10, Lnif;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, Lnif;->a:I

    or-int/lit8 v11, v11, 0x40

    iput v11, v10, Lnif;->a:I

    iput-object v2, v10, Lnif;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_3
    iget-object v1, v9, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnif;

    iget v10, v2, Lnif;->a:I

    or-int/lit16 v10, v10, 0x80

    iput v10, v2, Lnif;->a:I

    iput-boolean v3, v2, Lnif;->e:Z

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_4
    iget-object v1, v9, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnif;

    iget v3, v2, Lnif;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lnif;->a:I

    iput-boolean v4, v2, Lnif;->f:Z

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_5
    iget-object v1, v9, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnif;

    iget v3, v2, Lnif;->a:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v2, Lnif;->a:I

    iput-boolean v5, v2, Lnif;->g:Z

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_6
    iget-object v1, v9, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnif;

    iget v3, v2, Lnif;->a:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Lnif;->a:I

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lnif;->h:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_7
    iget-object v1, v9, Lnwn;->b:Lnws;

    move-object v2, v1

    check-cast v2, Lnif;

    iget v3, v2, Lnif;->a:I

    or-int/lit16 v3, v3, 0x2000

    iput v3, v2, Lnif;->a:I

    iput-wide v6, v2, Lnif;->k:J

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_8
    iget-object v1, v9, Lnwn;->b:Lnws;

    check-cast v1, Lnif;

    add-int/lit8 v8, v8, -0x1

    iput v8, v1, Lnif;->i:I

    iget v2, v1, Lnif;->a:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v1, Lnif;->a:I

    iget-object v1, v0, Lhjl;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v0, v0, Lhjl;->i:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v12}, Landroid/app/ActivityManager;->getHistoricalProcessExitReasons(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_1

    :cond_9
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v1

    sub-long/2addr v3, v1

    sget-object v1, Lngf;->h:Lngf;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v2

    iget-object v5, v1, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_a
    iget-object v5, v1, Lnwn;->b:Lnws;

    check-cast v5, Lngf;

    iget v6, v5, Lngf;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Lngf;->a:I

    iput v2, v5, Lngf;->d:I

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v5

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_b
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngf;

    iget v7, v2, Lngf;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v2, Lngf;->a:I

    iput-wide v5, v2, Lngf;->e:J

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v5

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_c
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v7, v2

    check-cast v7, Lngf;

    iget v8, v7, Lngf;->a:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Lngf;->a:I

    iput-wide v5, v7, Lngf;->f:J

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_d
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngf;

    iget v5, v2, Lngf;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Lngf;->a:I

    iput-wide v3, v2, Lngf;->g:J

    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    invoke-static {v2}, Lmoz;->N(I)I

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, v1, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_e
    iget-object v0, v1, Lnwn;->b:Lnws;

    check-cast v0, Lngf;

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lngf;->b:I

    iget v2, v0, Lngf;->a:I

    or-int/2addr v2, v12

    iput v2, v0, Lngf;->a:I

    goto :goto_0

    :cond_f
    invoke-virtual {v0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngf;

    iget v3, v2, Lngf;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Lngf;->a:I

    iput v0, v2, Lngf;->c:I

    :goto_0
    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lngf;

    :goto_1
    if-eqz v1, :cond_12

    iget-object v0, v9, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_11
    iget-object v0, v9, Lnwn;->b:Lnws;

    check-cast v0, Lnif;

    iput-object v1, v0, Lnif;->j:Lngf;

    iget v1, v0, Lnif;->a:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, v0, Lnif;->a:I

    :cond_12
    sget-object v0, Lngr;->av:Lngr;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    sget-object v1, Lngq;->f:Lngq;

    iget-object v2, v0, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_13
    iget-object v2, v0, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v1, v1, Lngq;->ar:I

    iput v1, v3, Lngr;->d:I

    iget v1, v3, Lngr;->a:I

    or-int/2addr v1, v12

    iput v1, v3, Lngr;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_14
    iget-object v1, v0, Lnwn;->b:Lnws;

    check-cast v1, Lngr;

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnif;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lngr;->i:Lnif;

    iget v2, v1, Lngr;->a:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v1, Lngr;->a:I

    return-object v0
.end method
