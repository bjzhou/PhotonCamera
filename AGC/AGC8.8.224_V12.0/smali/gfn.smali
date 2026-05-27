.class public final Lgfn;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/Map;

.field public final c:Lges;

.field public final d:I

.field public final e:Lgel;

.field public final f:Lgek;

.field public g:Lgej;

.field private final h:Ljava/util/ArrayList;

.field private final i:Ljava/util/Map;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/LinearLayout;

.field private final m:Landroid/widget/ImageView;

.field private final n:Landroid/content/Context;

.field private final o:Z

.field private final p:Z

.field private final q:Z

.field private final r:Lgem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/optionsbar/view/OptionsMenuRow"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgfn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lges;Lgej;Lgel;Lgem;Lgek;IZZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgfn;->c:Lges;

    iput-object p3, p0, Lgfn;->g:Lgej;

    iput-object p1, p0, Lgfn;->n:Landroid/content/Context;

    iput-object p4, p0, Lgfn;->e:Lgel;

    iput-object p5, p0, Lgfn;->r:Lgem;

    iput-object p6, p0, Lgfn;->f:Lgek;

    iput p7, p0, Lgfn;->d:I

    iput-boolean p8, p0, Lgfn;->o:Z

    iput-boolean p9, p0, Lgfn;->p:Z

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lgfn;->q:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lgfn;->h:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lgfn;->b:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lgfn;->i:Ljava/util/Map;

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgfn;->j:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    new-instance p2, Landroid/widget/TextView;

    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setId(I)V

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lgfn;->m:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setId(I)V

    return-void
.end method


