.class public final synthetic Lmfk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ltxm;

.field public final synthetic b:Lrss;

.field public final synthetic c:Ltxm;


# direct methods
.method public synthetic constructor <init>(Ltxm;Lrss;Ltxm;)V
    .locals 0

    goto/32 :goto_0

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
    iput-object p1, p0, Lmfk;->a:Ltxm;

    nop

    nop

    goto/32 :goto_3

    nop

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
    iput-object p2, p0, Lmfk;->b:Lrss;

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

    :goto_4
    iput-object p3, p0, Lmfk;->c:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 19

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v7, 0x7f0b043a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_1
    iput-object v7, v8, Lmhb;->q:Lmgl;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_2
    if-nez v9, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_3
    const v7, 0x7f0b0437

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    add-int/2addr v6, v9

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lnjn;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v7, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

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

    :goto_9
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->h(Lnbg;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v8, Lmhb;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v9, v1, v2}, Lmgs;-><init>(Landroid/content/Context;Z)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v11, Lner;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_f
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_10
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v7, Lmgy;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v5, v4, Lmfh;->l:Lmgh;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v2, v5, Lmfz;->d:Landroid/view/View;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, v8, Lmhb;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_17
    const v7, 0x7f0707ea

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v9, v8, Lmhb;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, v0, Lmfk;->b:Lrss;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1a
    const/4 v12, 0x1

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v9, 0x7f060a6f

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v6}, Lmgs;->a(I)I

    move-result v6

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1d
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lnjn;->b()Lpzi;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    const v11, 0x101045c

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Lmgx;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_21
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v1, Lpic;

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v1, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_25
    const v3, 0x7f0b043c

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v3}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v7, v9, L_021;->s:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_2a
    const v7, 0x7f0b043b

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v9, Landroid/view/GestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2c
    check-cast v9, L_021;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v7}, Lmgl;->setBackgroundResource(I)V

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_2f
    const v6, 0x7f0707f0

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

    :goto_30
    iget-object v14, v1, Lmgs;->d:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v7}, Lmgl;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_32
    iget-object v0, v0, Lpzi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v1, v2, v4}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_6

    nop

    nop

    :goto_34
    iget-object v1, v8, Lmhb;->w:Lmgs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_35
    const/16 v6, 0xf

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_36
    iput-object v2, v1, Lmgs;->e:Lmgl;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, v8, Lmhb;->e:Lglm;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v2}, Lmgs;->setVisibility(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v2, 0x30

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v8, Lmhb;->q:Lmgl;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_3c
    invoke-virtual {v1}, Lmgl;->getContext()Landroid/content/Context;

    move-result-object v9

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eq v2, v12, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_99

    nop

    nop

    :goto_3e
    invoke-direct {v7, v8, v9, v10}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3f
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_40
    invoke-interface {v1}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_41
    check-cast v1, Lnbg;

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, v8, Lmhb;->g:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v7, v2}, Lfdo;->F(Lmgm;)V

    goto/32 :goto_aa

    nop

    nop

    :goto_44
    invoke-direct {v2, v4, v6}, Lmas;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_45
    iput v12, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x8

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_47
    const/16 v9, 0xe

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_48
    iget-object v1, v5, Lmfz;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v9, v8, Lmhb;->p:Landroid/view/GestureDetector;

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_4a
    iget-object v1, v1, Lmfz;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5f

    nop

    :goto_4c
    invoke-virtual {v1, v7}, Lmgs;->a(I)I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v1, 0x10

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_4e
    new-instance v7, Landroid/util/TypedValue;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v7, v8, v1}, Lmgy;-><init>(Lmhb;Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1, v2}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_52
    new-instance v2, Lmas;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v7, L_024;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_54
    iput v12, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_55
    iget-object v5, v4, Lmfh;->e:Lmfz;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    :goto_57
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput-object v1, v8, Lmhb;->v:Landroid/view/View;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5a
    const v9, 0x7f0707ed

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

    :goto_5b
    invoke-direct {v7, v9}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v1, v2}, Lmgs;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_a7

    nop

    :goto_60
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_61
    invoke-direct {v2, v8, v6, v10}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_50

    nop

    nop

    :goto_62
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/32 :goto_83

    nop

    nop

    :goto_63
    iput-object v7, v8, Lmhb;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

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

    :goto_64
    invoke-direct {v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_66
    invoke-direct {v11, v9, v13}, Lner;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto/32 :goto_df

    nop

    nop

    :goto_67
    iget-object v1, v4, Lmfh;->e:Lmfz;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_68
    iput-object v7, v1, Lmgl;->a:Landroid/graphics/drawable/TransitionDrawable;

    nop

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

    nop

    :goto_69
    iget-object v4, v4, Lmfh;->n:Lowu;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    new-instance v7, Lgko;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6b
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    sget-object v9, L_021;->ee:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_6d
    iget-object v1, v0, Lmfk;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v1, v2}, Lmgs;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v6, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v1, v8, Lmhb;->q:Lmgl;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v7, :cond_4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, v0, Lmfk;->c:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_73
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_74
    iget-object v2, v5, Lmfz;->d:Landroid/view/View;

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

    nop

    :goto_75
    invoke-direct {v9, v7, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_76
    invoke-direct {v2, v6, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_45

    nop

    nop

    :goto_77
    new-instance v7, Lgko;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v2, v8, Lmhb;->w:Lmgs;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_7b
    const v7, 0x7f0b043d

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v2, v5, Lmfz;->i:Lmet;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v5}, Lmgh;->f()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput-object v1, v8, Lmhb;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_80
    invoke-direct {v2, v8, v10}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v1, v8, Lmhb;->q:Lmgl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v2, v5, Lmfz;->d:Landroid/view/View;

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_83
    iput-object v2, v1, Lmgs;->d:Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_88

    nop

    nop

    :goto_86
    invoke-direct {v7}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_87
    new-instance v2, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_88
    invoke-virtual {v5}, Lmfz;->e()V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_89
    new-instance v2, Lgko;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v1, v7}, Lmgs;->a(I)I

    move-result v17

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_60

    nop

    nop

    :goto_8c
    invoke-virtual {v2, v7}, Lmet;->c(Landroid/view/View;)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_8e
    iget-object v1, v8, Lmhb;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iput-object v2, v1, Lcom/google/android/apps/camera/bottombar/BottomBar;->v:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_90
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_91
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v2, v5, Lmfz;->d:Landroid/view/View;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_93
    check-cast v2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_94
    iget-object v8, v5, Lmfz;->h:Lmhb;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_95
    invoke-virtual {v1}, Lmgs;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

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

    :goto_96
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_97
    invoke-virtual {v1, v7}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v1, v11}, Lmgl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput-object v1, v8, Lmhb;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_9b
    iget-object v1, v8, Lmhb;->w:Lmgs;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-direct {v2, v5, v12}, Lmgx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_9d
    invoke-direct {v7, v9}, L_024;-><init>(L_021;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9e
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_9f
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_a0
    check-cast v1, Lnar;

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_a1
    const v11, 0x7f08045d

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_a2
    const v7, 0x7f0b04a3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_a3
    iput-object v2, v5, Lmfz;->e:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_57

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a6
    return-void

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_8b

    nop

    nop

    :goto_a8
    if-nez v9, :cond_5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    :goto_a9
    invoke-virtual {v9, v6, v6, v1}, Lner;->c(III)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v1, v2, v6}, Lmgs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_c5

    nop

    nop

    :goto_ab
    iget-boolean v2, v8, Lmhb;->a:Z

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v1, v8, Lmhb;->c:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v7}, Lmgl;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_af
    filled-new-array {v9, v11}, [Landroid/graphics/drawable/Drawable;

    move-result-object v9

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

    :goto_b0
    invoke-direct {v1, v8}, Lmha;-><init>(Lmhb;)V

    goto/32 :goto_d4

    nop

    nop

    :goto_b1
    iget-object v7, v9, L_021;->t:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_b2
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    add-int/2addr v9, v9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1, v2}, Lmgs;->setGravity(I)V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v9, v11, v7, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_b6
    iget-object v1, v8, Lmhb;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_b7
    iput-object v1, v8, Lmhb;->n:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    iget-object v1, v8, Lmhb;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b9
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v7, v1, Lmgs;->g:Lfdo;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_bb
    iget-object v1, v1, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_bc
    iget v7, v7, Landroid/util/TypedValue;->resourceId:I

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_bd
    invoke-direct/range {v13 .. v18}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_be
    iput-object v9, v8, Lmhb;->w:Lmgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v7, v5, Lmfz;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_c0
    iget-object v9, v8, Lmhb;->r:Lner;

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

    nop

    nop

    :goto_c1
    const/16 v18, 0x0

    nop

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

    :goto_c2
    check-cast v4, Lmfh;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c3
    new-instance v7, Landroid/graphics/drawable/TransitionDrawable;

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v1, v8, Lmhb;->n:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_c6
    iget-object v7, v1, Lmgl;->a:Landroid/graphics/drawable/TransitionDrawable;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c7
    iget-object v1, v1, Lglm;->a:Lcom/google/android/apps/camera/bottombar/BottomBar;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v1, v8, Lmhb;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_c9
    const v9, 0x7f080463

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-direct {v7, v8, v9, v10}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v1, v7}, Lmgs;->a(I)I

    move-result v15

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_cc
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_cd
    check-cast v1, Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_ce
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    new-instance v1, Lmha;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast v0, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v1, v12}, Lmgs;->setOrientation(I)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_d3
    check-cast v1, Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d4
    iget-object v7, v8, Lmhb;->c:Landroid/content/Context;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_d6
    const/16 v9, 0xd

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v1, v9}, Lmgl;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

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

    nop

    :goto_d8
    check-cast v2, Landroid/view/ViewStub;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_d9
    iget-object v13, v8, Lmhb;->q:Lmgl;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_da
    iput-object v1, v8, Lmhb;->o:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_db
    const v2, 0x7f0b0439

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_dc
    const/4 v9, -0x2

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

    :goto_dd
    move-object v13, v2

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    if-nez v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_df
    iput-object v11, v8, Lmhb;->r:Lner;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_e0
    new-instance v9, Lmgs;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_e1
    rem-int v0, v0, v1

    nop

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

    :goto_e2
    iget-object v7, v9, L_021;->r:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
