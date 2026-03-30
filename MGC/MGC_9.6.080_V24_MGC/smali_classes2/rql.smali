.class public final Lrql;
.super Lrni;
.source "PG"


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lqxm;


# direct methods
.method public constructor <init>(Lqxm;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lrql;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_2
    iput-object p1, p0, Lrql;->b:Lqxm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lrni;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 3

    goto/32 :goto_4a

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_1
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrql;->b:Lqxm;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

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

    :goto_5
    sget-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->CXx:Ljava/lang/String;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lrql;->b:Lqxm;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    const-string v0, "Unexpected REQUIRES_UI_INTENT install status without an intent."

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p0}, Lrqh;->g(Landroid/app/Activity;Lrqf;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p1, Lrqg;->c:Lrqg;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d
    check-cast p1, Landroid/app/Activity;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lrqf;->a(Lrqg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    :goto_10
    goto/32 :goto_23

    nop

    nop

    :goto_11
    iget-object v0, p0, Lrql;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p1, 0xa

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lrqf;->a(Lrqg;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p1, Lrqg;->a:Lrqg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_15
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    :goto_17
    const/4 v2, 0x4

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_18
    iget-object v0, p0, Lqxm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    const-string v0, "ARCore-InstallService"

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lrql;->b:Lqxm;

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

    :goto_1e
    sget-object p1, Lrqg;->b:Lrqg;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    const-string v1, ", launching fullscreen."

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_20
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_22
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    const-string v0, "error.code"

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_24
    check-cast p0, Lrqf;

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_25
    iget-object p0, p0, Lrql;->b:Lqxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Lrqf;->b(Ljava/lang/Exception;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_2b
    const-string p1, "requestInstall = "

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2c
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, p1}, Lrqf;->b(Ljava/lang/Exception;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p0, Lrqf;

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

    :goto_2f
    const-string v0, "Unexpected install status: "

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_30
    const/16 v1, -0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lrqf;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lrql;->b:Lqxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_34
    invoke-static {v0, p1, p0}, Lrqh;->i(Landroid/app/Activity;Landroid/os/Bundle;Lrqf;)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_35
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v1, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_39
    check-cast p0, Lrqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3b
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

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

    :goto_3d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

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

    :goto_40
    iget-object p0, p0, Lrql;->b:Lqxm;

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

    :goto_41
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v0, p1, v1}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_43
    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lrql;->b:Lqxm;

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

    :goto_45
    invoke-virtual {p0, p1}, Lrqf;->a(Lrqg;)V

    goto/32 :goto_4d

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_47
    iget-object p1, p0, Lqxm;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_4a
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-direct {p1, v0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lqxm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4f
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_50
    sget-object p1, Lrqg;->c:Lrqg;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    sget-object v1, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/qcMkh;->VgPDDu:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_16

    nop

    nop

    :goto_53
    if-ne v1, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_5
    packed-switch v1, :pswitch_data_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Lrql;->b:Lqxm;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_55
    const-string v0, "Unexpected FAILED install status without error."

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_56
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_57
    check-cast p0, Lrqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0, p1}, Lrqf;->a(Lrqg;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast p0, Lrqf;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance p1, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_5c
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_5d
    check-cast p0, Lrqf;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0, p1}, Lrqf;->b(Ljava/lang/Exception;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Lrql;->b:Lqxm;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_63
    return-void

    nop

    :goto_64
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast p0, Lrqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_66
    check-cast p0, Lrqf;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop
.end method
