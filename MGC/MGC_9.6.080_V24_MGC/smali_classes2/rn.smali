.class public final Lrn;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lov;

.field public final b:Ljava/lang/Object;

.field public c:Lou;

.field public d:Lsp;

.field public e:Ljava/util/Map;

.field public f:Ltr;

.field public g:La;

.field private final h:Lufs;

.field private final i:Lur;

.field private final j:Lsl;

.field private final k:Lpk;

.field private l:Lugy;

.field private final m:Lejk;

.field private final n:Lts;

.field private final o:Lrbh;


# direct methods
.method public constructor <init>(Lufs;Lejk;Lov;Lur;Lsl;Lts;Lrbh;Lpk;Lkg;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p6, p0, Lrn;->n:Lts;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lrn;->j:Lsl;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iput-object p3, p0, Lrn;->a:Lov;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iput-object p1, p0, Lrn;->h:Lufs;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_c
    sget-object p1, Los;->a:Los;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lrn;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    :goto_10
    iput-object p8, p0, Lrn;->k:Lpk;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p7, p0, Lrn;->o:Lrbh;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    iput-object p4, p0, Lrn;->i:Lur;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iput-object p2, p0, Lrn;->m:Lejk;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lrn;->g:La;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    :try_start_0
    sget-object v1, Loo;->a:Loo;

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lrn;->g:La;

    nop

    iget-object v1, p0, Lrn;->f:Ltr;

    nop

    iget-object v2, p0, Lrn;->d:Lsp;

    nop

    const/4 v3, 0x0

    nop

    iput-object v3, p0, Lrn;->f:Ltr;

    nop

    iput-object v3, p0, Lrn;->d:Lsp;

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lrn;->l:Lugy;

    nop

    nop

    if-eqz v4, :cond_0

    nop

    nop

    nop

    invoke-static {v4}, Luch;->I(Lugy;)V

    :cond_0
    iput-object v3, p0, Lrn;->l:Lugy;

    nop

    nop

    invoke-virtual {p0, v2, v1}, Lrn;->c(Lsp;Ltr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    :try_start_1
    iget-object v1, p0, Lrn;->g:La;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Loo;->a:Loo;

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v1, 0x11

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 15

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    return-void

    nop

    :cond_0
    :try_start_0
    iget-object v3, p0, Lrn;->f:Ltr;

    nop

    if-nez v3, :cond_4

    nop

    nop

    iget-object v3, p0, Lrn;->d:Lsp;

    nop

    if-nez v3, :cond_3

    nop

    iput-object v2, p0, Lrn;->f:Ltr;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lsp;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, p0, Lrn;->i:Lur;

    nop

    iget-object v11, p0, Lrn;->j:Lsl;

    nop

    nop

    iget-object v12, p0, Lrn;->n:Lts;

    nop

    nop

    nop

    nop

    iget-object v13, p0, Lrn;->k:Lpk;

    nop

    iget-object v14, p0, Lrn;->h:Lufs;

    nop

    move-object v9, v2

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v14}, Lsp;-><init>(Lur;Lsl;Lts;Lpk;Lufs;)V

    iput-object v2, p0, Lrn;->d:Lsp;

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lrn;->e:Ljava/util/Map;

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lsp;->a(Ljava/util/Map;)V

    :cond_1
    sget-object v2, Lor;->a:Lor;

    nop

    nop

    iput-object v2, p0, Lrn;->g:La;

    nop

    iget-object v2, p0, Lrn;->l:Lugy;

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    invoke-static {v2}, Luch;->I(Lugy;)V

    :cond_2
    iget-object v2, p0, Lrn;->h:Lufs;

    nop

    nop

    nop

    nop

    new-instance v3, Lrt;

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    invoke-direct {v3, p0, v1, v4}, Lrt;-><init>(Lrn;Ltzy;I)V

    const/4 v4, 0x0

    nop

    nop

    invoke-static {v2, v1, v4, v3, v8}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lrn;->l:Lugy;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lrn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lrn;->g:La;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Loo;->a:Loo;

    nop

    nop

    invoke-static {v1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :cond_3
    :try_start_2
    const-string p0, "Check failed."

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const-string p0, "Check failed."

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_f
    monitor-exit v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_7
    goto/32 :goto_7

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    :try_start_3
    iget-object v1, p0, Lrn;->g:La;

    nop

    sget-object v2, Lor;->a:Lor;

    nop

    nop

    nop

    invoke-static {v1, v2}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    const-string p0, "CXCP"

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Ignoring start(): Camera2CameraController is already started"

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    monitor-exit v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_4
    iput-object v1, p0, Lrn;->c:Lou;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lrn;->o:Lrbh;

    nop

    iget-object v3, p0, Lrn;->a:Lov;

    nop

    iget-object v4, v3, Lov;->a:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v5, v3, Lov;->m:Ljava/util/List;

    nop

    iget-object v6, p0, Lrn;->i:Lur;

    nop

    nop

    nop

    new-instance v7, Lnb;

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x3

    nop

    nop

    nop

    nop

    invoke-direct {v7, p0, v8}, Lnb;-><init>(Ljava/lang/Object;I)V

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    move-object v3, v4

    nop

    nop

    move-object v4, v5

    nop

    nop

    nop

    nop

    nop

    move-object v5, v6

    nop

    nop

    nop

    nop

    nop

    move v6, v9

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Lrbh;->y(Ljava/lang/String;Ljava/util/List;Lur;ZLubk;)Ltr;

    move-result-object v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_0

    nop

    nop

    nop

    const-string p0, "CXCP"

    nop

    nop

    nop

    nop

    const-string v1, "Failed to start Camera2CameraController: Open request submission failed"

    nop

    nop

    nop

    nop

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final c(Lsp;Ltr;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrn;->m:Lejk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_2
    const-wide/16 v0, 0x7d0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lejk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1, p2, v2, v1}, Lrz;-><init>(Lsp;Ltr;Ltzy;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p2, p1, v2}, Lrm;-><init>(Lufy;Ltzy;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0, v1, p2}, Lug;->a(Lufp;JLubk;)V

    goto/32 :goto_11

    nop

    nop

    :goto_c
    iget-object p1, p0, Lrn;->h:Lufs;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, v2, v0, p2}, Lucd;->v(Lufs;Luad;Lubo;I)Lufy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1b

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    new-instance p2, Lrm;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    check-cast p0, Lufp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object p2, Lug;->a:Lufs;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lrz;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
