.class public final Lnfu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;

.field private final c:Ltxm;

.field private final d:Ltxm;

.field private final e:Ltxm;

.field private final f:Ltxm;

.field private final g:Ltxm;

.field private final h:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p8, p0, Lnfu;->h:Ltxm;

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
    iput-object p1, p0, Lnfu;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p6, p0, Lnfu;->f:Ltxm;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p5, p0, Lnfu;->e:Ltxm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p7, p0, Lnfu;->g:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lnfu;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lnfu;->b:Ltxm;

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

    :goto_9
    iput-object p4, p0, Lnfu;->d:Ltxm;

    nop

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

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p0}, Lnfu;->b()Lnft;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()Lnft;
    .locals 10

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iget-object v0, p0, Lnfu;->c:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_9
    move-object v4, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lnfu;->f:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    check-cast v7, Lggv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnfu;->g:Ltxm;

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

    :goto_d
    invoke-virtual {v0}, Lixm;->b()Landroid/content/Intent;

    move-result-object v8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    check-cast p0, Liyb;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    :goto_11
    invoke-direct/range {v1 .. v9}, Lnft;-><init>(Lowu;Landroid/view/Window;Ljdc;Lfdo;Ljava/util/concurrent/ScheduledExecutorService;Lggv;Landroid/content/Intent;Landroid/os/PowerManager;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lnfu;->d:Ltxm;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

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

    :goto_16
    move-object v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_17
    check-cast v4, Ljdc;

    nop

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

    :goto_18
    iget-object v0, p0, Lnfu;->a:Ltxm;

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

    :goto_19
    const v0, 0x15

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

    :goto_1a
    move-object v5, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lixj;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnfu;->e:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lnfu;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Liyb;->b()Landroid/os/PowerManager;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v5, Lfdo;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23
    check-cast v2, Lowu;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance p0, Lnft;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Lixj;->b()Landroid/view/Window;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lnfu;->h:Ltxm;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_28
    check-cast v0, Lixm;

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

    nop

    :goto_29
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop
.end method
