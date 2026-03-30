.class public final synthetic Ljbn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljbs;

.field public final synthetic b:Ljbq;

.field public final synthetic c:Ljay;


# direct methods
.method public synthetic constructor <init>(Ljbs;Ljbq;Ljay;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Ljbn;->c:Ljay;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljbn;->a:Ljbs;

    nop

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

    nop

    :goto_2
    iput-object p2, p0, Ljbn;->b:Ljbq;

    nop

    nop

    goto/32 :goto_0

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/util/List;

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

    nop

    :goto_1
    invoke-direct {v1, p1, p0, v2}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lgbt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    iget-object v2, p0, Ljbn;->b:Ljbq;

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

    nop

    :goto_4
    iget-object v0, v0, Ljbs;->t:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ljbn;->a:Ljbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljbn;->c:Ljay;

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

    nop

    :goto_f
    const v1, 0x17

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

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_13
    iget-object v1, v0, Lfdo;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const/16 v2, 0x12

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    :goto_17
    goto/32 :goto_18

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop
.end method
