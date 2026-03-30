.class public final Lqbb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqbf;


# instance fields
.field private final a:Lqaj;

.field private final b:Lpwl;

.field private final c:Ljava/lang/String;

.field private final d:Lqbn;

.field private final e:Lpww;

.field private final f:I

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Lpwh;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:I

.field private final l:Lhdn;


# direct methods
.method public constructor <init>(Lqaj;Lhdn;Lpwl;ILqbn;Lpww;IJLjava/lang/String;Lpwh;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lqbb;->b:Lpwl;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p11, p0, Lqbb;->i:Lpwh;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lqbb;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p10, p0, Lqbb;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p7, p0, Lqbb;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    iput-object p12, p0, Lqbb;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide p8, p0, Lqbb;->g:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p4, p0, Lqbb;->k:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p2, p0, Lqbb;->l:Lhdn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iput-object p6, p0, Lqbb;->e:Lpww;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    iput-object p5, p0, Lqbb;->d:Lqbn;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lqbb;->a:Lqaj;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-static {p3}, Lpuq;->aE(Lpwl;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Lpwv;Lpwl;ILqaj;Ljava/util/concurrent/Executor;)Lsui;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-direct {p2, p1, v1}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1c

    nop

    nop

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p3, p1, p4}, Lqbb;->e(Lqaj;Lpwz;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p2, Lpzq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xb

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

    :goto_8
    invoke-virtual {p2, v0, p4}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

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

    :goto_9
    invoke-static {p1, p2}, Lpuq;->M(Lpwl;I)Lpwz;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, p3, p1, v1}, Lpzf;-><init>(Lpwv;Lqaj;Lpwz;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lpzf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2, p4}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0x11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p2}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop
.end method

