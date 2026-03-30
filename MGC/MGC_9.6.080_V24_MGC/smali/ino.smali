.class final Lino;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkqg;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/googlex/gcam/ShotMetadata;

.field final synthetic c:I

.field final synthetic d:Llxa;

.field final synthetic e:Lins;

.field final synthetic f:Lnar;


# direct methods
.method public constructor <init>(Lins;Lnar;ZLcom/google/googlex/gcam/ShotMetadata;ILlxa;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput p5, p0, Lino;->c:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lino;->f:Lnar;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p3, p0, Lino;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lino;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lino;->e:Lins;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p6, p0, Lino;->d:Llxa;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 14

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v11, Lsuu;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v4, p0, Lino;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {v0 .. v10}, Linq;-><init>(Lins;Lnar;Lsuu;ZLcom/google/googlex/gcam/ShotMetadata;IJLrss;Lgii;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    move-object v1, v13

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v0, v12

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v5, p0, Lino;->b:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    iget-object p0, p0, Lino;->d:Llxa;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    return-object v11

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Llxa;->e()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v12, Linq;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0}, Llxa;->f()Lgii;

    move-result-object v10

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0}, Llxa;->n()Lrss;

    move-result-object v9

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
    iget-object v2, p0, Lino;->f:Lnar;

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

    :goto_15
    goto/32 :goto_4

    nop

    :goto_16
    iget v6, p0, Lino;->c:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v11}, Lsuu;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    iget-object v13, p0, Lino;->e:Lins;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v3, v11

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, v13, Lins;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "RGB image couldn\'t be encoded into jpeg."

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    new-instance p0, Lpfi;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lpfi;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
