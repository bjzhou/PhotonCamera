.class public final synthetic Lhjj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhjl;

.field public final synthetic b:Lmrl;

.field public final synthetic c:J

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lhjl;Lmrl;JII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhjj;->a:Lhjl;

    iput-object p2, p0, Lhjj;->b:Lmrl;

    iput-wide p3, p0, Lhjj;->c:J

    iput p5, p0, Lhjj;->d:I

    iput p6, p0, Lhjj;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lhjj;->a:Lhjl;

    iget-object v1, p0, Lhjj;->b:Lmrl;

    iget-wide v2, p0, Lhjj;->c:J

    iget v4, p0, Lhjj;->d:I

    iget v5, p0, Lhjj;->e:I

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnwn;

    iget-object v6, v1, Lnwn;->b:Lnws;

    check-cast v6, Lngr;

    iget v6, v6, Lngr;->d:I

    invoke-static {v6}, Lngq;->b(I)Lngq;

    move-result-object v6

    if-nez v6, :cond_0

    sget-object v6, Lngq;->a:Lngq;

    :cond_0
    sget-object v7, Lngq;->c:Lngq;

    const/4 v8, 0x4

    if-eq v6, v7, :cond_3

    iget-object v6, v1, Lnwn;->b:Lnws;

    check-cast v6, Lngr;

    iget v6, v6, Lngr;->d:I

    invoke-static {v6}, Lngq;->b(I)Lngq;

    move-result-object v7

    if-nez v7, :cond_1

    sget-object v7, Lngq;->a:Lngq;

    :cond_1
    sget-object v9, Lngq;->i:Lngq;

    if-eq v7, v9, :cond_3

    invoke-static {v6}, Lngq;->b(I)Lngq;

    move-result-object v6

    if-nez v6, :cond_2

    sget-object v6, Lngq;->a:Lngq;

    :cond_2
    sget-object v7, Lngq;->f:Lngq;

    if-ne v6, v7, :cond_5

    :cond_3
    iget-object v6, v0, Lhjl;->d:Ljava/lang/String;

    iget-object v7, v1, Lnwn;->b:Lnws;

    invoke-virtual {v7}, Lnws;->ac()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_4
    iget-object v7, v1, Lnwn;->b:Lnws;

    check-cast v7, Lngr;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v7, Lngr;->a:I

    or-int/2addr v9, v8

    iput v9, v7, Lngr;->a:I

    iput-object v6, v7, Lngr;->e:Ljava/lang/String;

    :cond_5
    iget-wide v6, v0, Lhjl;->k:J

    const-wide/16 v9, -0x1

    cmp-long v11, v6, v9

    if-eqz v11, :cond_7

    iget-object v9, v1, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_6
    iget-object v9, v1, Lnwn;->b:Lnws;

    check-cast v9, Lngr;

    iget v10, v9, Lngr;->c:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, v9, Lngr;->c:I

    iput-wide v6, v9, Lngr;->am:J

    :cond_7
    iget-boolean v6, v0, Lhjl;->l:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    iget-object v6, v1, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_8
    iget-object v6, v1, Lnwn;->b:Lnws;

    check-cast v6, Lngr;

    iget v9, v6, Lngr;->c:I

    const v10, 0x8000

    or-int/2addr v9, v10

    iput v9, v6, Lngr;->c:I

    iput-boolean v7, v6, Lngr;->ap:Z

    :cond_9
    iget-boolean v6, v0, Lhjl;->h:Z

    iget-object v9, v1, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_a
    iget-object v9, v1, Lnwn;->b:Lnws;

    move-object v10, v9

    check-cast v10, Lngr;

    iget v11, v10, Lngr;->a:I

    const/high16 v12, 0x20000000

    or-int/2addr v11, v12

    iput v11, v10, Lngr;->a:I

    iput-boolean v6, v10, Lngr;->z:Z

    iget-wide v10, v0, Lhjl;->c:J

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_b
    iget-object v6, v1, Lnwn;->b:Lnws;

    check-cast v6, Lngr;

    iget v9, v6, Lngr;->b:I

    const/high16 v12, 0x100000

    or-int/2addr v9, v12

    iput v9, v6, Lngr;->b:I

    iput-wide v10, v6, Lngr;->R:J

    iget-object v6, v0, Lhjl;->f:Ldin;

    sget-object v9, Lklv;->a:Lklv;

    sget-object v9, Lgya;->a:Lgya;

    sget-object v9, Lnlc;->a:Lnlc;

    invoke-virtual {v6}, Ldin;->ordinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v7, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v7, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v7, 0x2

    goto :goto_0

    :goto_0
    :pswitch_3
    iget-object v6, v1, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_c
    iget-object v6, v1, Lnwn;->b:Lnws;

    move-object v9, v6

    check-cast v9, Lngr;

    add-int/lit8 v7, v7, -0x1

    iput v7, v9, Lngr;->y:I

    iget v7, v9, Lngr;->a:I

    const/high16 v10, 0x10000000

    or-int/2addr v7, v10

    iput v7, v9, Lngr;->a:I

    iget-object v7, v0, Lhjl;->a:Ljava/lang/String;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_d
    iget-object v6, v1, Lnwn;->b:Lnws;

    move-object v9, v6

    check-cast v9, Lngr;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v9, Lngr;->b:I

    or-int/2addr v8, v10

    iput v8, v9, Lngr;->b:I

    iput-object v7, v9, Lngr;->C:Ljava/lang/String;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_e

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_e
    iget-object v6, v1, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lngr;

    iget v8, v7, Lngr;->a:I

    const/high16 v9, 0x8000000

    or-int/2addr v8, v9

    iput v8, v7, Lngr;->a:I

    iput-wide v2, v7, Lngr;->x:J

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_f
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lngr;

    iget v6, v3, Lngr;->a:I

    const/high16 v7, 0x4000000

    or-int/2addr v6, v7

    iput v6, v3, Lngr;->a:I

    iput v4, v3, Lngr;->w:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_10
    iget-object v2, v1, Lnwn;->b:Lnws;

    check-cast v2, Lngr;

    add-int/lit8 v3, v5, -0x1

    if-eqz v5, :cond_11

    iput v3, v2, Lngr;->L:I

    iget v3, v2, Lngr;->b:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v2, Lngr;->b:I

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object v1

    check-cast v1, Lngr;

    iget-object v2, v0, Lhjl;->b:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfca;

    invoke-interface {v2, v1}, Lfca;->a(Lngr;)V

    iget-object v0, v0, Lhjl;->g:Ljava/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava/util/concurrent/Phaser;->arriveAndDeregister()I

    return-void

    :cond_11
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
