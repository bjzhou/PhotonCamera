.class public final synthetic Lrqy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput p1, p0, Lrqy;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lszr;->close()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lszq;->close()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lszp;->close()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ljava/lang/Runnable;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :pswitch_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lszx;->close()V

    goto/32 :goto_f

    nop

    nop

    :goto_a
    check-cast p1, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    check-cast p1, Lszp;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p0, Lrqy;->a:I

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :pswitch_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :pswitch_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :pswitch_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Lcom/google/ar/core/Anchor;->detach()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_1e

    nop

    nop

    :goto_17
    return-void

    nop

    :pswitch_8
    goto/32 :goto_22

    nop

    nop

    :goto_18
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_1

    nop

    nop

    :goto_1b
    check-cast p1, Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lszx;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_5
    .end packed-switch

    :goto_1e
    check-cast p1, Llto;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lszr;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :pswitch_a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p1, Llto;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p1, Lcom/google/ar/core/Anchor;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Lszq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_2

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lrqy;->a:I

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_13

    nop

    nop

    :goto_4
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_d

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

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

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_8
    .end packed-switch

    :goto_12
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    :pswitch_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_19
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
