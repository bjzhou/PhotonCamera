.class public final synthetic Lgff;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpgg;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lgff;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lgff;->c:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lgff;->c:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, ""

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

    :goto_1
    return-object p0

    nop

    nop
.end method

.method public final d(Lpjo;)V
    .locals 9

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/ar/core/Session;->getHeldInjectedImageTimestamps()Ljava/util/List;

    move-result-object p0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lgff;->b:Ljava/lang/Object;

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

    :goto_5
    new-instance v1, Lgzj;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, v0, Lgfg;->b:Lcom/google/ar/core/Session;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v1}, Lpuq;->bF(Lpjo;Lpgv;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, v1}, Lpuq;->bA(Lpge;Ljava/lang/Runnable;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lpjo;->b()Lpgi;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v7, 0x10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p0, v0, v2}, Lgzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :pswitch_0
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, p1, v0}, Litu;-><init>(Litw;Lpge;Lpcm;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    invoke-direct {v1, p0, v0, v2}, Lgzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lpjo;->a()Lpge;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lpjo;->a()Lpge;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_18
    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_19
    iget-object v6, p0, Lgff;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    :goto_1e
    invoke-direct {v1, p0, v0, v2}, Lgzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1, v0}, Lmcc;->h(Lpjo;Lphh;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    :pswitch_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    invoke-direct/range {v3 .. v8}, Las;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_9
    .end packed-switch

    :goto_24
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v0, p0, Lgff;->c:I

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v1, Las;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_29
    iget-object v0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    return-void

    nop

    :pswitch_2
    goto/32 :goto_a

    nop

    nop

    :goto_2b
    new-instance v1, Lgzj;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p1, p0}, Lpuq;->bA(Lpge;Ljava/lang/Runnable;)V

    :goto_2f
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Lphh;

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

    :goto_32
    invoke-direct {v1, p0, v0}, Lgrm;-><init>(Lgrr;Lphh;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v1, Lgzj;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_36
    const/4 v2, 0x5

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

    :goto_37
    invoke-virtual {v0, p0}, Lgfg;->a(Ljava/util/Set;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_39
    new-instance v1, Lgzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p0, Lfdo;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_3d
    new-instance v1, Lgzj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3e
    check-cast v0, Lifx;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v0, Llgc;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {p1, v1}, Lpge;->j(Lpuq;)V

    goto/32 :goto_21

    nop

    nop

    :goto_41
    new-instance p0, Las;

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

    :goto_42
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_43
    invoke-static {p1, v1}, Lpuq;->bF(Lpjo;Lpgv;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_44
    invoke-static {p0}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p0

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_45
    check-cast p0, Lmcc;

    nop

    nop

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

    :goto_46
    move-object v5, p1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p1, v1}, Lpge;->j(Lpuq;)V

    :goto_4a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v1, p1, p0, v0}, Lifc;-><init>(Lpge;Lify;Lifx;)V

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4e
    if-eqz p1, :cond_3

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4f
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v1, p0, v0, v2}, Lgzj;-><init>(Lfdo;Llgc;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v0, Lrss;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_52
    iget-object v0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_53
    iget-object p0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_54
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    :goto_55
    invoke-direct {v1, p1, p0, v0, v2}, Las;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_57
    check-cast p0, Litw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_58
    goto/32 :goto_24

    nop

    :goto_59
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_5c
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Lpjo;->a()Lpge;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-static {p1, v1}, Lpuq;->bF(Lpjo;Lpgv;)V

    goto/32 :goto_5c

    nop

    nop

    :goto_61
    const/4 v2, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_62
    invoke-direct {v1, p0, v0, v2}, Lgzj;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_63
    iget-object v0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_64
    new-instance v1, Litu;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_65
    check-cast p0, Lgrr;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_66
    new-instance v1, Lifc;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lgff;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {p1, v1}, Lpuq;->bF(Lpjo;Lpgv;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    :pswitch_7
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v3, p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int v0, v0, v1

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

    :goto_6e
    iget-object p0, p0, Lgff;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {p1, v1}, Lpuq;->bF(Lpjo;Lpgv;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast v0, Lgfg;

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

    :goto_71
    invoke-virtual {p1}, Lpjo;->a()Lpge;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_1a

    nop

    nop

    :goto_73
    invoke-static {p1, v1}, Lpuq;->bF(Lpjo;Lpgv;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_74
    new-instance v1, Lgrm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop
.end method
