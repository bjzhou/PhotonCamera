.class public final synthetic Lfxt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field public final synthetic a:Lsuu;

.field public final synthetic b:Ltxm;

.field public final synthetic c:Ltxm;

.field public final synthetic d:Lfwv;


# direct methods
.method public synthetic constructor <init>(Lsuu;Ltxm;Lfwv;Ltxm;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfxt;->a:Lsuu;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfxt;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p4, p0, Lfxt;->c:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lfxt;->d:Lfwv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Lfxp;

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

    :goto_2
    goto/32 :goto_17

    nop

    nop

    :goto_3
    const/16 v3, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lfxt;->a:Lsuu;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_9
    new-instance v2, Lfut;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lfxp;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    invoke-direct {v2, v0, v3}, Lfut;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-virtual {v2, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Loyd;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

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

    :goto_16
    goto/32 :goto_d

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lfxt;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lfwv;->i()Lows;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lfxt;->d:Lfwv;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lfxt;->b:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1, v2, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
