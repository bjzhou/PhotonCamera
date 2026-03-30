.class public final Lhbm;
.super Lmsj;
.source "PG"

# interfaces
.implements Lhbo;


# static fields
.field public static final a:Ljava/lang/Integer;


# instance fields
.field private final b:Lhoh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhbm;->a:Ljava/lang/Integer;

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

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lmse;Lhoh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lhbm;->b:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lmsj;-><init>(Landroid/content/Context;Lmse;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 11

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    const v1, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lhbm;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    new-instance v9, Lmsh;

    nop

    nop

    nop

    const v3, 0x7f140692

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    const v3, 0x7f140691

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    const-string v3, "https://www.gstatic.com/aiux/gca/stabilization/Standard_EDUPanel_376x320.gif"

    nop

    invoke-static {v3}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v6

    nop

    const v3, 0x7f140690

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    const v10, 0x7f140689

    nop

    nop

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    move-object v3, v9

    nop

    invoke-direct/range {v3 .. v8}, Lmsh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f140696

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lhbm;->b:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v4, Lhly;->Q:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    new-instance v3, Lmsh;

    nop

    const v4, 0x7f14068c

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    const v4, 0x7f14068b

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    const-string v4, "https://www.gstatic.com/aiux/gca/stabilization/Locked_EDUPanel_376x320.gif"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v4

    nop

    invoke-static {v4}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v7

    nop

    nop

    nop

    const v4, 0x7f14068a

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    nop

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    move-object v4, v3

    nop

    invoke-direct/range {v4 .. v9}, Lmsh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f140694

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, p0, Lhbm;->b:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lhly;->R:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lmsh;

    nop

    const v4, 0x7f140688

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    const v4, 0x7f140687

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    const-string v4, "https://www.gstatic.com/aiux/gca/stabilization/Active_EDUPanel_376x320.gif"

    nop

    nop

    nop

    invoke-static {v4}, Lnar;->n(Ljava/lang/Object;)Lnar;

    move-result-object v4

    nop

    nop

    invoke-static {v4}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v7

    nop

    const v4, 0x7f140686

    nop

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    nop

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    move-object v4, v3

    nop

    nop

    nop

    nop

    invoke-direct/range {v4 .. v9}, Lmsh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v3, 0x7f140693

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lmsj;->b()Landroid/view/View;

    move-result-object v6

    nop

    nop

    sget-object v1, Lhbm;->a:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    new-instance v4, Lhbl;

    nop

    invoke-direct {v4}, Lhbl;-><init>()V

    new-instance v5, Ljef;

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-direct {v5, v0, v1}, Ljef;-><init>(Ljava/lang/Object;I)V

    const/4 v3, 0x1

    nop

    nop

    nop

    move-object v0, p0

    nop

    nop

    nop

    move-object v1, v6

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v5}, Lmsj;->c(Landroid/view/View;Ljava/util/List;ILrmb;Lrmj;)Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    invoke-virtual {p0, v1, v6, v0}, Lmsj;->d(ILandroid/view/View;Landroidx/wear/ambient/AmbientMode$AmbientController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop
.end method
