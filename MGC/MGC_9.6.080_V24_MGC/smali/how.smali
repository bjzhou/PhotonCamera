.class public final synthetic Lhow;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmiu;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhow;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lhow;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lhow;->b:I

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lhhg;->J()Lpci;

    move-result-object v0

    nop

    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lmql;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :pswitch_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_e
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1c

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

    :goto_11
    invoke-virtual {p0}, Lmhz;->B()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :pswitch_4
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

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

    :goto_17
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_8

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_22

    nop

    :goto_1a
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p0}, Lhrb;->f()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_1
    invoke-interface {v0}, Lpci;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1e

    nop

    nop

    :goto_1d
    invoke-static {v0, v1, p0}, Ljmo;->b(Lowu;Ljph;Ljpv;)V

    goto/32 :goto_23

    nop

    nop

    :goto_1e
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Lmhz;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    iget-object v1, p0, Lhor;->c:Ljov;

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

    nop

    :goto_21
    goto/32 :goto_24

    nop

    :goto_22
    goto/32 :goto_5

    nop

    nop

    :goto_23
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_26
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    const-string v0, "ShotTracker#checkForLostShots"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lmql;->b()V

    goto/32 :goto_1

    nop

    nop

    :goto_2a
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Lhor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2d
    invoke-static {p0}, Lmhz;->C(Landroid/content/Context;)V

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lhow;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lhor;->b:Lowu;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
