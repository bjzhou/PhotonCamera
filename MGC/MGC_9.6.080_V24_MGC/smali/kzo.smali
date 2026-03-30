.class public final synthetic Lkzo;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


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

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lkzo;->a:I

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_70

    nop

    nop

    :goto_0
    iget p0, p1, Lljc;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lmbq;->b()F

    move-result p0

    nop

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

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_0
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5
    iget p0, p1, Lljg;->b:I

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p1, Ljrz;->c:Lj$/util/Optional;

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

    :goto_8
    invoke-virtual {p1}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_d
    iget-object p0, p1, Llje;->b:Lljd;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_11
    check-cast p1, Llje;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1
        :pswitch_e
        :pswitch_10
        :pswitch_8
        :pswitch_0
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_11
        :pswitch_2
        :pswitch_c
        :pswitch_12
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_7
    .end packed-switch

    :goto_14
    goto/32 :goto_4b

    nop

    nop

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p1, Ljrz;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_18
    sget-object p0, Lnne;->g:Lnne;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    iget-boolean p0, p1, Llja;->a:Z

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, La;->aD(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lljc;

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

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_20
    iget-boolean p0, p1, Lljg;->a:Z

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-wide p0, p1, Llja;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_23
    const-string v0, "milk"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_24
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_25
    invoke-direct {p0, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_28
    iget p1, p1, Lljd;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_29
    check-cast p1, Lljg;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    check-cast p1, Ljrz;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_32

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lj$/util/Optional;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_30
    iget p0, p0, Lkzo;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    check-cast p1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_35
    new-array v2, v2, [F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Lljd;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p0, Lljd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3a
    move v0, v1

    nop

    :goto_3b
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    aput p0, v2, v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_3d
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3e
    check-cast p1, Llja;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_40
    if-nez p0, :cond_2

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p1, Lfdn;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p1, Ljrz;->a:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p1}, Lmbq;->a()F

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_45
    goto/16 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-object p0

    nop

    :pswitch_a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p1, Llje;->a:Lljd;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_49
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

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

    :goto_4a
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_4b
    goto/32 :goto_1e

    nop

    :goto_4c
    return-object p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_3b

    nop

    :goto_4e
    goto/32 :goto_3a

    nop

    nop

    :goto_4f
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_51
    iget-object p0, p1, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_53
    check-cast p1, Lmbq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_54
    iget p0, p0, Lljd;->d:F

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Lj$/util/Optional;->isPresent()Z

    move-result p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_56
    check-cast p1, Llja;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_57
    check-cast p1, Lmbq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast p1, Ljrz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return-object p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-object v2

    nop

    nop

    :pswitch_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_5d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5e
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_2a

    nop

    nop

    :goto_5f
    invoke-static {p1}, La;->aD(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_60
    check-cast p1, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_62
    check-cast p1, Lljg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p0, p1, Ljrz;->e:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_64
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_65
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

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

    :goto_66
    const v1, 0x16

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aput p1, v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_68
    return-object p0

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_57

    nop

    nop

    :goto_69
    check-cast p1, Llje;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_6b
    move v0, v1

    nop

    :goto_6c
    goto/32 :goto_15

    nop

    nop

    :goto_6d
    return-object p0

    nop

    :pswitch_11
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_6e
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast p1, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_70
    const v0, 0x3

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    sget-object v2, Lkzu;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_74
    iget-object p0, p1, Ljrz;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_75
    return-object p0

    nop

    nop

    :pswitch_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0}, Lj$/util/Optional;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_77
    iget-object p0, p1, Ljrz;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_71

    nop

    nop
.end method
