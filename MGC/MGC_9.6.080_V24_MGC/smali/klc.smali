.class public final Lklc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lklq;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lmse;

.field private final c:Lrss;

.field private final d:F

.field private final e:Loyn;

.field private final f:Loyd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmse;Lrss;Lhoh;Loyn;Loyd;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    div-float/2addr p1, p2

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

    nop

    :goto_1
    iput-object p2, p0, Lklc;->b:Lmse;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    const/high16 p2, 0x42700000    # 60.0f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    long-to-float p1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-long p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lklc;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    iput p1, p0, Lklc;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lklc;->c:Lrss;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    iput-object p5, p0, Lklc;->e:Loyn;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p6, p0, Lklc;->f:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p4, p2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object p2, Lhmu;->t:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Lklc;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    goto/32 :goto_50

    nop

    nop

    :goto_3
    const v4, 0x7f0b0252

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v4, 0x7f14007c

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_6
    filled-new-array {v5, v4}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1, v2, v0}, Lmse;->m(IILandroid/view/View;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Lezm;->t(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v2, Landroid/widget/ImageView;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_b
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

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

    :goto_d
    const v2, 0x7f0b0251

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v5, "count"

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

    :goto_10
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, v5, v4}, Lfib;->b(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    const v0, 0x13

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_14
    check-cast v4, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    iget-object v1, p0, Lklc;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_16
    check-cast v4, Ljmo;

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

    :goto_17
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Lezm;->v(Lezb;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1d
    check-cast v1, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_35

    nop

    nop

    :goto_1f
    new-instance v1, Lezm;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

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

    :goto_22
    const v3, 0x7f140087

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v2, v3}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v3, v2}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto/32 :goto_37

    nop

    nop

    :goto_26
    check-cast v2, Landroid/widget/LinearLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    iget-object v2, p0, Lklc;->a:Landroid/content/Context;

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

    :goto_29
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v1}, Lezm;-><init>()V

    goto/32 :goto_28

    nop

    nop

    :goto_2b
    const v1, 0x5

    nop

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

    :goto_2c
    const v2, 0x7f140092

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, v2, Lezs;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    :goto_2f
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_33

    nop

    :goto_31
    iget-object v2, p0, Lklc;->a:Landroid/content/Context;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_32
    const v2, 0x7f0e0039

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2f

    nop

    nop

    :goto_34
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_35
    const v1, 0x7f0b00b3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Lklc;->b:Lmse;

    nop

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

    :goto_38
    iget-object v2, p0, Lklc;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lklc;->e:Loyn;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v2, Lezb;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, p0, Lklc;->f:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v0, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v2, p0, Lmse;->d:Lmsd;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_34

    nop

    :goto_43
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v5, 0x7f1402c1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v2, Lklb;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_4c

    nop

    nop

    :goto_48
    iget v4, p0, Lklc;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_49
    iget-object v1, p0, Lklc;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4b
    const v2, 0x7f0b00b1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v2, p0, Lklc;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4d
    const v3, 0x7f130035

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4e
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->a()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v2, Ljeh;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v2, v1, v0, v4}, Ljeh;-><init>(Lezm;Landroid/view/View;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v2, v1, v3}, Lklb;-><init>(Lezm;I)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_54
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop
.end method
