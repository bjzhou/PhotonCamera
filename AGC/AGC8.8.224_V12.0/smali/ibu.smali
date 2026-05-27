.class final Libu;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Libv;


# direct methods
.method public constructor <init>(Libv;ZZZ)V
    .locals 0

    iput-object p1, p0, Libu;->d:Libv;

    iput-boolean p2, p0, Libu;->a:Z

    iput-boolean p3, p0, Libu;->b:Z

    iput-boolean p4, p0, Libu;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Libu;->d:Libv;

    iget-object v2, v1, Libv;->e:Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;

    invoke-static {}, Ljuh;->a()V

    iget-boolean v3, v2, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->e:Z

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->removeAllViews()V

    iget-object v6, v2, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->b:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    rem-int/2addr v6, v7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v2, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->b:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    if-ge v11, v9, :cond_9

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lica;

    iget-object v15, v14, Lica;->a:Lika;

    const v7, 0x7f0e0090

    invoke-virtual {v3, v7, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v10, v16

    check-cast v10, Landroid/widget/GridLayout$LayoutParams;

    sget-object v4, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->BOTTOM:Landroid/widget/GridLayout$Alignment;

    const/4 v0, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x1

    invoke-static {v12, v3, v4, v0}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    sget-object v0, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v13, v3, v0, v4}, Landroid/widget/GridLayout;->spec(IILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, v10, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v3, 0x7f0802be

    invoke-virtual {v5, v3, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v3, Lika;->j:Lika;

    if-ne v15, v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lodu;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v4, v3}, Lodu;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-virtual {v4}, Lodu;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    invoke-static {v15}, Lijy;->b(Lika;)Lijy;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lijy;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->a:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v4

    const v10, 0x7f0802f2

    invoke-virtual {v4, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v24, v8

    move/from16 v25, v9

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v8, 0x0

    aput-object v0, v9, v8

    const/4 v0, 0x1

    aput-object v3, v9, v0

    const/4 v3, 0x2

    aput-object v4, v9, v3

    invoke-direct {v10, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v4, 0x11

    invoke-virtual {v10, v8, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v10, v0, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v10, v3, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    const/16 v19, 0x2

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v0, 0x7f07045a

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v23

    move-object/from16 v18, v10

    move/from16 v20, v23

    invoke-virtual/range {v18 .. v23}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v3, v14, Lica;->c:Z

    const/4 v4, 0x1

    if-eq v4, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/16 v3, 0xff

    :goto_2
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    const v0, 0x7f07045d

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v0, v0}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0, v10, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lika;->j:Lika;

    if-ne v15, v0, :cond_2

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljew;->F(Landroid/content/Context;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_2
    sget-object v0, Lika;->q:Lika;

    if-ne v15, v0, :cond_3

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljew;->E(Landroid/content/Context;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_3

    :cond_3
    invoke-static {v15}, Lijy;->b(Lika;)Lijy;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lijy;->d(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lika;->j:Lika;

    if-ne v15, v0, :cond_4

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljew;->F(Landroid/content/Context;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_4
    sget-object v0, Lika;->q:Lika;

    if-ne v15, v0, :cond_5

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljew;->E(Landroid/content/Context;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_4

    :cond_5
    invoke-static {v15}, Lijy;->b(Lika;)Lijy;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lijy;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Lgfm;

    const/4 v3, 0x7

    invoke-direct {v0, v2, v15, v3}, Lgfm;-><init>(Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;Lika;I)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    invoke-virtual {v2, v7}, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->addView(Landroid/view/View;)V

    iput-object v7, v14, Lica;->b:Landroid/view/View;

    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x3

    if-eq v13, v8, :cond_7

    if-nez v6, :cond_6

    const/4 v0, 0x3

    goto :goto_5

    :cond_6
    move v0, v6

    :goto_5
    if-ne v13, v0, :cond_8

    if-nez v12, :cond_8

    const/4 v12, 0x0

    :cond_7
    const/4 v0, 0x1

    add-int/2addr v12, v0

    const/4 v13, 0x0

    :cond_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v17

    move-object/from16 v8, v24

    move/from16 v9, v25

    const/4 v7, 0x3

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/google/android/apps/camera/ui/modeswitcher/MoreModesGrid;->e:Z

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v1, Libv;->b:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lika;

    invoke-virtual {v1, v3}, Libv;->y(Lika;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v1, Libv;->b:Ljava/util/EnumMap;

    invoke-virtual {v4, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljvs;

    if-eqz v3, :cond_b

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v1, Libv;->b:Ljava/util/EnumMap;

    sget-object v3, Lika;->p:Lika;

    invoke-static {v0}, Ljvw;->c(Ljava/util/Collection;)Ljvs;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lika;->p:Lika;

    invoke-virtual {v1, v0}, Libv;->i(Lika;)V

    sget-object v0, Lika;->p:Lika;

    invoke-virtual {v1, v0}, Libv;->s(Lika;)V

    :cond_d
    iget-boolean v0, v1, Libv;->h:Z

    if-eqz v0, :cond_e

    invoke-virtual {v1}, Libv;->w()V

    :cond_e
    const/4 v2, 0x1

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, v1, Libv;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f140304

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Libv;->j:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x2

    invoke-static/range {v2 .. v10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v0

    iput-object v0, v1, Libv;->m:Licf;

    iget-object v0, v1, Libv;->q:Ljuf;

    iget-object v2, v1, Libv;->o:Ljvs;

    new-instance v3, Lhml;

    const/16 v4, 0xf

    invoke-direct {v3, v1, v4}, Lhml;-><init>(Libv;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, v1, Libv;->q:Ljuf;

    iget-object v2, v1, Libv;->p:Ljvs;

    new-instance v3, Lhml;

    const/16 v4, 0x10

    invoke-direct {v3, v1, v4}, Lhml;-><init>(Libv;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Libv;->g:Z

    return-void
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Libu;->d:Libv;

    sget-object v1, Lika;->d:Lika;

    invoke-virtual {v0, v1}, Libv;->k(Lika;)V

    iget-object v0, p0, Libu;->d:Libv;

    sget-object v1, Lika;->e:Lika;

    invoke-virtual {v0, v1}, Libv;->k(Lika;)V

    iget-boolean v0, p0, Libu;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Libu;->d:Libv;

    sget-object v1, Lika;->j:Lika;

    invoke-virtual {v0, v1}, Libv;->k(Lika;)V

    :cond_0
    iget-boolean v0, p0, Libu;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Libu;->d:Libv;

    sget-object v1, Lika;->s:Lika;

    invoke-virtual {v0, v1}, Libv;->k(Lika;)V

    :cond_1
    iget-boolean v0, p0, Libu;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Libu;->d:Libv;

    sget-object v1, Lika;->q:Lika;

    invoke-virtual {v0, v1}, Libv;->k(Lika;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Libv;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Failed to add Lens entry: %s"

    const/16 v2, 0x1031

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object p1, p0, Libu;->d:Libv;

    iget-object p1, p1, Libv;->k:Lkbc;

    const-string v0, "FinalizeMoreModes"

    invoke-interface {p1, v0}, Lkbc;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Libu;->d()V

    invoke-direct {p0}, Libu;->c()V

    iget-object p1, p0, Libu;->d:Libv;

    iget-object p1, p1, Libv;->k:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Libu;->d:Libv;

    iget-object v0, v0, Libv;->k:Lkbc;

    const-string v1, "FinalizeMoreModes"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Libu;->d()V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Libu;->d:Libv;

    sget-object v0, Lika;->k:Lika;

    invoke-virtual {p1, v0}, Libv;->k(Lika;)V

    iget-object p1, p0, Libu;->d:Libv;

    const/4 v0, 0x1

    iput-boolean v0, p1, Libv;->h:Z

    :cond_0
    invoke-direct {p0}, Libu;->c()V

    iget-object p1, p0, Libu;->d:Libv;

    iget-object p1, p1, Libv;->k:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method
