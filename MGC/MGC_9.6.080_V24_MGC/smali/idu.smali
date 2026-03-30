.class public final Lidu;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/content/Context;

.field private final b:Lmse;

.field private final c:Lezm;

.field private final d:Loyn;

.field private e:Landroid/view/View;

.field private final f:Lhoh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmse;Loyn;Lhoh;)V
    .locals 0

    goto/32 :goto_8

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
    iput-object p4, p0, Lidu;->f:Lhoh;

    nop

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

    :goto_2
    invoke-direct {p1}, Lezm;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lidu;->d:Loyn;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lidu;->c:Lezm;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lidu;->b:Lmse;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lidu;->a:Landroid/content/Context;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    nop

    :goto_1
    const v2, 0x7f140110

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5
    check-cast v2, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lidu;->b:Lmse;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lidu;->e:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v4, 0x7f14010f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lidu;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v4, v3, v1}, Lmse;->m(IILandroid/view/View;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v2, Lezb;

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

    :goto_f
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_60

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, -0x1

    nop

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

    :goto_14
    invoke-virtual {v2, v3}, Lezm;->t(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, p0, Lidu;->c:Lezm;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v3}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    const/16 v4, 0x13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    const v2, 0x7f0b00b5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_19
    iget-object v2, v2, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1a
    invoke-virtual {v2}, Lezm;->n()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v3, 0xe

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    check-cast v3, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1f
    const v2, 0x7f0b00b4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_20
    iget-object v2, p0, Lidu;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_21
    invoke-virtual {v3, v2}, Lezm;->v(Lezb;)Z

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Landroid/widget/TextView;

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

    :goto_23
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lidu;->b()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v1, p0, v3}, Lgzp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lidu;->f:Lhoh;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v3, 0x7f0b00b2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x1f

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    new-instance v1, Lgzp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lidu;->e:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_2c
    goto :goto_35

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_55

    nop

    nop

    :goto_2f
    iget-object v3, p0, Lidu;->d:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    :goto_31
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    iput-object v4, p0, Lidu;->e:Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->b(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_34
    const v3, 0x7f1404f8

    nop

    :goto_35
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lidu;->e:Landroid/view/View;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v1, Lhlz;->f:Lhmn;

    nop

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

    :goto_38
    invoke-interface {v3, v4}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Lidu;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v4, p0, Lidu;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_3c
    if-ne v3, v0, :cond_2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v2, p0, Lidu;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3f
    const v3, 0x7f130056

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    :goto_41
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_42
    const/4 v3, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, v4, v3, v1}, Lmse;->o(IILandroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    :goto_44
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v3, p0, Lidu;->a:Landroid/content/Context;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_46
    const v3, 0x7f140112

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_3

    nop

    nop

    :goto_4a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v4, p0, Lidu;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_49

    nop

    :goto_4d
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_4e
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_4f
    const v4, 0x7f0b00c8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v3, p0, Lidu;->c:Lezm;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v1, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const v5, 0x7f140113

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_4a

    nop

    nop

    :goto_54
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_55
    if-nez v0, :cond_4

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    :goto_56
    goto :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_59
    iget-object p1, p0, Lidu;->b:Lmse;

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

    :goto_5a
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5b
    iget-object v3, p0, Lidu;->c:Lezm;

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

    :goto_5c
    const/16 p1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_5e
    const v3, 0x7f0e0041

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const v2, 0x7f140111

    nop

    :goto_60
    goto/32 :goto_28

    nop

    nop

    :goto_61
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop
.end method

.method public final b()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lidu;->b:Lmse;

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

    :goto_1
    invoke-virtual {p0}, Lmse;->k()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method
