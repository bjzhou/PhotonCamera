.class public final synthetic Lgfs;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput p2, p0, Lgfs;->b:I

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lgnv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lgfs;->b:I

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v1, p0, Lmhf;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lgnv;->c()V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lgfy;->b:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p1, Ljava/util/List;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a(F)V

    :goto_d
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lgjy;->d()V

    goto/32 :goto_80

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lgoi;->c(Lmif;)V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_11
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_12
    invoke-interface {p0, p1}, Lpcm;->a(Ljava/lang/Object;)V

    :goto_13
    goto/32 :goto_bd

    nop

    nop

    :goto_14
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_15
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

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

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

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

    :pswitch_1
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Lgfo;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p0, :cond_2

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lkol;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_21
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lggb;->f:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lgoi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x2

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :goto_2c
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2f
    check-cast p0, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Llyh;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p0, Lgjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_62

    nop

    nop

    :goto_34
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lkol;->e:Ljava/lang/Object;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, p1, v0}, Lmxw;->i(Lmxz;Lmya;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p0, Lggb;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    :cond_5
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p0, p1}, Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;->b(Z)V

    :goto_3f
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v0, Lnne;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_41
    iget-object p1, p0, Lggb;->c:Lsrr;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v1, Lnne;->s:Lnne;

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

    :goto_45
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_d4

    nop

    nop

    :goto_49
    goto/32 :goto_d6

    nop

    nop

    :goto_4a
    if-nez p1, :cond_6

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Lgjw;->j()V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    :pswitch_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    :pswitch_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_4f
    sget-object v1, Lgfo;->f:Lgfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Lijo;->e()Loyd;

    move-result-object p1

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

    nop

    :goto_52
    sget-object v0, Llyh;->b:Llyh;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_53
    iget-object p1, p0, Lgjw;->a:Lijo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_54
    return-void

    nop

    nop

    :goto_55
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v1, Lgfw;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_58
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_59
    invoke-static {v1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p0, p0, Lgfy;->b:Loyn;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Lgjw;->k()V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_5d
    if-ne v0, v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_9
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_5e
    check-cast p1, Lkvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Lgjw;->q()V

    :goto_63
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_64
    const v0, 0x16

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p0, p0, Lgjw;->C:Lmxw;

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

    :goto_66
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_36

    nop

    :goto_67
    iget-object v0, p0, Lggb;->a:Loyn;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_68
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_69
    check-cast p1, Lmif;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Lgjw;->C:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast p1, Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast p1, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_6f
    check-cast p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_70
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_71
    check-cast p1, Ljava/util/List;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, p0, Lgjw;->f:Loyn;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_75
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_76
    sget-object p1, Lmxz;->d:Lmxz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_77
    check-cast v2, Ljrz;

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_78
    iput-object p1, p0, Lggb;->g:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast p1, Ljava/util/List;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0}, Lgfj;->b()V

    goto/32 :goto_f1

    nop

    nop

    :goto_7c
    invoke-direct {v1, v0, p1}, Lgfw;-><init>(ILgfo;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_7e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object p1, p0, Lgoi;->i:Lrss;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_80
    return-void

    nop

    :pswitch_7
    goto/32 :goto_94

    nop

    nop

    :goto_81
    invoke-virtual {p0}, Lgjw;->q()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast p0, Lgjs;

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_83
    if-nez v1, :cond_b

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_84
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_f
        :pswitch_11
        :pswitch_4
        :pswitch_2
        :pswitch_10
        :pswitch_a
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_13
        :pswitch_5
        :pswitch_12
        :pswitch_8
        :pswitch_b
    .end packed-switch

    :goto_85
    goto/32 :goto_ce

    nop

    nop

    :goto_86
    sget-object v0, Lgfy;->a:Lryh;

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

    :goto_87
    sget-object p1, Lmxz;->d:Lmxz;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_88
    const/4 v2, 0x1

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_30

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-direct {p1, v2}, Lipb;-><init>(I)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p0, p1}, Lgjw;->o(Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Lgfj;->a()V

    goto/32 :goto_be

    nop

    nop

    :goto_8d
    check-cast p0, Lgfy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_8e
    check-cast p0, Lgfj;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0, v0, p1}, Lgjw;->x(ZZ)V

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_90
    sget-object v0, Lmya;->c:Lmya;

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

    nop

    :goto_91
    new-instance p1, Lipb;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v1, p0, Lgjw;->h:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v0, Lgfo;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_94
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_95
    invoke-interface {v2, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {v0, p1}, Lj$/util/concurrent/atomic/DesugarAtomicReference;->updateAndGet(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_97
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    return-void

    nop

    :pswitch_9
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_9a
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9b
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {p0}, Lgjs;->i()V

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-boolean v0, p0, Lkol;->b:Z

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    sget-object v0, Lmya;->a:Lmya;

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_a0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_a3
    iget-object p0, p0, Lgkk;->l:Lcom/google/android/apps/camera/autotimer/analysis/jni/BaseCurator;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a4
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {p1, v0}, Llyh;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p0, p1}, Lgjw;->u(Lj$/time/Duration;)V

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_a7
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast p1, Lgfo;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_a9
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_ab
    iget-object v1, p0, Lgjw;->H:Lfdo;

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_af
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {p0, v2, v2}, Lgjw;->n(ZZ)V

    goto/32 :goto_81

    nop

    nop

    :goto_b1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {p0, p1}, Lgfy;->d(Lj$/util/Optional;)V

    goto/32 :goto_c1

    nop

    nop

    :goto_b3
    invoke-virtual {p0, p1, v0}, Lmxw;->i(Lmxz;Lmya;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-interface {p1}, Lsrr;->a()Lj$/time/Instant;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object p1, p0, Lgoi;->i:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_b6
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_b7
    iget-boolean v0, p0, Lgjw;->w:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_bc
    if-nez v0, :cond_d

    nop

    goto/32 :goto_f5

    nop

    nop

    :cond_d
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_bd
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_be
    return-void

    nop

    :pswitch_d
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_c0
    check-cast p1, Llyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_c1
    return-void

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_c2
    return-void

    nop

    nop

    nop

    :goto_c3
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v1, v0}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_c5
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    if-nez p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_e
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    return-void

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v0, v1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    return-void

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {p0}, Lgjw;->w()V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-nez p1, :cond_f

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_37

    nop

    :goto_cf
    check-cast p0, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_d3
    invoke-static {v0}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_d6
    sget-object v1, Lgfy;->a:Lryh;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_d7
    check-cast p0, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_d8
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    check-cast p0, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast v0, Llyi;

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {p0}, Lgjw;->y()V

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_dc
    check-cast p0, Lgfj;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    return-void

    nop

    :pswitch_12
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_de
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_df
    iget-object p0, p0, Lgjw;->d:Loyn;

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

    nop

    :goto_e0
    check-cast p0, Lmhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e1
    sget-object v1, Lgfo;->h:Lgfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_e2
    check-cast p0, Lgjy;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_e4
    check-cast p0, Lgfy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e5
    if-nez v1, :cond_10

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_10
    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v1}, Lfdo;->w()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_e7
    check-cast p0, Lgkk;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-static {p1, v0, v2, v1}, Lgjw;->z(Lkvu;Llyi;Ljrz;Z)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_e9
    iget-object v2, p0, Lgjw;->b:Loyn;

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_ea
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_eb
    check-cast p1, Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_ec
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    check-cast p0, Lgjw;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_ef
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f0
    check-cast p0, Lgfy;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_f3
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

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

    :goto_f4
    move v1, v2

    nop

    :goto_f5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_f8
    iget-object p0, p0, Lgfs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_f9
    if-nez p1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_fc
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    goto/16 :goto_d4

    nop

    nop

    nop

    :goto_fe
    goto/32 :goto_46

    nop

    nop

    :goto_ff
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_100
    iget-object v2, p0, Lgjw;->m:Loyd;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_101
    check-cast p0, Lgjw;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop
.end method