# virtual methods
.method public final a()Lgec;
    .locals 1

    iget-object v0, p0, Lgfn;->c:Lges;

    iget-object v0, v0, Lges;->a:Lgec;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const/16 v5, 0x99

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgfn;->b:Ljava/util/Map;

    iget-object v1, p0, Lgfn;->g:Lgej;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setSelected(Z)V

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lgfn;->k:Landroid/widget/TextView;

    const v0, 0x7f14037a

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14037b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-static {p0}, Linb;->f(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p1, p0, Lgfn;->q:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lgfn;->p:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lgfn;->m:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public final c(Lgej;)V
    .locals 3

    iget-object v0, p0, Lgfn;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    sget-object v0, Lgfn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xa31

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p0}, Lgfn;->a()Lgec;

    move-result-object v1

    const-string v2, "disableOption: nonexistent option %s for category %s"

    invoke-interface {v0, v2, p1, v1}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lgfn;->b:Ljava/util/Map;

    iget-object v1, p0, Lgfn;->g:Lgej;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    if-eq v0, p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const/16 p1, 0x99

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 6

    iget-object v0, p0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    const/16 v4, 0xff

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setImageAlpha(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgfn;->b:Ljava/util/Map;

    iget-object v1, p0, Lgfn;->g:Lgej;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v1, p0, Lgfn;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lget;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lget;->c:Ljava/lang/String;

    iget-object v3, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lget;->d:Ljava/lang/String;

    iget-object v1, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-static {p0}, Linb;->h(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-boolean v0, p0, Lgfn;->q:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lgfn;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lgfn;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final e()V
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v2, v1, [[I

    const v3, 0x10100a1

    filled-new-array {v3}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v3, v4, [I

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v3, v1, [I

    invoke-static/range {p0 .. p0}, Linb;->i(Landroid/view/View;)I

    move-result v6

    aput v6, v3, v4

    iget-boolean v6, v0, Lgfn;->o:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    invoke-static/range {p0 .. p0}, Linb;->k(Landroid/view/View;)I

    move-result v6

    :goto_0
    aput v6, v3, v5

    new-instance v6, Landroid/content/res/ColorStateList;

    invoke-direct {v6, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-static/range {p0 .. p0}, Linb;->e(Landroid/view/View;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Linb;->f(Landroid/view/View;)I

    move-result v7

    filled-new-array {v3, v7}, [I

    move-result-object v3

    new-instance v7, Landroid/content/res/ColorStateList;

    invoke-direct {v7, v2, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v2, v0, Lgfn;->c:Lges;

    iget-object v2, v2, Lges;->d:Lmvv;

    invoke-virtual {v2}, Lmvv;->size()I

    move-result v2

    const/4 v3, -0x1

    add-int/2addr v2, v3

    :goto_1
    if-ltz v2, :cond_1

    new-instance v8, Landroid/widget/ImageButton;

    iget-object v9, v0, Lgfn;->n:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setId(I)V

    new-instance v9, Landroid/widget/FrameLayout;

    iget-object v10, v0, Lgfn;->n:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Lzm;

    invoke-direct {v10, v3, v3}, Lzm;-><init>(II)V

    invoke-virtual {v9, v8, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object v8, v0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    new-instance v2, Lzy;

    invoke-direct {v2}, Lzy;-><init>()V

    invoke-virtual {v2, v0}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-boolean v8, v0, Lgfn;->o:Z

    const/4 v14, 0x5

    if-nez v8, :cond_8

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    iget-object v9, v0, Lgfn;->c:Lges;

    iget v9, v9, Lges;->b:I

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, v0, Lgfn;->c:Lges;

    iget v10, v10, Lges;->c:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f040650

    invoke-static {v9, v10}, Linb;->m(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v15, 0x7f090005

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Linb;->d(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f07056f

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move-object v8, v2

    move v10, v12

    const v1, 0x7f07056f

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/4 v10, 0x3

    const/4 v12, 0x3

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v13, 0x7f070570

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move-object v8, v2

    const v3, 0x7f070570

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    iget-object v8, v0, Lgfn;->c:Lges;

    iget-object v8, v8, Lges;->d:Lmvv;

    invoke-virtual {v8}, Lmvv;->size()I

    move-result v8

    const v13, 0x7f070568

    if-ge v8, v14, :cond_2

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/4 v10, 0x7

    iget-object v8, v0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v11

    const/4 v12, 0x6

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move-object v8, v2

    const v3, 0x7f070568

    move/from16 v13, v16

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    iget-object v8, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getId()I

    move-result v9

    iget-object v8, v0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    goto :goto_2

    :cond_2
    const v3, 0x7f070568

    iget-object v8, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v9

    const/4 v10, 0x7

    iget-object v8, v0, Lgfn;->h:Ljava/util/ArrayList;

    iget-object v11, v0, Lgfn;->c:Lges;

    iget-object v11, v11, Lges;->d:Lmvv;

    invoke-virtual {v11}, Lmvv;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x3

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v11

    const/4 v12, 0x6

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    :goto_2
    iget-object v3, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    const/4 v8, -0x2

    invoke-virtual {v2, v3, v8}, Lzy;->i(II)V

    iget-object v3, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lzy;->j(II)V

    iget-object v3, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lgfn;->addView(Landroid/view/View;)V

    iget-object v3, v0, Lgfn;->c:Lges;

    iget-object v3, v3, Lges;->d:Lmvv;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x0

    :cond_3
    if-ge v10, v9, :cond_4

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lget;

    iget-object v12, v11, Lget;->a:Lgej;

    iget-object v13, v0, Lgfn;->g:Lgej;

    add-int/lit8 v10, v10, 0x1

    if-ne v12, v13, :cond_3

    goto :goto_3

    :cond_4
    const/4 v11, 0x0

    :goto_3
    if-eqz v11, :cond_5

    iget-object v3, v11, Lget;->c:Ljava/lang/String;

    iget-object v9, v0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v11, Lget;->d:Ljava/lang/String;

    iget-object v9, v0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v3, v0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f04066d

    invoke-static {v9, v10}, Linb;->m(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v3, v0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v15}, Landroid/content/res/Resources;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v0, Lgfn;->k:Landroid/widget/TextView;

    invoke-static/range {p0 .. p0}, Linb;->h(Landroid/view/View;)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextDirection(I)V

    iget-object v3, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v9, 0x10

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v9, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v9, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, v0, Lgfn;->q:Z

    if-eqz v9, :cond_7

    iget-object v9, v0, Lgfn;->n:Landroid/content/Context;

    const v10, 0x7f0801be

    invoke-virtual {v9, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-static/range {p0 .. p0}, Linb;->h(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_6
    iget-object v10, v0, Lgfn;->m:Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, v0, Lgfn;->m:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v9, v0, Lgfn;->m:Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07025c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v9, v10, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v9, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    iget-object v10, v0, Lgfn;->m:Landroid/widget/ImageView;

    invoke-virtual {v9, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, v0, Lgfn;->r:Lgem;

    iget-object v9, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    new-instance v10, Lgfm;

    invoke-direct {v10, v0, v3, v5}, Lgfm;-><init>(Lgfn;Lgem;I)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v3, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v8}, Lzy;->i(II)V

    iget-object v3, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lzy;->j(II)V

    iget-object v3, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x6

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object v8, v2

    move v10, v12

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    iget-object v1, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f070570

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v1}, Lzy;->b(I)Lzt;

    move-result-object v1

    iget-object v1, v1, Lzt;->d:Lzu;

    iput v3, v1, Lzu;->K:I

    iget-object v1, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v9

    const/4 v10, 0x3

    iget-object v1, v0, Lgfn;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v11

    const/4 v12, 0x4

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07056e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    iget-object v1, v0, Lgfn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lgfn;->addView(Landroid/view/View;)V

    :cond_8
    iget-boolean v1, v0, Lgfn;->o:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07056a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_4
    iget-boolean v3, v0, Lgfn;->o:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f070569

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_5
    iget-object v8, v0, Lgfn;->c:Lges;

    iget-object v8, v8, Lges;->d:Lmvv;

    invoke-virtual {v8}, Lmvv;->size()I

    move-result v8

    const v15, 0x7f08041f

    const v13, 0x7f07056b

    if-ge v8, v14, :cond_d

    iget-object v5, v0, Lgfn;->c:Lges;

    iget-object v5, v5, Lges;->d:Lmvv;

    invoke-virtual {v5}, Lmvv;->size()I

    move-result v5

    const/4 v8, -0x1

    add-int/2addr v5, v8

    :goto_6
    if-ltz v5, :cond_13

    iget-object v8, v0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iget-object v9, v0, Lgfn;->c:Lges;

    iget-object v9, v9, Lges;->d:Lmvv;

    invoke-virtual {v9, v5}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lget;

    iget-object v10, v0, Lgfn;->b:Ljava/util/Map;

    iget-object v11, v9, Lget;->a:Lgej;

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Lgfn;->i:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lget;->d:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v10, Lgfm;

    invoke-direct {v10, v0, v9, v4}, Lgfm;-><init>(Lgfn;Lget;I)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lzy;->i(II)V

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lzy;->j(II)V

    iget-object v10, v9, Lget;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    invoke-virtual {v8, v15}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {v8, v6}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v9, v9, Lget;->a:Lgej;

    iget-object v10, v0, Lgfn;->g:Lgej;

    invoke-virtual {v9, v10}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v8, v0, Lgfn;->c:Lges;

    iget-object v8, v8, Lges;->d:Lmvv;

    invoke-virtual {v8}, Lmvv;->size()I

    move-result v8

    const/4 v9, -0x1

    add-int/2addr v8, v9

    if-ne v5, v8, :cond_b

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object v8, v2

    move v10, v12

    const v15, 0x7f07056b

    move v13, v3

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    goto :goto_7

    :cond_b
    const v15, 0x7f07056b

    :goto_7
    add-int/lit8 v8, v5, 0x1

    iget-object v9, v0, Lgfn;->c:Lges;

    iget-object v9, v9, Lges;->d:Lmvv;

    invoke-virtual {v9}, Lmvv;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v10, 0x7

    iget-object v11, v0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v11

    const/4 v12, 0x6

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    :cond_c
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object v8, v2

    move v13, v1

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v10, 0x3

    const/4 v12, 0x3

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    invoke-virtual {v0, v14}, Lgfn;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    const v13, 0x7f07056b

    const v15, 0x7f08041f

    goto/16 :goto_6

    :cond_d
    const v15, 0x7f07056b

    iget-object v8, v0, Lgfn;->c:Lges;

    iget-object v8, v8, Lges;->d:Lmvv;

    invoke-virtual {v8}, Lmvv;->size()I

    move-result v8

    const/4 v9, 0x6

    if-gt v8, v9, :cond_e

    goto :goto_8

    :cond_e
    const/4 v5, 0x0

    :goto_8
    invoke-static {v5}, Lmoz;->e(Z)V

    iget-object v5, v0, Lgfn;->c:Lges;

    iget-object v5, v5, Lges;->d:Lmvv;

    invoke-virtual {v5}, Lmvv;->size()I

    move-result v5

    const/4 v8, -0x1

    add-int/2addr v5, v8

    :goto_9
    if-ltz v5, :cond_13

    iget-object v8, v0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Landroid/widget/FrameLayout;

    invoke-virtual {v14, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iget-object v9, v0, Lgfn;->c:Lges;

    iget-object v9, v9, Lges;->d:Lmvv;

    invoke-virtual {v9, v5}, Lmvv;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lget;

    iget-object v10, v0, Lgfn;->b:Ljava/util/Map;

    iget-object v11, v9, Lget;->a:Lgej;

    invoke-interface {v10, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v0, Lgfn;->i:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v9, Lget;->d:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v10, Lgfm;

    const/4 v13, 0x2

    invoke-direct {v10, v0, v9, v13}, Lgfm;-><init>(Lgfn;Lget;I)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lzy;->i(II)V

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lgfn;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v2, v10, v11}, Lzy;->j(II)V

    iget-object v10, v9, Lget;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v10}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    const v12, 0x7f08041f

    invoke-virtual {v8, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    invoke-virtual {v8, v6}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v8, v7}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v9, v9, Lget;->a:Lgej;

    iget-object v10, v0, Lgfn;->g:Lgej;

    invoke-virtual {v9, v10}, Lgej;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setSelected(Z)V

    iget-object v8, v0, Lgfn;->c:Lges;

    iget-object v8, v8, Lges;->d:Lmvv;

    invoke-virtual {v8}, Lmvv;->size()I

    move-result v8

    const/16 v16, -0x1

    add-int/lit8 v8, v8, -0x1

    if-eq v5, v8, :cond_11

    iget-object v8, v0, Lgfn;->c:Lges;

    iget-object v8, v8, Lges;->d:Lmvv;

    invoke-virtual {v8}, Lmvv;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    if-ne v5, v8, :cond_f

    const/16 v17, 0x2

    const v19, 0x7f08041f

    goto :goto_a

    :cond_f
    add-int/lit8 v8, v5, 0x1

    iget-object v9, v0, Lgfn;->c:Lges;

    iget-object v9, v9, Lges;->d:Lmvv;

    invoke-virtual {v9}, Lmvv;->size()I

    move-result v9

    if-ge v8, v9, :cond_10

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v10, 0x7

    iget-object v11, v0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v11

    const/16 v17, 0x6

    const/16 v18, 0x0

    move-object v8, v2

    const v19, 0x7f08041f

    move/from16 v12, v17

    const/16 v17, 0x2

    move/from16 v13, v18

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    goto :goto_b

    :cond_10
    const/16 v17, 0x2

    const v19, 0x7f08041f

    goto :goto_b

    :cond_11
    const/16 v17, 0x2

    const v19, 0x7f08041f

    :goto_a
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v11, 0x0

    const/4 v12, 0x7

    move-object v8, v2

    move v10, v12

    move v13, v3

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    :goto_b
    iget-object v8, v0, Lgfn;->c:Lges;

    iget-object v8, v8, Lges;->d:Lmvv;

    invoke-virtual {v8}, Lmvv;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x3

    if-lt v5, v8, :cond_12

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object v8, v2

    move v13, v1

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    goto :goto_c

    :cond_12
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object v8, v2

    move v13, v1

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getId()I

    move-result v9

    const/4 v10, 0x3

    iget-object v8, v0, Lgfn;->h:Ljava/util/ArrayList;

    add-int/lit8 v11, v5, 0x3

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getId()I

    move-result v11

    const/4 v13, 0x0

    move-object v8, v2

    invoke-virtual/range {v8 .. v13}, Lzy;->h(IIIII)V

    :goto_c
    invoke-virtual {v0, v14}, Lgfn;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_9

    :cond_13
    invoke-virtual {v2, v0}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final f(Lgej;)V
    .locals 6

    iput-object p1, p0, Lgfn;->g:Lgej;

    invoke-virtual {p0}, Lgfn;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lgfn;->h:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iget-object v5, p0, Lgfn;->b:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lgfn;->c:Lges;

    iget-object v0, v0, Lges;->d:Lmvv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_3
    if-ge v2, v1, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lget;

    iget-object v4, v3, Lget;->a:Lgej;

    add-int/lit8 v2, v2, 0x1

    if-ne v4, p1, :cond_3

    iget-object p1, v3, Lget;->c:Ljava/lang/String;

    iget-object v0, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v3, Lget;->d:Ljava/lang/String;

    iget-object v0, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lgfn;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method
