.class public final synthetic Lkud;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Lkug;

.field public final synthetic b:Lkol;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lkug;Lkol;Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkud;->a:Lkug;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lkud;->b:Lkol;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p3, p0, Lkud;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Loyg;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1}, Lolx;->bl(Lsui;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1}, Lkuc;->a()Loyd;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lkug;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lkud;->b:Lkol;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    if-gtz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_a
    goto/16 :goto_23

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-virtual {v2}, Lkol;->a()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Loyg;

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

    nop

    nop

    :goto_14
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_1a
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lkug;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean p0, p0, Lkud;->c:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    goto :goto_23

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x10

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    :goto_23
    goto/32 :goto_10

    nop

    nop

    :goto_24
    iget-object v0, p0, Lkud;->a:Lkug;

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

    :goto_25
    check-cast v1, Lkuc;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method
