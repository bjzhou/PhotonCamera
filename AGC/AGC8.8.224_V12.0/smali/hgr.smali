.class public final synthetic Lhgr;
.super Ljava/lang/Object;

# interfaces
.implements Ljzs;


# instance fields
.field public final synthetic a:Lhgw;

.field public final synthetic b:Lnph;


# direct methods
.method public synthetic constructor <init>(Lhgw;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhgr;->a:Lhgw;

    iput-object p2, p0, Lhgr;->b:Lnph;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lhgr;->a:Lhgw;

    iget-object v2, v0, Lhgr;->b:Lnph;

    move-object/from16 v3, p1

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lhgw;->l()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget v4, v1, Lhgw;->r:I

    if-eqz v4, :cond_a

    const/4 v6, 0x1

    if-eq v4, v6, :cond_1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz v3, :cond_9

    iget-object v4, v1, Lhgw;->p:Lhgm;

    iget-object v7, v4, Lhgm;->b:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_2

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lhgj;

    iget-object v11, v4, Lhgm;->g:Ljew;

    invoke-static {}, Ljuh;->a()V

    iget-object v11, v11, Ljew;->a:Ljava/lang/Object;

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4, v10}, Lhgm;->removeView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v4, Lhgm;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, v1, Lhgw;->p:Lhgm;

    iget-object v7, v4, Lhgm;->c:Landroid/view/View;

    if-eqz v7, :cond_3

    invoke-virtual {v4, v7}, Lhgm;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v4, v1, Lhgw;->g:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    :goto_1
    if-ge v5, v4, :cond_8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lhgx;

    iget-boolean v8, v8, Lhgx;->c:Z

    if-eqz v8, :cond_4

    iget-object v8, v1, Lhgw;->p:Lhgm;

    iget-object v9, v8, Lhgm;->c:Landroid/view/View;

    if-eqz v9, :cond_4

    invoke-virtual {v8, v9}, Lhgm;->removeView(Landroid/view/View;)V

    iget-object v9, v8, Lhgm;->c:Landroid/view/View;

    invoke-virtual {v8, v9}, Lhgm;->addView(Landroid/view/View;)V

    :cond_4
    new-instance v8, Lhgj;

    iget-object v9, v1, Lhgw;->c:Landroid/content/Context;

    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lhgx;

    iget-object v10, v10, Lhgx;->a:Landroid/content/pm/ResolveInfo;

    invoke-direct {v8, v9, v10}, Lhgj;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v8}, Lhgj;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v11, 0x101045c

    invoke-virtual {v10, v11, v9, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v9, v9, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v8, v9}, Lhgj;->setBackgroundResource(I)V

    iget-object v9, v8, Lhgj;->c:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Lhgj;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v8, Lhgj;->c:Landroid/content/pm/ResolveInfo;

    iget-object v10, v8, Lhgj;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v9, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Lhgj;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v9, v8, Lhgj;->c:Landroid/content/pm/ResolveInfo;

    iget-object v10, v8, Lhgj;->d:Landroid/content/pm/PackageManager;

    invoke-virtual {v8}, Lhgj;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lhgj;->a(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lhgj;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lhgj;->setVisibility(I)V

    iget-object v12, v1, Lhgw;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    new-instance v9, Lgfm;

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v9

    move-object v11, v8

    invoke-direct/range {v10 .. v17}, Lgfm;-><init>(Lhgj;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V

    invoke-virtual {v8, v9}, Lhgj;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lclb;

    const/16 v10, 0x9

    invoke-direct {v9, v1, v10}, Lclb;-><init>(Lhgw;I)V

    invoke-virtual {v8, v9}, Lhgj;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v9, v1, Lhgw;->l:Liko;

    invoke-static {v9}, Ljvd;->D(Liko;)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Lhgj;->setRotation(F)V

    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/drawable/Drawable;

    iget-boolean v10, v1, Lhgw;->a:Z

    if-eqz v10, :cond_6

    invoke-virtual {v8, v9}, Lhgj;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_6
    const/16 v10, 0x300

    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    invoke-virtual {v8}, Lhgj;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lbol;->c(Landroid/content/Context;)Lbpd;

    move-result-object v10

    invoke-virtual {v10}, Lbpd;->c()Lbpb;

    move-result-object v10

    invoke-virtual {v10, v9}, Lbpb;->d(Landroid/graphics/drawable/Drawable;)Lbpb;

    move-result-object v9

    invoke-static {}, Lbzp;->a()Lbzp;

    move-result-object v10

    invoke-virtual {v9, v10}, Lbpb;->b(Lbzg;)Lbpb;

    move-result-object v9

    invoke-virtual {v8}, Lhgj;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070675

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v9, v10, v10}, Lbzg;->u(II)Lbzg;

    move-result-object v9

    check-cast v9, Lbpb;

    invoke-virtual {v9, v8}, Lbpb;->k(Landroid/widget/ImageView;)Lcab;

    :goto_3
    iget-object v9, v1, Lhgw;->p:Lhgm;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    invoke-direct {v10, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v11, v9, Lhgm;->b:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v9, Lhgm;->g:Ljew;

    invoke-virtual {v11, v8}, Ljew;->W(Lhgi;)V

    :cond_7
    iget-object v11, v9, Lhgm;->b:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v8, v10}, Lhgm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, v1, Lhgw;->g:Ljava/util/ArrayList;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lhgx;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :cond_9
    return-void

    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method
