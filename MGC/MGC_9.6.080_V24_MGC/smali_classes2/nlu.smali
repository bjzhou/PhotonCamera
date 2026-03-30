.class public final Lnlu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnmu;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ltxm;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p4, p0, Lnlu;->a:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p3, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop
.end method

.method public constructor <init>(Lpic;Lklr;Lklq;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iput p4, p0, Lnlu;->a:I

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iput-object p2, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Ltxm;Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_5

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

    :goto_1
    iput-object p3, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_4
    iput-object p2, p0, Lnlu;->c:Ljava/lang/Object;

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

    :goto_5
    iput p4, p0, Lnlu;->a:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 8

    goto/32 :goto_a4

    nop

    nop

    :goto_0
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_4
    iput v2, v0, Lnei;->h:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lnjn;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_a
    iput-boolean v3, v0, Lnei;->a:Z

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lnjn;->b()Lpzi;

    move-result-object v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_f
    const v1, 0x7f0b0057

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v0, p0}, Lmml;->k(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_d

    nop

    nop

    :goto_11
    check-cast v1, Landroid/view/View;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v4, Lgjw;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v4, 0x7f0b0098

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_15
    iget-object v1, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v6, :cond_1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lrss;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Lnjn;

    nop

    nop

    goto/32 :goto_c4

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

    :goto_1e
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v0, v4, Lgjw;->s:Landroid/widget/ImageButton;

    nop

    nop

    :goto_20
    goto/32 :goto_33

    nop

    nop

    :goto_21
    invoke-virtual {v4, v0, v0}, Lgjw;->n(ZZ)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_22
    const v3, 0x7f0b01de

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x3

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_28
    if-ne v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Lhoh;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v2, 0x7f0b02c7

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

    nop

    :goto_2b
    iget-boolean v6, v4, Lgjw;->B:Z

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Lnar;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v6, v0, Lnei;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_2e
    if-ne v0, v2, :cond_3

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

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v1, Lhmq;->bR:Lhmn;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_33
    new-instance v0, Lnei;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_34
    check-cast v1, Lpic;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_35
    new-instance v2, Lnmb;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_37
    iget-object v1, v1, Lpzi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    :goto_39
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->i(Lnbg;Lnbf;)V

    goto/32 :goto_35

    nop

    nop

    :goto_3b
    check-cast p0, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3c
    check-cast v1, Lmml;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v0, v1}, Lklr;->a(Landroid/view/View;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v1, Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_41
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_4
    goto/32 :goto_6a

    nop

    nop

    :goto_42
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

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

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v1, Lmml;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_5
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    :goto_48
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v2, Lnbg;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_4b
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v1, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0, v0}, Ljph;->e(Ljpv;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v0, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v0, v4, Lgjw;->t:Lneh;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_53
    check-cast v1, Ljat;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b2

    nop

    :goto_56
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v0, Lrss;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v0, Lrss;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_5a
    check-cast v1, Lnjn;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_5c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lnlu;->d:Ljava/lang/Object;

    nop

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

    nop

    :goto_5e
    iget-object v4, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    :goto_60
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    :goto_61
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_62
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_64
    iget-object v5, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_65
    iget-object v0, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_66
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v0}, Lnei;-><init>()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    :goto_6b
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-ne v0, v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    :cond_9
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v1, v0, p0}, Lmml;->k(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v0, p0, Lnlu;->a:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_73
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_74
    iget-object v0, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_75
    iget-object p0, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v3, Lnbf;->d:Lnbf;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v1, Lrss;

    nop

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

    nop

    :goto_7b
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->m(Landroid/view/View;)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast v0, Lpic;

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_7d
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, v4}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_7f
    if-eqz v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v2, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iput-object v0, v4, Lgjw;->r:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_85
    check-cast v4, Lrss;

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_86
    check-cast v1, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast p0, Ljph;

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

    :goto_88
    check-cast v1, Lrss;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    const v1, 0x7f0b0087

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_8a
    check-cast v0, Lnar;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v0, v4, Lgjw;->r:Lcom/google/android/apps/camera/ui/views/ToggleUi;

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

    :goto_8c
    invoke-virtual {v0}, Lnei;->a()Lneh;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_8d
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8e
    iput-object v5, v0, Lnei;->g:Landroid/content/Context;

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

    :goto_8f
    const v2, 0x7f0b008a

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_90
    iget-object v1, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast p0, Lnbg;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_92
    check-cast v0, Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_93
    check-cast v5, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v1, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_95
    return-void

    nop

    nop

    :goto_96
    goto/32 :goto_52

    nop

    nop

    :goto_97
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_98
    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_99
    invoke-direct {v2, v0}, Lnmb;-><init>(Lrss;)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v0, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9b
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v0, p0, Lnlu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    return-void

    nop

    :goto_9e
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v2, v1}, Lhab;->a(Landroid/view/ViewStub;)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_a0
    const v1, 0x7f0e002f

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_a2
    check-cast v2, Lhab;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->i(Lnbg;Lnbf;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v0, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a8
    if-eqz v0, :cond_b

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_a5

    nop

    nop

    :goto_a9
    iget-object v0, v0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v1, p0, Lnlu;->b:Ljava/lang/Object;

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

    nop

    :goto_ab
    check-cast v0, Lpic;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    check-cast p0, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_ae
    sget-object v3, Lnbf;->c:Lnbf;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_af
    invoke-interface {v1}, Ljat;->a()V

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_b0
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_b1
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_1e

    nop

    nop

    :goto_b3
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_b4
    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorView;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_b5
    check-cast v0, Ljat;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object p0, p0, Lnlu;->d:Ljava/lang/Object;

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

    :goto_b7
    check-cast v0, Lpic;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast v0, Landroid/view/ViewStub;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_ba
    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_c
    goto/32 :goto_3d

    nop

    nop

    :goto_bb
    invoke-interface {p0}, Lklq;->a()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const v7, 0x7f140118

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    const/4 v0, 0x0

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

    :goto_be
    iget-object p0, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object p0, p0, Lnlu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_c0
    iget-object v6, v4, Lgjw;->r:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_c1
    iget-object v0, p0, Lnlu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    check-cast v0, Lnar;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast v0, Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_c5
    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v0, p0, Lnlu;->c:Ljava/lang/Object;

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

    :goto_c7
    iput-object v5, v4, Lgjw;->q:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop
.end method
