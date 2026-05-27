.class public final synthetic Lhgq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhgw;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lnph;


# direct methods
.method public synthetic constructor <init>(Lhgw;Ljava/util/ArrayList;Lnph;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhgq;->a:Lhgw;

    iput-object p2, p0, Lhgq;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lhgq;->c:Lnph;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lhgq;->a:Lhgw;

    iget-object v1, p0, Lhgq;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lhgq;->c:Lnph;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lhgx;

    invoke-virtual {v0}, Lhgw;->l()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v7, v0, Lhgw;->a:Z

    if-eqz v7, :cond_1

    iget-object v7, v0, Lhgw;->c:Landroid/content/Context;

    const v8, 0x7f0803f4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    iget-object v7, v6, Lhgx;->a:Landroid/content/pm/ResolveInfo;

    iget-object v8, v0, Lhgw;->c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :goto_1
    new-instance v8, Landroid/util/Pair;

    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-virtual {v2, v3}, Lnph;->e(Ljava/lang/Object;)Z

    return-void
.end method
