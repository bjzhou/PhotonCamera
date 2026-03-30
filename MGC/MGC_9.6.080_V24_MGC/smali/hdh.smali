.class public final synthetic Lhdh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrtm;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lhdh;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhdh;->a:Ljava/lang/Object;

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

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    goto/32 :goto_88

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Lmpr;-><init>(I)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v1, v2

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :pswitch_0
    goto/32 :goto_4d

    nop

    nop

    :goto_7
    check-cast p0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_b
    sget-object v2, Lqjd;->b:[F

    nop

    nop

    nop

    goto/32 :goto_39

    nop

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

    nop

    :pswitch_1
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

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

    :pswitch_2
    goto/32 :goto_3d

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8c

    nop

    nop

    :goto_10
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_99

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

    :pswitch_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0}, Lpxz;-><init>(Lqar;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_87

    nop

    nop

    :goto_17
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_ac

    nop

    nop

    :goto_19
    check-cast p0, Landroid/content/Context;

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lqar;->a()Lpwi;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lt v2, v1, :cond_2

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :cond_2
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Lqar;-><init>()V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

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

    :goto_20
    invoke-interface {p0}, Lpwh;->q()Lpwi;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_22
    new-instance p0, Lpxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v1, Lrtm;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_24
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lqar;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_27
    goto/16 :goto_84

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_83

    nop

    nop

    :goto_29
    invoke-interface {v1}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq p0, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_31
    invoke-static {v0, v1}, Lolx;->al(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_32
    new-instance v0, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_33
    check-cast p0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_34
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_37
    check-cast p0, Loyp;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_38
    return-object p0

    nop

    :pswitch_7
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v2}, Lqka;->b([F)Lqka;

    move-result-object v2

    nop

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

    :goto_3a
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3c
    sget-object v0, Lqjd;->a:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3d
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_40
    iget-object v3, v0, Lqar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-boolean p0, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->b:Z

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p0, v0}, Lqjy;->e(Lqht;[Lqka;)Lqjy;

    move-result-object p0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_44
    check-cast p0, Ltuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_45
    check-cast p0, Lnbs;

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

    :goto_46
    sget-object v3, Lqjd;->a:[F

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast p0, Lryy;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_48
    const-string v1, "wearos_assets"

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string v0, "primes"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4a
    sget-object v0, Lhmq;->I:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4e
    array-length v1, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_4f
    return-object p0

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_50
    invoke-direct {v0, p0}, Lonq;-><init>(Landroid/app/Activity;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_53
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_54
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_55
    sget-object p0, Lpwi;->b:Lpwi;

    nop

    :goto_56
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_57
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_10
        :pswitch_f
        :pswitch_1
        :pswitch_3
        :pswitch_d
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_11
        :pswitch_2
        :pswitch_5
        :pswitch_c
        :pswitch_12
        :pswitch_13
        :pswitch_e
    .end packed-switch

    :goto_58
    goto/32 :goto_17

    nop

    nop

    :goto_59
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v1, Lpxy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5d
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_85

    nop

    :goto_5e
    aput-object v2, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_60
    return-object v0

    nop

    nop

    :pswitch_b
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-object p0

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v0, Lqlr;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Limf;->j()Z

    move-result p0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_64
    invoke-static {p0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_65
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_66
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

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

    :goto_68
    iget-object p0, p0, Loyp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6a
    check-cast p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    aget-object v1, v0, v2

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

    nop

    :goto_6c
    sget-object v0, Lpwi;->d:Lpwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

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

    :goto_6e
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6f
    sget-object v0, Lhmq;->bX:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    nop

    nop

    :goto_71
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_72
    sget-object v0, Lrvj;->b:Lj$/util/stream/Collector;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_73
    return-object p0

    nop

    :pswitch_d
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast p0, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    check-cast p0, Lfwb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_77
    check-cast p0, Loaj;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_78
    new-instance p0, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast p0, Ljjz;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast p0, Limf;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_7e
    invoke-static {p0, v1}, Lolx;->al(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v3}, Lqka;->b([F)Lqka;

    move-result-object v3

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_81
    iget-boolean p0, p0, Ljjz;->c:Z

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_83
    move v1, v2

    nop

    :goto_84
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_88
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_89
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

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

    :goto_8a
    sget-object v1, Lonx;->a:Lolx;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_8b
    iget v0, p0, Lhdh;->b:I

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p0}, Lfwb;->b()Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/OptionsPanelContent;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {p0}, Ltuu;->b()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_91
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_92
    iget p0, p0, Loaj;->c:I

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {p0, v0}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_94
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_95
    new-instance v0, Lqar;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_96
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_97
    sget-object v1, Lonx;->a:Lolx;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_98
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_99
    goto/16 :goto_16

    nop

    :goto_9a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-ne p0, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    :goto_9c
    new-array v0, v0, [Lqka;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    aput-object v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9e
    check-cast p0, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_9f
    return-object p0

    nop

    :pswitch_10
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    sget-object v0, Lpwi;->a:Lpwi;

    nop

    nop

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

    :goto_a3
    const v1, 0x7

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_a4
    check-cast p0, Lhoh;

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

    nop

    :goto_a5
    invoke-direct {v0, p0}, Lqlr;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a7

    nop

    nop

    :goto_a6
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    return-object v0

    nop

    nop

    :pswitch_12
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_a9
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_aa
    check-cast p0, Lhoh;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_ab
    new-instance v0, Lmpr;

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

    :goto_ac
    sget-object v0, Lhmq;->bY:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_ad
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object p0, p0, Lhdh;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_af
    return-object p0

    nop

    :pswitch_13
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez v0, :cond_7

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_7
    :goto_b1
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    goto :goto_b1

    nop

    nop

    :goto_b3
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast v1, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b5
    const-string v1, "streamtmp"

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b6
    new-instance v0, Lonq;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop
.end method
