.class public final synthetic Lngq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lngq;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 1

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_17

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "First capture pose isn\'t tracking - returns empty guidance."

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

    :goto_6
    invoke-static {p0}, Landroid/os/Process;->setThreadPriority(I)V

    :pswitch_2
    goto/32 :goto_13

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    :pswitch_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    sget p0, Lngt;->i:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Span was closed by an invalid call to SpanEndSignal.run()"

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

    :goto_d
    sget-object p0, Lszn;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget p0, Lngt;->i:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    :pswitch_7
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :goto_12
    invoke-static {}, Lqvy;->e()V

    goto/32 :goto_18

    nop

    nop

    :goto_13
    return-void

    nop

    :pswitch_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    const/16 v0, 0x158f

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

    :goto_15
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget p0, p0, Lngq;->a:I

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_d

    nop

    nop

    :goto_17
    const/4 p0, -0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget p0, Lngt;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
