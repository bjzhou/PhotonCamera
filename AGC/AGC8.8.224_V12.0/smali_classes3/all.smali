.class public final Lall;
.super Ljava/lang/Object;


# static fields
.field public static final a:Laly;

.field public static final b:Laly;

.field public static final c:Laly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lalk;

    invoke-direct {v0}, Lalk;-><init>()V

    sput-object v0, Lall;->a:Laly;

    new-instance v0, Lalk;

    invoke-direct {v0}, Lalk;-><init>()V

    sput-object v0, Lall;->b:Laly;

    new-instance v0, Lalk;

    invoke-direct {v0}, Lalk;-><init>()V

    sput-object v0, Lall;->c:Laly;

    return-void
.end method

.method public static final a(Lalz;)Lalj;
    .locals 7

    sget-object v0, Lall;->a:Laly;

    invoke-virtual {p0, v0}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqn;

    if-eqz v0, :cond_8

    sget-object v1, Lall;->b:Laly;

    invoke-virtual {p0, v1}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lalw;

    if-eqz v1, :cond_7

    sget-object v2, Lall;->c:Laly;

    invoke-virtual {p0, v2}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Lalu;->d:Laly;

    invoke-virtual {p0, v3}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-interface {v0}, Laqn;->getSavedStateRegistry()Laqm;

    move-result-object v0

    invoke-virtual {v0}, Laqm;->d()Laql;

    move-result-object v0

    instance-of v3, v0, Lalm;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Lalm;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v1}, Lall;->b(Lalw;)Laln;

    move-result-object v1

    iget-object v3, v1, Laln;->a:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lalj;

    if-nez v3, :cond_4

    sget-object v3, Lalj;->a:[Ljava/lang/Class;

    invoke-virtual {v0}, Lalm;->b()V

    iget-object v3, v0, Lalm;->a:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iget-object v5, v0, Lalm;->a:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v0, Lalm;->a:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iput-object v4, v0, Lalm;->a:Landroid/os/Bundle;

    :cond_3
    invoke-static {v3, v2}, Laby;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Lalj;

    move-result-object v3

    iget-object v0, v1, Laln;->a:Ljava/util/Map;

    invoke-interface {v0, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lalw;)Laln;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lawu;->b:Lawu;

    const-class v2, Laln;

    invoke-static {v2}, Lonl;->a(Ljava/lang/Class;)Lonx;

    move-result-object v2

    new-instance v3, Lbby;

    check-cast v2, Lona;

    iget-object v2, v2, Lona;->d:Ljava/lang/Class;

    invoke-direct {v3, v2, v1}, Lbby;-><init>(Ljava/lang/Class;Lomk;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lama;

    const/4 v2, 0x0

    new-array v2, v2, [Lbby;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbby;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbby;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lama;-><init>([Lbby;[B[B)V

    invoke-interface {p0}, Lalw;->getViewModelStore$ar$class_merging$ar$class_merging()Lbkb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, p0, Lakn;

    if-eqz v2, :cond_0

    check-cast p0, Lakn;

    invoke-interface {p0}, Lakn;->getDefaultViewModelCreationExtras()Lalz;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lalx;->a:Lalx;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Laln;

    const-string v3, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-static {v3, v2, v0, v1, p0}, Lach;->d(Ljava/lang/String;Ljava/lang/Class;Lbkb;Lalt;Lalz;)Lalr;

    move-result-object p0

    check-cast p0, Laln;

    return-object p0
.end method

.method public static final c(Laqn;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Laqn;->getLifecycle()Laks;

    move-result-object v0

    iget-object v0, v0, Laks;->a:Lakr;

    sget-object v1, Lakr;->b:Lakr;

    if-eq v0, v1, :cond_1

    sget-object v1, Lakr;->c:Lakr;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Laqn;->getSavedStateRegistry()Laqm;

    move-result-object v0

    invoke-virtual {v0}, Laqm;->d()Laql;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lalm;

    invoke-interface {p0}, Laqn;->getSavedStateRegistry()Laqm;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lalw;

    invoke-direct {v0, v1, v2}, Lalm;-><init>(Laqm;Lalw;)V

    invoke-interface {p0}, Laqn;->getSavedStateRegistry()Laqm;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, Laqm;->b(Ljava/lang/String;Laql;)V

    invoke-interface {p0}, Laqn;->getLifecycle()Laks;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Lalm;)V

    invoke-virtual {p0, v1}, Laks;->a(Laku;)V

    return-void

    :cond_2
    return-void
.end method
