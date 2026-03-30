.class public final Leaj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Leau;


# instance fields
.field private final a:Leai;

.field private final b:Leau;


# direct methods
.method public constructor <init>(Leai;Leau;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Leaj;->a:Leai;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Leaj;->b:Leau;

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

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Leaw;Leap;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_e

    nop

    nop

    :pswitch_0
    goto/32 :goto_1b

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

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

    :goto_2
    invoke-interface {v0, p1}, Leai;->onDestroy(Leaw;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Leap;->ordinal()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p1, "ON_ANY must not been send by anybody"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Leaj;->a:Leai;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Leaj;->a:Leai;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Leaj;->b:Leau;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p1}, Leai;->onStart(Leaw;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_e

    nop

    nop

    :pswitch_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_e

    nop

    nop

    :pswitch_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, p1}, Leai;->onCreate(Leaw;)V

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1, p2}, Leau;->a(Leaw;Leap;)V

    :goto_10
    goto/32 :goto_19

    nop

    nop

    :goto_11
    invoke-interface {v0, p1}, Leai;->onPause(Leaw;)V

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-interface {v0, p1}, Leai;->onStop(Leaw;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_e

    nop

    nop

    :pswitch_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, p1}, Leai;->onResume(Leaw;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Leaj;->a:Leai;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Leaj;->a:Leai;

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

    :goto_18
    goto :goto_e

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :goto_1a
    goto/16 :goto_e

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    iget-object v0, p0, Leaj;->a:Leai;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Leaj;->a:Leai;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method
