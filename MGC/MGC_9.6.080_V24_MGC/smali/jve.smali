.class public final Ljve;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljvw;


# instance fields
.field public final a:Ljvk;

.field public final b:Ljvw;

.field final synthetic c:Llxm;

.field final synthetic d:J

.field final synthetic e:Lsuu;

.field final synthetic f:Llxa;

.field final synthetic g:Ljvk;


# direct methods
.method public constructor <init>(Ljvk;Llxm;JLsuu;Llxa;)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljve;->a:Ljvk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p3, p4, v0}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object p3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p5, p2, p3, p1}, Ljvp;-><init>(Llxm;Ljava/lang/Long;Loyn;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Ljve;->f:Llxa;

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

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Ljvk;->s:Loyn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p6, p3}, Lj$/util/concurrent/DesugarTimeUnit;->convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J

    move-result-wide p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    sget-object v0, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

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

    :goto_a
    iput-wide p3, p0, Ljve;->d:J

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

    :goto_b
    new-instance p5, Ljvp;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    iput-object p1, p0, Ljve;->g:Ljvk;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iput-object p5, p0, Ljve;->b:Ljvw;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    sget-object p6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p2, p0, Ljve;->c:Llxm;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p5, p0, Ljve;->e:Lsuu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Ljvd;-><init>(Ljve;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lstd;->a:Lstd;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

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

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    new-instance v0, Ljvd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ljve;->e:Lsuu;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v0, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lmla;Llxc;Lrss;JLmjn;)Lsui;
    .locals 16

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    move-object v8, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v10, p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    new-instance v0, Ljvc;

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

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    move-object/from16 v3, p2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const/4 v6, 0x1

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    move-wide/from16 v13, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    invoke-direct/range {v0 .. v6}, Lpyr;-><init>(Ljve;Lmla;Llxc;Lrss;Lmjn;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct/range {v8 .. v15}, Ljvc;-><init>(Ljve;Lmla;Llxc;Lrss;JLmjn;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    move-object v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    move-object/from16 v11, p2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v4, p3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v1, Ljve;->e:Lsuu;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v9, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, v7, v0}, Ljvk;->b(Lsui;Lssx;Lssx;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    move-object/from16 v15, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1c

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1a
    new-instance v7, Lpyr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v12, p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v5, p6

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final c(Lmla;Ljava/io/InputStream;Llxc;Lrss;JLjava/lang/String;Lmjn;)Lsui;
    .locals 19

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v12, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    move-object v9, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2
    move-object/from16 v14, p4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v8, Lpyq;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    move-object/from16 v6, p8

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v5, p4

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

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    move-object v0, v8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_c
    move-object/from16 v1, p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, v1, Ljve;->e:Lsuu;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    invoke-static {v1, v8, v0}, Ljvk;->b(Lsui;Lssx;Lssx;)Lsui;

    move-result-object v0

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

    :goto_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    move-object/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v2, p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v13, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    move-object/from16 v18, p8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v3, p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct/range {v9 .. v18}, Ljvb;-><init>(Ljve;Lmla;Ljava/io/InputStream;Llxc;Lrss;JLjava/lang/String;Lmjn;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    invoke-direct/range {v0 .. v7}, Lpyq;-><init>(Ljve;Lmla;Ljava/io/InputStream;Llxc;Lrss;Lmjn;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v17, p7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    move-wide/from16 v15, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v11, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v10, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljvb;

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

    nop

    :goto_20
    const/4 v7, 0x1

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
.end method