.method static d(Lqaj;Lpwl;ILhdn;Landroid/net/Uri;Ljava/lang/String;Lqbn;Lpwh;Ljava/util/concurrent/Executor;)Lsui;
    .locals 7

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    move-object v4, p3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p8}, Lqbb;->e(Lqaj;Lpwz;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    move-object v5, p4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v6, 0x4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v1, p7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1, p8}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    move-object v2, p5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    new-instance p1, Lpyr;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    invoke-direct/range {v0 .. v6}, Lpyr;-><init>(Lpwh;Ljava/lang/String;Lqbn;Lhdn;Landroid/net/Uri;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    invoke-static {p1, p2}, Lpuq;->M(Lpwl;I)Lpwz;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    move-object v3, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static e(Lqaj;Lpwz;Ljava/util/concurrent/Executor;)Lsui;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1, v1}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    new-instance v0, Lpzq;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    invoke-static {p0, v0, p2}, Lqrf;->r(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    invoke-interface {p0, p1}, Lqaj;->e(Lpwz;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Lsui;
    .locals 21

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-static {v4, v0, v2, v3, v1}, Lqbb;->c(Lpwv;Lpwl;ILqaj;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v1, p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, v1, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    iget v0, v0, Lpwl;->f:I

    nop

    nop

    invoke-static {v0}, La;->D(I)I

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    goto :goto_2

    nop

    nop

    :cond_0
    const/4 v2, 0x2

    nop

    nop

    nop

    if-eq v0, v2, :cond_8

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v1, Lqbb;->l:Lhdn;

    nop

    nop

    iget-object v2, v1, Lqbb;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v3, v20

    nop

    invoke-static {v0, v3, v2}, Lqbc;->d(Lhdn;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    goto/16 :goto_15

    nop

    nop

    :cond_1
    const-string v0, "%s: Final file checksum verification failed. %s."

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, v18

    nop

    nop

    invoke-static {v0, v4, v3}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object v0

    nop

    nop

    sget-object v2, Lpwe;->F:Lpwe;

    nop

    nop

    nop

    iput-object v2, v0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltar;->c()Lpwf;

    move-result-object v0

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lpwf; {:try_start_0 .. :try_end_0} :catch_9

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    move-object/from16 v1, p0

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
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3, v0, v4}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, v0, Lpwl;->g:Ljava/lang/String;

    nop

    :goto_a
    :try_start_1
    iget-object v3, v1, Lqbb;->l:Lhdn;

    nop

    nop

    invoke-static {v3, v0, v6, v2}, Lqbc;->c(Lhdn;Lpwl;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v1, Lqbb;->b:Lpwl;

    nop

    nop

    iget v0, v0, Lpwl;->b:I

    nop

    nop

    nop

    and-int/lit8 v0, v0, 0x20

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    invoke-static/range {p1 .. p1}, Lpuq;->H(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    nop

    nop

    nop

    iget-object v2, v1, Lqbb;->b:Lpwl;

    nop

    invoke-static {v2}, Lpuq;->aF(Lpwl;)Z

    move-result v2

    nop
    :try_end_1
    .catch Lpwf; {:try_start_1 .. :try_end_1} :catch_9

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    and-int/lit8 v2, v2, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_c
    move-object v4, v5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    iget-object v2, v1, Lqbb;->a:Lqaj;

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_e
    move-object/from16 v20, v0

    nop

    nop

    nop

    nop

    :try_start_2
    move-object v0, v5

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lsqp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lsqp;->b:I

    nop

    const/16 v19, 0x1

    nop

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v1, v0, Lsqp;->b:I

    nop

    nop

    nop

    nop

    iput-object v6, v0, Lsqp;->c:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_2
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lsqp;

    nop

    iget v5, v1, Lsqp;->b:I

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    or-int/2addr v5, v6

    nop

    iput v5, v1, Lsqp;->b:I

    nop

    nop

    nop

    iput v9, v1, Lsqp;->d:I

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_3
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Lsqp;

    nop

    nop

    iget v5, v1, Lsqp;->b:I

    nop

    nop

    or-int/lit8 v5, v5, 0x40

    nop

    nop

    nop

    nop

    iput v5, v1, Lsqp;->b:I

    nop

    nop

    nop

    iput-wide v10, v1, Lsqp;->i:J

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_4
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lsqp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lsqp;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit16 v5, v5, 0x80

    nop

    nop

    iput v5, v1, Lsqp;->b:I

    nop

    iput-object v12, v1, Lsqp;->j:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v1, v8, Lpww;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->o()V

    :cond_5
    iget-object v0, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lsqp;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v0, Lsqp;->b:I

    nop

    nop

    or-int/lit8 v5, v5, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v5, v0, Lsqp;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lsqp;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    move-object v8, v0

    nop

    nop

    nop

    nop

    check-cast v8, Lsqp;

    nop

    nop

    nop

    iget-object v0, v13, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    move-wide v10, v14

    nop

    nop

    nop

    move-wide/from16 v12, v16

    nop

    nop

    nop

    move-object v14, v0

    nop

    move v15, v1

    nop

    nop

    nop

    nop

    invoke-interface/range {v7 .. v15}, Lqbn;->m(Lsqp;IJJLjava/lang/String;I)V

    goto :goto_f

    nop

    nop

    :catch_0
    move-object/from16 v20, v0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2a

    nop

    nop

    :cond_6
    move-object/from16 v1, p0

    nop

    nop

    move-object/from16 v6, p1

    nop

    nop

    goto/16 :goto_56

    nop

    nop

    nop

    nop

    :cond_7
    move-object/from16 v20, v0

    nop

    nop

    nop

    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v2}, Lhdn;->G(Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lpwf; {:try_start_2 .. :try_end_2} :catch_4

    goto/32 :goto_46

    nop

    nop

    :goto_10
    move-object v5, v0

    nop

    :try_start_3
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_11
    throw v3

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v6, p1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_13
    move-object v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    :try_start_4
    const/4 v3, 0x0

    nop

    sget-object v3, Lcom/google/android/apps/camera/ui/remotecontrol/Gizr/bXyemjIV;->llZhMczRjZDz:Ljava/lang/String;

    nop

    nop

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    invoke-static {v0, v3, v2}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lpwe;->E:Lpwe;

    nop

    iput-object v3, v2, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    iput-object v0, v2, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v2}, Ltar;->c()Lpwf;

    move-result-object v0

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    move-object v4, v5

    nop

    nop

    const-string v2, "%s: Exception while trying to serialize download transform"

    nop

    nop

    nop

    nop

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    invoke-static {v0, v2, v3}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object v2

    nop

    sget-object v3, Lpwe;->D:Lpwe;

    nop

    iput-object v3, v2, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iput-object v0, v2, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltar;->c()Lpwf;

    move-result-object v0

    nop

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Lpwf; {:try_start_4 .. :try_end_4} :catch_9

    :cond_8
    :goto_15
    goto/32 :goto_30

    nop

    nop

    :goto_16
    const v0, 0xf

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v15, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_9
    :try_start_5
    invoke-virtual {v5}, Ltkb;->o()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lpwf; {:try_start_5 .. :try_end_5} :catch_9

    :goto_18
    :try_start_6
    iget-object v15, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v3, v15

    nop

    nop

    check-cast v3, Lsqp;

    nop

    nop

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v3, Lsqp;->b:I

    nop

    nop

    or-int/2addr v1, v4

    nop

    nop

    nop

    nop

    iput v1, v3, Lsqp;->b:I

    nop

    nop

    iput-object v13, v3, Lsqp;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v1

    nop

    if-nez v1, :cond_a

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_a
    iget-object v1, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    nop

    nop

    check-cast v3, Lsqp;

    nop

    iget v4, v3, Lsqp;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v13, 0x2

    nop

    nop

    nop

    nop

    or-int/2addr v4, v13

    nop

    iput v4, v3, Lsqp;->b:I

    nop

    nop

    iput v9, v3, Lsqp;->d:I

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_b
    iget-object v1, v5, Ltkb;->b:Ltkg;

    nop

    nop

    move-object v3, v1

    nop

    check-cast v3, Lsqp;

    nop

    iget v4, v3, Lsqp;->b:I

    nop

    nop

    or-int/lit8 v4, v4, 0x40

    nop

    nop

    iput v4, v3, Lsqp;->b:I

    nop

    nop

    nop

    nop

    iput-wide v10, v3, Lsqp;->i:J

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    if-nez v1, :cond_c

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_c
    iget-object v1, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v3, v1

    nop

    nop

    check-cast v3, Lsqp;

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lsqp;->b:I

    nop

    nop

    nop

    nop

    or-int/lit16 v4, v4, 0x80

    nop

    nop

    nop

    iput v4, v3, Lsqp;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-object v12, v3, Lsqp;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v8, Lpww;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_d

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_d
    iget-object v1, v5, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v1, Lsqp;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Lsqp;->b:I

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v4, v1, Lsqp;->b:I

    nop

    nop

    nop

    nop

    iput-object v3, v1, Lsqp;->e:Ljava/lang/String;

    nop

    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    move-object v8, v1

    nop

    nop

    check-cast v8, Lsqp;

    nop

    nop

    nop

    new-instance v1, Lrap;

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    invoke-direct {v1, v3}, Lrap;-><init>(I)V

    invoke-virtual {v2, v0, v1}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Long;

    nop

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    invoke-virtual {v2, v6}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v12

    nop

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    const/4 v9, 0x5

    nop

    invoke-interface/range {v7 .. v15}, Lqbn;->m(Lsqp;IJJLjava/lang/String;I)V

    invoke-virtual {v2, v6}, Lhdn;->G(Landroid/net/Uri;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lpwf; {:try_start_6 .. :try_end_6} :catch_4

    :catch_2
    goto/32 :goto_1b

    nop

    nop

    :goto_19
    const/4 v4, 0x1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_15

    nop

    :catch_3
    move-exception v0

    nop

    :try_start_7
    const-string v1, "%s: Failed to apply zip download transform for file %s."

    nop

    nop

    nop

    nop

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object v1

    nop

    sget-object v2, Lpwe;->E:Lpwe;

    nop

    nop

    nop

    iput-object v2, v1, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    iput-object v0, v1, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltar;->c()Lpwf;

    move-result-object v0

    nop

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_7
    .catch Lpwf; {:try_start_7 .. :try_end_7} :catch_4

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v10, v1, Lqbb;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v4, Lpwv;->e:Lpwv;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    invoke-virtual {v2, v3, v0}, Lqdd;->g(Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v3, Lpzq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_4b

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v3, v0, v4}, Lpzq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v3, Lpwe;->B:Lpwe;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_d

    nop

    nop

    :goto_29
    move-object/from16 v18, v5

    nop

    nop

    nop

    :catch_5
    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    move-object v3, v0

    nop

    :goto_2c
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v5, "DownloaderCallbackImpl"

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, v1, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_31
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v4, v5

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_35
    iget-object v0, v1, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object/from16 v18, v5

    nop

    nop

    nop

    nop

    nop

    :try_start_8
    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->C()Z

    move-result v5

    nop
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lpwf; {:try_start_8 .. :try_end_8} :catch_4

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_37
    invoke-static {v0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_38
    invoke-static/range {v2 .. v10}, Lqbb;->d(Lqaj;Lpwl;ILhdn;Landroid/net/Uri;Ljava/lang/String;Lqbn;Lpwh;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_39
    iget-object v2, v0, Lpwf;->a:Lpwe;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3a
    if-lez v0, :cond_f

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_21

    nop

    :goto_3b
    move-object v4, v5

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2, v3}, Lpwe;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v15, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_10
    :try_start_9
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v4, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_40
    sget v0, Lqbq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v8, v1, Lqbb;->d:Lqbn;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_42
    iget-object v4, v1, Lqbb;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v3, Lpzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_44
    move-object v5, v0

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw v3

    nop

    nop

    nop

    nop
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lpwf; {:try_start_a .. :try_end_a} :catch_9

    :catch_7
    move-exception v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :catch_8
    goto/32 :goto_64

    nop

    nop

    :goto_47
    iget-object v3, v1, Lqbb;->b:Lpwl;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_48
    goto/16 :goto_69

    nop

    nop

    nop

    :goto_49
    :try_start_b
    iget-object v2, v1, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    nop

    iget v3, v2, Lpwl;->b:I

    nop

    and-int/lit8 v3, v3, 0x20

    nop

    if-eqz v3, :cond_18

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lpwl;->h:Ltqx;

    nop

    nop

    nop

    nop

    if-nez v2, :cond_11

    nop

    nop

    nop

    sget-object v2, Ltqx;->a:Ltqx;

    nop

    nop

    nop

    nop

    nop

    :cond_11
    iget-object v2, v2, Ltqx;->b:Ltkv;

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_18

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ltqw;

    nop

    nop

    iget v3, v3, Ltqw;->b:I

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x6

    nop

    nop

    nop

    if-ne v3, v7, :cond_12

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lqbb;->l:Lhdn;

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Lpwf; {:try_start_b .. :try_end_b} :catch_9

    :try_start_c
    new-instance v3, Lrap;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-direct {v3, v4}, Lrap;-><init>(I)V

    invoke-virtual {v2, v6, v3}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    invoke-virtual {v2, v6, v0}, Lhdn;->H(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catch Lpwf; {:try_start_c .. :try_end_c} :catch_9

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_2c

    nop

    nop

    :goto_4b
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v2, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_13
    :try_start_d
    iget-object v7, v1, Lqbb;->d:Lqbn;

    nop

    iget-object v2, v1, Lqbb;->l:Lhdn;

    nop

    nop

    nop

    iget-object v8, v1, Lqbb;->e:Lpww;

    nop

    nop

    nop

    nop

    nop

    iget v9, v1, Lqbb;->f:I

    nop

    nop

    nop

    iget-wide v10, v1, Lqbb;->g:J

    nop

    nop

    nop

    iget-object v12, v1, Lqbb;->h:Ljava/lang/String;

    nop

    nop

    iget-object v13, v1, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v13, Lpwl;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_d
    .catch Lpwf; {:try_start_d .. :try_end_d} :catch_4

    :try_start_e
    new-instance v13, Lqbg;

    nop

    invoke-direct {v13, v0}, Lqbg;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v2, v6, v13}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Lpwf; {:try_start_e .. :try_end_e} :catch_4

    :try_start_f
    sget-object v5, Lsqp;->a:Lsqp;

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    iget-object v13, v8, Lpww;->c:Ljava/lang/String;

    nop

    iget-object v15, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {v15}, Ltkg;->C()Z

    move-result v15

    nop

    nop
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lpwf; {:try_start_f .. :try_end_f} :catch_4

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v2}, Lqdd;->e(Lsui;)Lqdd;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v1, v1, Lqbb;->j:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_50
    if-nez v14, :cond_14

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_14
    :try_start_10
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lpwf; {:try_start_10 .. :try_end_10} :catch_9

    :goto_51
    :try_start_11
    iget v14, v13, Lpwl;->b:I

    nop

    nop

    nop

    and-int/lit8 v14, v14, 0x20

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v13, Lpwl;->h:Ltqx;

    nop
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Lpwf; {:try_start_11 .. :try_end_11} :catch_4

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_52
    iget-object v7, v1, Lqbb;->c:Ljava/lang/String;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_3c

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v14, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_15
    :try_start_12
    sget-object v14, Ltqx;->a:Ltqx;

    nop

    nop

    nop

    nop
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Lpwf; {:try_start_12 .. :try_end_12} :catch_9

    :goto_55
    :try_start_13
    iget-object v14, v14, Ltqx;->b:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    if-eqz v15, :cond_7

    nop

    nop

    nop

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Ltqw;

    nop

    nop

    nop

    nop

    nop

    iget v15, v15, Ltqw;->b:I

    nop

    nop

    if-ne v15, v4, :cond_6

    nop

    nop

    invoke-virtual {v3, v0}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v14

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v16

    nop

    nop

    nop

    nop

    cmp-long v18, v14, v16

    nop

    if-lez v18, :cond_7

    nop

    nop

    sget-object v18, Lsqp;->a:Lsqp;

    nop

    invoke-virtual/range {v18 .. v18}, Ltkg;->m()Ltkb;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v6, v8, Lpww;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Lpwf; {:try_start_13 .. :try_end_13} :catch_4

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_57
    iget v2, v0, Lpwl;->b:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const v1, 0x11

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_59
    if-eqz v5, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_16
    :try_start_14
    invoke-virtual {v4}, Ltkb;->o()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Lpwf; {:try_start_14 .. :try_end_14} :catch_9

    :goto_5a
    :try_start_15
    iget-object v5, v4, Ltkb;->b:Ltkg;

    nop

    nop
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Lpwf; {:try_start_15 .. :try_end_15} :catch_4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v2, v5, v3, v4}, Lqdd;->d(Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lqdd;

    move-result-object v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v5, v1, Lqbb;->l:Lhdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_5d
    if-nez v2, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_17
    goto/32 :goto_6e

    nop

    nop

    :goto_5e
    iget-object v0, v1, Lqbb;->j:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_5f
    iget v2, v1, Lqbb;->k:I

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/16 v4, 0x12

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v4, v1, Lqbb;->k:I

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-class v5, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v9, v1, Lqbb;->i:Lpwh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_64
    move-object/from16 v20, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v3, v1, Lqbb;->a:Lqaj;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_66
    move-object v3, v0

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_67
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

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

    :goto_68
    return-object v0

    nop

    nop

    nop

    :catch_9
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_45

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_15

    nop

    nop

    :catch_a
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_16
    const-string v2, "%s: Failed to apply defrag download transform for file %s."

    nop

    nop

    nop

    nop

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, v3}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object v2

    nop

    nop

    nop

    nop

    sget-object v3, Lpwe;->E:Lpwe;

    nop

    nop

    iput-object v3, v2, Ltar;->d:Ljava/lang/Object;

    nop

    iput-object v0, v2, Ltar;->c:Ljava/lang/Object;

    nop

    nop

    invoke-virtual {v2}, Ltar;->c()Lpwf;

    move-result-object v0

    nop

    throw v0

    nop

    nop

    nop

    nop
    :try_end_16
    .catch Lpwf; {:try_start_16 .. :try_end_16} :catch_9

    :cond_18
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, v1, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    iget-object v3, v3, Lpwl;->h:Ltqx;

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_19

    nop

    sget-object v3, Ltqx;->a:Ltqx;

    nop

    nop

    :cond_19
    invoke-static {v3}, Lrbc;->a(Ltqx;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    nop

    nop
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Lpwf; {:try_start_17 .. :try_end_17} :catch_9

    :try_start_18
    iget-object v7, v1, Lqbb;->d:Lqbn;

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lqbb;->l:Lhdn;

    nop

    nop

    iget-object v8, v1, Lqbb;->e:Lpww;

    nop

    nop

    iget v9, v1, Lqbb;->f:I

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v1, Lqbb;->g:J

    nop

    nop

    nop

    iget-object v12, v1, Lqbb;->h:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v13, v1, Lqbb;->b:Lpwl;

    nop

    nop

    nop
    :try_end_18
    .catch Lpwf; {:try_start_18 .. :try_end_18} :catch_9

    :try_start_19
    new-instance v14, Lras;

    nop

    nop

    nop

    nop

    invoke-direct {v14}, Lras;-><init>()V

    invoke-virtual {v3, v2, v14}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    check-cast v14, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Lpwf; {:try_start_19 .. :try_end_19} :catch_9

    :try_start_1a
    new-instance v15, Lraw;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v15}, Lraw;-><init>()V

    invoke-virtual {v3, v0, v15}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Ljava/io/OutputStream;

    nop
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    :try_start_1b
    invoke-static {v14, v15}, Lcom/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_6c
    if-nez v15, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_1a
    :try_start_1c
    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    goto/32 :goto_24

    nop

    nop

    :goto_6d
    if-nez v14, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_1b
    :try_start_1d
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_6e
    iget-object v2, v0, Lpwl;->i:Ljava/lang/String;

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final b(Lpwf;)Lsui;
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    sget-object v2, Lpwv;->f:Lpwv;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, p1, v0, v1, p0}, Lqbb;->c(Lpwv;Lpwl;ILqaj;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lqbb;->k:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-static {v2, p1, v0, v1, p0}, Lqbb;->c(Lpwv;Lpwl;ILqaj;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lpwe;->B:Lpwe;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Lpwf;->a:Lpwe;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lqbb;->b:Lpwl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lqbb;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lqbb;->a:Lqaj;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    :goto_10
    sget v0, Lqbq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget v0, p0, Lqbb;->k:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lqbb;->j:Ljava/util/concurrent/Executor;

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

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    sget-object v2, Lpwv;->d:Lpwv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lqbb;->a:Lqaj;

    nop

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

    :goto_1b
    invoke-virtual {p1, v0}, Lpwe;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x7

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
.end method
