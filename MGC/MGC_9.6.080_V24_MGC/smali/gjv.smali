.class public final synthetic Lgjv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic a:Lgjw;

.field public final synthetic b:Lkvt;


# direct methods
.method public synthetic constructor <init>(Lgjw;Lkvt;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgjv;->a:Lgjw;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p2, p0, Lgjv;->b:Lkvt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgjw;->d:Loyn;

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

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    const v0, 0x13

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    iget-object v1, p0, Lgjw;->f:Loyn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, v2, p1}, Lgjw;->z(Lkvu;Llyi;Ljrz;Z)Z

    move-result p1

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

    :goto_a
    check-cast v2, Ljrz;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lkvu;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Loyu;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_d
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    iget-object p0, p0, Lgjv;->a:Lgjw;

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

    :goto_f
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    :goto_11
    iget-object v0, p0, Lgjv;->b:Lkvt;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    iget-object v2, p0, Lgjw;->m:Loyd;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Llyi;

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
    const v1, 0x5

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    nop

    nop
.end method
