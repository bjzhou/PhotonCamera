.class public final Ldkt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldko;


# instance fields
.field public final a:Ldln;

.field public final b:Ldla;

.field public final c:Ldlm;

.field public final d:Lubk;

.field private final e:Ldlq;

.field private final f:Ldma;


# direct methods
.method public constructor <init>(Ldln;Ldlq;Ldma;Ldla;Ldlm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Ldkt;->c:Ldlm;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    iput-object p1, p0, Ldkt;->d:Lubk;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Ldkt;->f:Ldma;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Ldkt;->e:Ldlq;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Ldkt;->a:Ldln;

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

    :goto_7
    iput-object p4, p0, Ldkt;->b:Ldla;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    new-instance p1, Ldkr;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p0}, Ldkr;-><init>(Ldkt;)V

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Ldkp;Ldlh;I)Lbrd;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-direct {v0, p2}, Ldlh;-><init>(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, v0, v2}, Lucd;->j(III)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    const/16 v2, 0x3e8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ldlh;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    add-int/2addr p2, v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_b

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    const v1, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p1, p2, p3}, Ldly;-><init>(Ldkp;Ldlh;I)V

    goto/32 :goto_13

    nop

    nop

    :goto_f
    new-instance v1, Ldly;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const v2, 0x7fffffff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    iget p2, p2, Ldlh;->p:I

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

    :goto_12
    check-cast v0, Ldjx;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    invoke-virtual {p0, v1}, Ldkt;->b(Ldly;)Lbrd;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object p2, v0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    iget v0, v0, Ldjx;->a:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1b
    iget-object v0, p0, Ldkt;->e:Ldlq;

    nop

    goto/32 :goto_12

    nop

    nop
.end method

.method public final b(Ldly;)Lbrd;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    monitor-exit v1

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

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    :goto_3
    return-object v2

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_5
    monitor-exit v1

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Ldlz;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1}, Ldlz;-><init>(Ldma;Ldly;)V

    invoke-interface {v0, v1}, Lubk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Ldma;->b:Lym;

    nop

    nop

    invoke-virtual {v2, p1}, Lym;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ldmd;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ldmd;->b()Z

    move-result v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    iget-object v0, p0, Ldma;->a:Ldnj;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_2
    iget-object v2, p0, Ldma;->b:Lym;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p1}, Lym;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    check-cast v2, Ldmd;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_a
    monitor-exit v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-object v1, p0, Ldma;->b:Lym;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Lym;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ldmd;->b()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    iget-object p0, p0, Ldma;->b:Lym;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, v2}, Lym;->c(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const-string v0, "Could not load font"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ldkt;->f:Ldma;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Ldma;->a:Ldnj;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    throw p1

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    new-instance v0, Ldks;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0, p1}, Ldks;-><init>(Ldkt;Ldly;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-exit v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
