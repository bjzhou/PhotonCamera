.class public final Lpjf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;


# instance fields
.field public b:Z

.field public c:Z

.field public d:Z

.field public e:I

.field private final f:Lpih;

.field private final g:Lpkl;

.field private final h:Lpjd;

.field private final i:Lpiy;

.field private final j:Lows;

.field private final k:Lpdf;

.field private final l:Lpcu;

.field private final m:Lrss;

.field private n:Ljava/util/Set;

.field private final o:Lpjy;

.field private final p:Lpqm;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Ljava/util/Set;)V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string v3, "Failed to submit "

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

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const v0, 0x16

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1, v2}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lpir;->g()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lpir;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lpjf;->l:Lpcu;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_14

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_19
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lpjf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrbh;Lpln;Landroidx/wear/ambient/AmbientDelegate;Lpiy;Lpkl;Lpjd;Lpih;Lpqm;Lows;Lpdf;Lpcu;Lrss;Lpqm;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p7, p0, Lpjf;->f:Lpih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p5, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p7, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lpke;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p13, p5}, Lpqm;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p7, Lpam;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    iput-object p6, p0, Lpjf;->h:Lpjd;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const-string p0, "Session closed listener was set multiple times!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    iput-object p8, p0, Lpjf;->p:Lpqm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-direct {p7, p0, p8}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p5, p0, Lpjf;->g:Lpkl;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 p8, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_12
    iput-object p4, p0, Lpjf;->i:Lpiy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    const-string p5, "RequestQueue"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lpje;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    invoke-static {v0, p0}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1, p0, v0}, Lpke;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x2

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

    nop

    nop

    :goto_18
    invoke-virtual {p1, p5}, Lrbh;->c(Ljava/lang/Runnable;)Lpci;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p10, p0, Lpjf;->k:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    iput-object p5, p0, Lpjf;->l:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p6, Lpjd;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p12, p0, Lpjf;->m:Lrss;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_1e
    invoke-direct {v1, p0}, Lpje;-><init>(Lpjf;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p6, Lpjd;->a:Ljava/lang/Runnable;

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

    :goto_20
    iput-object p9, p0, Lpjf;->j:Lows;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p4, p7}, Lpiy;->d(Ljava/lang/Runnable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_26

    nop

    nop

    :goto_23
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_25
    invoke-interface {p11, p5}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p5

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p5, p0, Lpjf;->n:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    invoke-direct {p5, p0, p7}, Lpam;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_28
    iput-object v1, p0, Lpjf;->o:Lpjy;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p3, p5}, Landroidx/wear/ambient/AmbientDelegate;->M(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    invoke-virtual {p9, p1}, Lows;->d(Lpci;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2, p5}, Lpln;->b(Ljava/lang/Runnable;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance p5, Lpam;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_32
    iput v0, p0, Lpjf;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_33
    goto/16 :goto_d

    nop

    nop

    :goto_34
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a()V
    .locals 19

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-nez v6, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    invoke-interface {v4}, Lpjy;->b()V

    :goto_4
    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    const v0, 0x12

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

    nop

    :goto_8
    monitor-enter v2

    nop

    :try_start_1
    iget-boolean v1, v0, Lpjf;->d:Z

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    iput-boolean v8, v0, Lpjf;->b:Z

    nop

    nop

    nop

    nop

    iput-boolean v8, v0, Lpjf;->c:Z

    nop

    nop

    nop

    move v6, v8

    nop

    nop

    :cond_2
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lpjf;->k:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_2
    monitor-exit v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-enter v1

    nop

    nop

    nop

    :try_start_4
    sget-object v2, Lpjf;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v3, v0, Lpjf;->j:Lows;

    nop

    invoke-virtual {v3}, Lows;->b()Z

    move-result v3

    nop

    if-nez v3, :cond_c

    nop

    nop

    nop

    iget-object v3, v0, Lpjf;->p:Lpqm;

    nop

    nop

    iget-object v4, v0, Lpjf;->f:Lpih;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lpqm;->g(Lpih;)Z

    move-result v3

    nop

    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    iget v3, v0, Lpjf;->e:I

    nop

    nop

    const/4 v4, 0x2

    nop

    if-eq v3, v4, :cond_c

    nop

    nop

    nop

    nop

    const/4 v5, 0x3

    nop

    nop

    if-ne v3, v5, :cond_3

    nop

    nop

    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    iput v4, v0, Lpjf;->e:I

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v3, v0, Lpjf;->l:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "RequestQueue startCamera"

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v3, v0, Lpjf;->k:Lpdf;

    nop

    nop

    const-string v6, "RequestQueue startCamera"

    nop

    nop

    nop

    invoke-interface {v3, v6}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, v0, Lpjf;->m:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    const/4 v7, 0x0

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_7

    nop

    iget-object v3, v0, Lpjf;->m:Lrss;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lplv;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lplv;->a:Lum;

    nop

    nop

    nop

    nop

    iget-object v9, v3, Lum;->c:Luen;

    nop

    invoke-virtual {v9}, Luen;->b()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-nez v9, :cond_6

    nop

    nop

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-string v9, "#start"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    nop

    nop

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    invoke-static {v9}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v9, v3, Lum;->a:Lur;

    nop

    invoke-interface {v9}, Lur;->b()V

    iget-object v9, v3, Lum;->f:Lhwy;

    nop

    nop

    nop

    iget-object v10, v3, Lum;->g:Lhwy;

    nop

    nop

    iget-object v3, v3, Lum;->e:Lrn;

    nop

    nop

    nop

    nop

    iget-object v11, v9, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    monitor-enter v11

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v12, v9, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v13, Lon;

    nop

    nop

    invoke-direct {v13}, Lon;-><init>()V

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_4

    nop

    nop

    iget-object v4, v9, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v5, Lon;

    nop

    nop

    nop

    invoke-direct {v5}, Lon;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    nop

    :cond_4
    iget-object v12, v9, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    new-instance v13, Lon;

    nop

    nop

    invoke-direct {v13}, Lon;-><init>()V

    new-array v14, v8, [Lrn;

    nop

    nop

    aput-object v3, v14, v6

    nop

    nop

    nop

    nop

    new-instance v15, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8}, Lrkm;->R(I)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v15, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v14, v15}, Lrkm;->bp([Ljava/lang/Object;Ljava/util/Collection;)V

    invoke-interface {v12, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v9, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    new-instance v12, Lon;

    nop

    nop

    invoke-direct {v12}, Lon;-><init>()V

    iget-object v13, v9, Lhwy;->e:Ljava/lang/Object;

    nop

    new-instance v14, Ltq;

    nop

    nop

    nop

    nop

    invoke-direct {v14, v10, v9, v7, v4}, Ltq;-><init>(Lhwy;Lhwy;Ltzy;I)V

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v7, v6, v14, v4}, Lucd;->x(Lufs;Luad;ILubo;I)Lugy;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v5, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_11
    invoke-virtual {v3}, Lrn;->b()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v11

    nop

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v11

    nop

    nop

    throw v0

    nop

    nop

    nop

    nop

    :cond_6
    const-string v0, "Cannot start "

    nop

    nop

    nop

    nop

    nop

    const-string v2, " after calling close()"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v0, v2}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    new-instance v2, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :cond_7
    iget-object v3, v0, Lpjf;->g:Lpkl;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lpkl;->e:Lows;

    nop

    nop

    nop

    invoke-virtual {v5}, Lows;->b()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_9

    nop

    nop

    iget-object v5, v3, Lpkl;->k:Lpkk;

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lpkk;->a:Lows;

    nop

    nop

    invoke-virtual {v5}, Lows;->b()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    :cond_8
    new-instance v5, Lows;

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Lows;-><init>()V

    iget-object v9, v3, Lpkl;->e:Lows;

    nop

    nop

    new-instance v10, Lngp;

    nop

    const/16 v11, 0xd

    nop

    invoke-direct {v10, v3, v5, v11, v7}, Lngp;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-virtual {v9, v10}, Lows;->d(Lpci;)V

    new-instance v7, Lpkk;

    nop

    nop

    nop

    iget-object v9, v3, Lpkl;->a:Lpgn;

    nop

    iget-object v13, v9, Lpgn;->a:Lpnx;

    nop

    nop

    nop

    nop

    iget-object v9, v3, Lpkl;->h:Lplc;

    nop

    iget-object v10, v3, Lpkl;->i:Landroid/os/Handler;

    nop

    nop

    invoke-virtual {v3, v9, v10}, Lpkl;->a(Lplc;Landroid/os/Handler;)Lpko;

    move-result-object v14

    nop

    iget-object v15, v3, Lpkl;->c:Lpkn;

    nop

    iget-object v9, v3, Lpkl;->i:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    iget-object v10, v3, Lpkl;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v3, Lpkl;->g:Lpcu;

    nop

    nop

    nop

    move-object v12, v7

    nop

    nop

    nop

    move-object/from16 v16, v9

    nop

    nop

    nop

    nop

    move-object/from16 v17, v10

    nop

    nop

    nop

    nop

    move-object/from16 v18, v11

    nop

    nop

    nop

    nop

    invoke-direct/range {v12 .. v18}, Lpkk;-><init>(Lpnx;Lpko;Lpkn;Landroid/os/Handler;Lpdf;Lpcu;)V

    iget-object v9, v3, Lpkl;->j:Lpjs;

    nop

    nop

    nop

    invoke-static {v7, v9}, Lryb;->m(Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v9

    nop

    new-instance v10, Lpdy;

    nop

    nop

    invoke-static {v9}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v9

    nop

    invoke-direct {v10, v9}, Lpdy;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v7}, Lows;->d(Lpci;)V

    iget-object v9, v7, Lpkk;->a:Lows;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v5}, Lows;->d(Lpci;)V

    new-instance v9, Lpke;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v9, v3, v4}, Lpke;-><init>(Ljava/lang/Object;I)V

    iget-object v4, v3, Lpkl;->d:Lpln;

    nop

    nop

    nop

    invoke-virtual {v4, v9}, Lpln;->b(Ljava/lang/Runnable;)V

    new-instance v4, Lngp;

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0xe

    nop

    nop

    invoke-direct {v4, v3, v9, v11}, Lngp;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v5, v4}, Lows;->d(Lpci;)V

    iget-object v4, v3, Lpkl;->g:Lpcu;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lpkl;->a:Lpgn;

    nop

    nop

    iget-object v5, v5, Lpgn;->a:Lpnx;

    nop

    nop

    nop

    iget-object v5, v5, Lpnx;->a:Ljava/lang/String;

    nop

    const-string v9, "Starting Camera "

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    invoke-interface {v4, v5}, Lpcu;->f(Ljava/lang/String;)V

    iget-object v4, v3, Lpkl;->b:Lpea;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lpkl;->a:Lpgn;

    nop

    nop

    iget-object v5, v5, Lpgn;->a:Lpnx;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5, v10}, Lpea;->c(Lpnx;Lpdz;)V

    iput-object v7, v3, Lpkl;->k:Lpkk;

    nop

    nop

    nop

    iget-object v3, v3, Lpkl;->h:Lplc;

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :goto_12
    iget-object v3, v3, Lpkl;->h:Lplc;

    nop

    nop

    :goto_13
    iget-object v4, v0, Lpjf;->o:Lpjy;

    nop

    nop

    monitor-enter v3

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-boolean v5, v3, Lplc;->g:Z

    nop

    nop

    if-eqz v5, :cond_a

    nop

    monitor-exit v3

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_a
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v3, Lplc;->e:Lpjy;

    nop

    iget-object v5, v3, Lplc;->c:Lpjv;

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lpjf;->b()V

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, v0, Lpjf;->p:Lpqm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_18
    return-void

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_a
    monitor-exit v2

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_b
    goto/32 :goto_1

    nop

    :goto_1a
    throw v0

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

    :try_start_b
    monitor-exit v3

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_c
    :goto_1b
    :try_start_d
    monitor-exit v2

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    monitor-exit v1

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/32 :goto_f

    nop

    nop
