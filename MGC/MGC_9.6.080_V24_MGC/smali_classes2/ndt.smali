.class public final synthetic Lndt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lndt;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lndt;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpic;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p1, Lpic;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lndt;->b:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_5
    iput-object p1, p0, Lndt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 4

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_9

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

    :pswitch_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :pswitch_1
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lndt;->b:I

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/32 :goto_13

    nop

    nop

    :goto_a
    check-cast p0, Lnaq;

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

    nop

    nop

    :goto_b
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_30

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    check-cast p0, Lnvu;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_11
    new-instance v0, Ljic;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lnaq;->a()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lnvu;->s()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v3, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_46

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lpez;->f()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v2, v1, v2, v0}, Lngt;->aF(ZZZLjava/lang/Runnable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :pswitch_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lnhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x1

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0, v1}, Lngo;->K(Z)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setImportantForAccessibility(I)V

    goto/32 :goto_29

    nop

    nop

    :goto_28
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lpiv;->q()V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Lneb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :pswitch_b
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_13
        :pswitch_3
        :pswitch_d
        :pswitch_2
        :pswitch_4
        :pswitch_c
        :pswitch_6
        :pswitch_11
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_1
        :pswitch_e
        :pswitch_12
        :pswitch_a
        :pswitch_5
    .end packed-switch

    :goto_30
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    const v0, 0x15

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_34
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0, v3}, Ljic;-><init>(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v1}, Lnhz;->k(Z)V

    goto/32 :goto_3b

    nop

    nop

    :goto_38
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v2}, Lneb;->i(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_b

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    :pswitch_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3d
    check-cast p0, Lngt;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0}, Lnvu;->q()V

    goto/32 :goto_3

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Lpew;->a()V

    :pswitch_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_41
    check-cast p0, Landroid/hardware/HardwareBuffer;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p0, Lnjb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lpiy;->e()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p0, Lnvu;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_46
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lnjb;->h()V

    goto/32 :goto_6

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast p0, Lneb;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4c
    invoke-interface {p0, v2}, Lndu;->j(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast p0, Lpew;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lpiy;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v2}, Lnhz;->j(Z)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    :pswitch_11
    goto/32 :goto_19

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    :pswitch_12
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_55
    check-cast p0, Lpiv;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_31

    nop

    nop

    :goto_57
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p0, v2}, Lnvu;->S(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0, v2}, Lneb;->h(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object p0, p0, Lndt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast p0, Lpez;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method
