.class public final synthetic Ldpw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldpy;

.field public final synthetic b:Lgej;


# direct methods
.method public synthetic constructor <init>(Ldpy;Lgej;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpw;->a:Ldpy;

    iput-object p2, p0, Ldpw;->b:Lgej;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v15, v0, Ldpw;->a:Ldpy;

    iget-object v1, v0, Ldpw;->b:Lgej;

    iput-object v1, v15, Ldpy;->d:Lgej;

    new-instance v14, Landroid/widget/FrameLayout;

    iget-object v1, v15, Ldpy;->a:Landroid/content/Context;

    invoke-direct {v14, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, v15, Ldpy;->a:Landroid/content/Context;

    const v2, 0x7f0e00db

    invoke-static {v1, v2, v14}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance v13, Landroid/widget/FrameLayout;

    iget-object v1, v15, Ldpy;->a:Landroid/content/Context;

    invoke-direct {v13, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, v15, Ldpy;->a:Landroid/content/Context;

    const v2, 0x7f0e00da

    invoke-static {v1, v2, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b0144

    invoke-virtual {v13, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/4 v2, 0x3

    new-array v12, v2, [Landroid/widget/FrameLayout;

    new-array v3, v2, [Lgej;

    sget-object v4, Lgej;->M:Lgej;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lgej;->K:Lgej;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Lgej;->L:Lgej;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, v15, Ldpy;->a:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v8, v12, v4

    iget-object v9, v15, Ldpy;->a:Landroid/content/Context;

    const v10, 0x7f0e00dc

    invoke-static {v9, v10, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    iget-object v8, v15, Ldpy;->a:Landroid/content/Context;

    aget-object v9, v12, v4

    aget-object v10, v3, v4

    const/4 v11, 0x7

    new-array v2, v11, [Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const v11, 0x7f0b02c7

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    aput-object v11, v2, v5

    const v11, 0x7f0b02c8

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    aput-object v11, v2, v6

    const v11, 0x7f0b02c9

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    aput-object v11, v2, v7

    const v11, 0x7f0b02ca

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const/16 v17, 0x3

    aput-object v11, v2, v17

    const v11, 0x7f0b02cb

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const/16 v19, 0x4

    aput-object v11, v2, v19

    const v11, 0x7f0b02cc

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const/16 v16, 0x5

    aput-object v11, v2, v16

    const v11, 0x7f0b02cd

    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;

    const/4 v11, 0x6

    aput-object v9, v2, v11

    invoke-virtual {v10}, Lgej;->ordinal()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f140466

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_strong.jpg"

    goto :goto_1

    :pswitch_1
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f140465

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_off.jpg"

    goto :goto_1

    :pswitch_2
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f140464

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_light.jpg"

    :goto_1
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x7

    if-ge v10, v11, :cond_0

    add-int/lit8 v7, v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://www.gstatic.com/aiux/gca/faceretouching/img"

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v10, v2, v10

    invoke-virtual {v10, v6, v8}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v7

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto :goto_2

    :cond_0
    aget-object v2, v12, v4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v2, v15, Ldpy;->d:Lgej;

    aget-object v6, v3, v4

    if-ne v2, v6, :cond_1

    aget-object v2, v12, v4

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_1
    aget-object v2, v12, v4

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_2
    const/16 v16, 0x5

    new-instance v11, Landroid/widget/FrameLayout;

    iget-object v1, v15, Ldpy;->a:Landroid/content/Context;

    invoke-direct {v11, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v1, v15, Ldpy;->a:Landroid/content/Context;

    const v2, 0x7f0e00dd

    invoke-static {v1, v2, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0b02c4

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v1, 0x7f0b02c1

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v1, 0x7f0b02ce

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v1, 0x7f0b01d3

    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_3

    iget-object v2, v15, Ldpy;->a:Landroid/content/Context;

    const v3, 0x7f0701a3

    invoke-static {v3, v2}, Lllj;->r(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setTint(I)V

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v4, v15, Ldpy;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lllj;->r(ILandroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v15, Ldpy;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lllj;->r(ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    const v1, 0x7f0b02c6

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/TextView;

    const v1, 0x7f0b02c3

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/TextView;

    const v1, 0x7f0b02d0

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/widget/TextView;

    const v1, 0x7f0b02c5

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/widget/ImageView;

    const v1, 0x7f0b02c2

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/widget/ImageView;

    const v1, 0x7f0b02cf

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/widget/ImageView;

    iget v1, v15, Ldpy;->e:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    iput v1, v15, Ldpy;->e:I

    :cond_4
    const v1, 0x7f04016e

    invoke-static {v11, v1}, Lkwp;->l(Landroid/view/View;I)I

    move-result v23

    iget v7, v15, Ldpy;->e:I

    new-instance v6, Ldpx;

    const/16 v24, 0x1

    move-object v1, v6

    move-object v2, v15

    move-object v3, v10

    move-object v4, v9

    move-object v5, v8

    move-object/from16 v25, v6

    move-object/from16 v6, v17

    move/from16 v26, v7

    move-object/from16 v7, v18

    move-object/from16 v27, v8

    move-object/from16 v8, v19

    move-object/from16 v28, v9

    move/from16 v9, v23

    move-object/from16 v29, v10

    move/from16 v10, v26

    move-object/from16 v30, v11

    move-object/from16 v11, v20

    move-object/from16 v16, v12

    move-object/from16 v12, v21

    move-object/from16 v31, v13

    move-object/from16 v13, v22

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v32, v15

    move/from16 v15, v24

    invoke-direct/range {v1 .. v15}, Ldpx;-><init>(Ldpy;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/widget/FrameLayout;I)V

    move-object/from16 v1, v25

    move-object/from16 v15, v29

    invoke-virtual {v15, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v14, Ldpx;

    const/16 v24, 0x0

    move-object v1, v14

    move-object/from16 v2, v32

    move-object v3, v15

    move-object/from16 v4, v28

    move-object/from16 v5, v27

    move-object/from16 v25, v0

    move-object v0, v14

    move-object/from16 v14, v16

    move/from16 v15, v24

    invoke-direct/range {v1 .. v15}, Ldpx;-><init>(Ldpy;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/widget/FrameLayout;I)V

    move-object/from16 v15, v28

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ldpx;

    const/16 v24, 0x2

    move-object v1, v0

    move-object/from16 v3, v29

    move-object v4, v15

    move-object/from16 v33, v15

    move/from16 v15, v24

    invoke-direct/range {v1 .. v15}, Ldpx;-><init>(Ldpy;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;IILandroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;[Landroid/widget/FrameLayout;I)V

    move-object/from16 v1, v27

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, v32

    iget-object v2, v0, Ldpy;->d:Lgej;

    move-object/from16 v4, v33

    invoke-static {v2, v3, v4, v1}, Ldpy;->e(Lgej;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iget-object v2, v0, Ldpy;->d:Lgej;

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move/from16 v6, v23

    move/from16 v7, v26

    invoke-static/range {v2 .. v7}, Ldpy;->d(Lgej;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    iget-object v2, v0, Ldpy;->d:Lgej;

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    invoke-static/range {v2 .. v7}, Ldpy;->c(Lgej;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;II)V

    const v1, 0x7f0b006a

    move-object/from16 v8, v31

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lhu;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, Lhu;-><init>(Ldpy;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0118

    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Ldpy;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140463

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Ldpy;->b:Lhrz;

    const v2, 0x7f0b02d1

    move-object/from16 v9, v25

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v2, 0x7f0b03a0

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/ViewGroup;

    const v2, 0x7f0b00e7

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v5, v30

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v10, Ldpv;

    move-object v2, v10

    move-object v3, v9

    invoke-direct/range {v2 .. v7}, Ldpv;-><init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v10, v1, Lhrz;->f:Landroid/view/View$OnScrollChangeListener;

    iget-object v0, v0, Ldpy;->b:Lhrz;

    iget-object v1, v0, Lhrz;->b:Ldhi;

    sget-object v2, Ldho;->bg:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lhrz;->a:Ljuh;

    new-instance v2, Lgwr;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v9, v8, v3}, Lgwr;-><init>(Lhrz;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x5

    iput v1, v0, Lhrz;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lhrz;->h:J

    sget-object v2, Lngn;->e:Lngn;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iput-object v2, v0, Lhrz;->k:Lnwn;

    const/4 v2, 0x0

    iput-object v2, v0, Lhrz;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v0, v1}, Lhrz;->k(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
