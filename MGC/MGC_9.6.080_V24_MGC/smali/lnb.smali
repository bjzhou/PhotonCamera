.class public final synthetic Llnb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field public final synthetic a:Loyd;

.field public final synthetic b:Loyn;

.field public final synthetic c:Loyn;

.field public final synthetic d:Loyd;

.field public final synthetic e:Loyn;

.field public final synthetic f:Lfwv;


# direct methods
.method public synthetic constructor <init>(Lfwv;Loyd;Loyn;Loyn;Loyd;Loyn;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p4, p0, Llnb;->c:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llnb;->f:Lfwv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Llnb;->b:Loyn;

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

    :goto_5
    iput-object p2, p0, Llnb;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Llnb;->e:Loyn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Llnb;->d:Loyd;

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Llnb;->f:Lfwv;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_3
    iget-object p0, p0, Llnb;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aput-object v4, v2, v0

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

    :goto_5
    invoke-interface {v0, v2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, p0, Llnb;->d:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aput-object v0, v2, v3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Llnb;->c:Loyn;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    new-instance v2, Llmy;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    invoke-static {v2}, Loyi;->a([Loyd;)Loyd;

    move-result-object v0

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

    :goto_c
    invoke-direct {v2, p0, v3}, Llmy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    :goto_f
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Llnb;->a:Loyd;

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

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Lfwv;->i()Lows;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v3, p0, Llnb;->b:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    aput-object v3, v2, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aput-object v0, v2, v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v2, v2, [Loyd;

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

    :goto_1d
    sget-object p0, Lstd;->a:Lstd;

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

    :goto_1e
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method
