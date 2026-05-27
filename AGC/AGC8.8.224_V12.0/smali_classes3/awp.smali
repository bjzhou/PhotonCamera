.class final Lawp;
.super Ljava/lang/Object;

# interfaces
.implements Laea;


# instance fields
.field public final a:Ljava/util/concurrent/locks/ReentrantLock;

.field public final b:Ljava/util/Set;

.field private final c:Landroid/content/Context;

.field private d:Lawl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lawp;->c:Landroid/content/Context;

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lawp;->a:Ljava/util/concurrent/locks/ReentrantLock;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lawp;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, p1}, Lawp;->b(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public final b(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lawp;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lawp;->c:Landroid/content/Context;

    sget v2, Lawn;->a:I

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v2

    invoke-static {v2}, Lago;->m(Landroid/view/WindowInsets;)Lago;

    move-result-object v2

    new-instance v3, Lawm;

    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1, v2}, Lawm;-><init>(Landroid/graphics/Rect;Lago;)V

    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/window/extensions/layout/DisplayFeature;

    instance-of v4, v2, Landroidx/window/extensions/layout/FoldingFeature;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-virtual {v2}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    sget-object v4, Lawd;->b:Lawd;

    goto :goto_1

    :pswitch_1
    sget-object v4, Lawd;->a:Lawd;

    :goto_1
    invoke-virtual {v2}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_2
    sget-object v6, Lawc;->b:Lawc;

    goto :goto_2

    :pswitch_3
    sget-object v6, Lawc;->a:Lawc;

    :goto_2
    new-instance v7, Lavo;

    invoke-virtual {v2}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v8}, Lavo;-><init>(Landroid/graphics/Rect;)V

    iget-object v8, v3, Lawm;->a:Lavo;

    invoke-virtual {v8}, Lavo;->c()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7}, Lavo;->a()I

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v7}, Lavo;->b()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v7}, Lavo;->b()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-eq v9, v10, :cond_2

    invoke-virtual {v7}, Lavo;->a()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-eq v9, v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v7}, Lavo;->b()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v7}, Lavo;->a()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v9, v10, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lavo;->b()I

    move-result v9

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v10

    if-ne v9, v10, :cond_4

    invoke-virtual {v7}, Lavo;->a()I

    move-result v7

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ne v7, v8, :cond_4

    goto :goto_3

    :cond_4
    new-instance v5, Lawe;

    new-instance v7, Lavo;

    invoke-virtual {v2}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v7, v2}, Lavo;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v5, v7, v4, v6}, Lawe;-><init>(Lavo;Lawd;Lawc;)V

    :cond_5
    :goto_3
    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lawl;

    invoke-direct {p1, v1}, Lawl;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lawp;->d:Lawl;

    iget-object p1, p0, Lawp;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laea;

    iget-object v2, p0, Lawp;->d:Lawl;

    invoke-interface {v1, v2}, Laea;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_7
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final c(Laea;)V
    .locals 2

    iget-object v0, p0, Lawp;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lawp;->d:Lawl;

    if-eqz v1, :cond_0

    invoke-interface {p1, v1}, Laea;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lawp;->b:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