.end method

.method public final b()V
    .locals 13

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_0
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-direct {p0, v6}, Lpjf;->33f5b80483094659737b73d90f80a8a4m(Ljava/util/Set;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    :goto_4
    invoke-interface {v2, v4, v1}, Lpcu;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    nop

    nop

    :cond_0
    :goto_6
    :try_start_0
    invoke-virtual {v2}, Lpjb;->close()V
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, p0, Lpjf;->l:Lpcu;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lpjb;->n()Lqgk;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lqgk;->b()Lphz;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lphz;->a()Ljava/util/Set;

    move-result-object v7

    nop

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_c

    nop

    nop

    nop

    monitor-enter v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v7, p0, Lpjf;->n:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lphz;->a()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v8}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_2

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lpjf;->l:Lpcu;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    invoke-virtual {v1}, Lphz;->a()Ljava/util/Set;

    move-result-object v9

    nop

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set repeating request to "

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " with "

    nop

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lpcu;->f(Ljava/lang/String;)V

    invoke-virtual {v1}, Lphz;->a()Ljava/util/Set;

    move-result-object v7

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object v7

    nop

    nop

    iput-object v7, p0, Lpjf;->n:Ljava/util/Set;

    nop

    nop

    nop

    :cond_2
    monitor-exit v3

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2, v1}, Lpjb;->h(Lphz;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_13

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    throw v1

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

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

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_22

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    monitor-enter v3

    nop

    :try_start_5
    iget-object v4, p0, Lpjf;->m:Lrss;

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_4

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    iget-boolean v1, p0, Lpjf;->d:Z

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    monitor-exit v3

    nop

    nop

    return-void

    nop

    :cond_4
    iget-boolean v1, p0, Lpjf;->b:Z

    nop

    nop

    nop

    iget-boolean v4, p0, Lpjf;->c:Z

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    iput-boolean v5, p0, Lpjf;->d:Z

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    return-void

    nop

    nop

    :cond_5
    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_6

    nop

    nop

    iput-boolean v5, p0, Lpjf;->d:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_6
    iget-object v2, p0, Lpjf;->h:Lpjd;

    nop

    nop

    nop

    invoke-virtual {v2}, Lpjd;->b()Lpjb;

    move-result-object v2

    nop

    nop

    nop

    if-nez v2, :cond_7

    nop

    nop

    iput-boolean v5, p0, Lpjf;->d:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_7
    iput-boolean v5, p0, Lpjf;->b:Z

    nop

    nop

    nop

    nop

    nop

    iput-boolean v5, p0, Lpjf;->c:Z

    nop

    nop

    nop

    iput-boolean v0, p0, Lpjf;->d:Z

    nop

    monitor-exit v3

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move v3, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_6
    monitor-exit v3

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    move v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    move v1, v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xe

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move v2, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_19
    if-nez v4, :cond_8

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :try_start_8
    iget-object v3, p0, Lpjf;->i:Lpiy;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpiy;->b()Ljava/util/Set;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    move-object v6, v3

    nop

    nop

    :goto_1a
    if-eqz v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lpjb;->n()Lqgk;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    if-eqz v7, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lpir;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lpir;->a:Lpgo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7}, Lqgk;->c(Lpgo;)V

    goto :goto_1b

    nop

    nop

    nop

    :cond_9
    invoke-virtual {v3}, Lqgk;->b()Lphz;

    move-result-object v3

    nop

    invoke-virtual {v3}, Lphz;->a()Ljava/util/Set;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_a

    nop

    nop

    nop

    nop

    invoke-direct {p0, v6}, Lpjf;->33f5b80483094659737b73d90f80a8a4m(Ljava/util/Set;)V

    goto :goto_1c

    nop

    nop

    nop

    :cond_a
    iget-object v4, p0, Lpjf;->l:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    invoke-virtual {v3}, Lphz;->a()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Submitting "

    nop

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " with "

    nop

    nop

    nop

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-interface {v4, v7}, Lpcu;->f(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v6}, Lpjb;->i(Lphz;Ljava/util/Set;)V

    move v1, v0

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, p0, Lpjf;->i:Lpiy;

    nop

    nop

    invoke-virtual {v3}, Lpiy;->b()Ljava/util/Set;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v3

    nop

    nop

    nop

    move-object v12, v3

    nop

    nop

    move v3, v1

    nop

    move-object v1, v12

    nop

    nop

    goto :goto_27

    nop

    nop

    nop

    nop

    :cond_b
    :goto_1d
    if-eqz v1, :cond_0

    nop

    nop

    nop

    invoke-virtual {p0}, Lpjf;->a()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    move v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    move v1, v5

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_25
    goto/16 :goto_16

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_9
    monitor-exit v3

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    :try_start_a
    invoke-virtual {v2}, Lpjb;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    move v2, v3

    nop

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    move v1, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2c
    sget-object v3, Lpjf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2d
    const-string v4, "Unable to invoke setRepeating, requestProcessor is unavailable"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_27

    nop

    :cond_c
    :goto_2f
    goto/32 :goto_1f

    nop

    nop

    :goto_30
    goto :goto_29

    nop

    nop

    :catch_1
    move-exception v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method
