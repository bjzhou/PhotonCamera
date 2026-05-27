.class public final Lalo;
.super Lalv;

# interfaces
.implements Lalt;


# instance fields
.field private a:Landroid/app/Application;

.field private final b:Lalt;

.field private c:Landroid/os/Bundle;

.field private d:Laks;

.field private e:Laqm;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lalv;-><init>()V

    new-instance v0, Lals;

    invoke-direct {v0}, Lals;-><init>()V

    iput-object v0, p0, Lalo;->b:Lalt;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Laqn;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lalv;-><init>()V

    invoke-interface {p2}, Laqn;->getSavedStateRegistry()Laqm;

    move-result-object v0

    iput-object v0, p0, Lalo;->e:Laqm;

    invoke-interface {p2}, Laqn;->getLifecycle()Laks;

    move-result-object p2

    iput-object p2, p0, Lalo;->d:Laks;

    iput-object p3, p0, Lalo;->c:Landroid/os/Bundle;

    iput-object p1, p0, Lalo;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Lals;->a:Lals;

    if-nez p2, :cond_0

    new-instance p2, Lals;

    invoke-direct {p2, p1}, Lals;-><init>(Landroid/app/Application;)V

    sput-object p2, Lals;->a:Lals;

    :cond_0
    sget-object p1, Lals;->a:Lals;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    new-instance p1, Lals;

    invoke-direct {p1}, Lals;-><init>()V

    :goto_0
    iput-object p1, p0, Lalo;->b:Lalt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lalr;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lalo;->c(Ljava/lang/String;Ljava/lang/Class;)Lalr;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Class;Lalz;)Lalr;
    .locals 5

    sget-object v0, Lalu;->d:Laly;

    invoke-virtual {p2, v0}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v1, Lall;->a:Laly;

    invoke-virtual {p2, v1}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lall;->b:Laly;

    invoke-virtual {p2, v1}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v0, Lals;->b:Laly;

    invoke-virtual {p2, v0}, Lalz;->a(Laly;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Lakh;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Lalp;->a:Ljava/util/List;

    invoke-static {p1, v2}, Lalp;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Lalp;->b:Ljava/util/List;

    invoke-static {p1, v2}, Lalp;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object v0, p0, Lalo;->b:Lalt;

    invoke-interface {v0, p1, p2}, Lalt;->b(Ljava/lang/Class;Lalz;)Lalr;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-static {p2}, Lall;->a(Lalz;)Lalj;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {p1, v2, v1}, Lalp;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lalr;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p2}, Lall;->a(Lalz;)Lalj;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {p1, v2, v0}, Lalp;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lalr;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lalo;->d:Laks;

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0, p1}, Lalo;->c(Ljava/lang/String;Ljava/lang/Class;)Lalr;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Class;)Lalr;
    .locals 7

    iget-object v0, p0, Lalo;->d:Laks;

    if-eqz v0, :cond_8

    const-class v0, Lakh;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lalo;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    sget-object v1, Lalp;->a:Ljava/util/List;

    invoke-static {p2, v1}, Lalp;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v1, Lalp;->b:Ljava/util/List;

    invoke-static {p2, v1}, Lalp;->b(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    iget-object p1, p0, Lalo;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lalo;->b:Lalt;

    invoke-interface {p1, p2}, Lalt;->a(Ljava/lang/Class;)Lalr;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lalu;->c:Lalu;

    if-nez p1, :cond_2

    new-instance p1, Lalu;

    invoke-direct {p1}, Lalu;-><init>()V

    sput-object p1, Lalu;->c:Lalu;

    :cond_2
    sget-object p1, Lalu;->c:Lalu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lalu;->a(Ljava/lang/Class;)Lalr;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    iget-object v2, p0, Lalo;->e:Laqm;

    iget-object v3, p0, Lalo;->d:Laks;

    iget-object v4, p0, Lalo;->c:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Laqm;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Lalj;->a:[Ljava/lang/Class;

    invoke-static {v5, v4}, Laby;->b(Landroid/os/Bundle;Landroid/os/Bundle;)Lalj;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p1, v4}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Lalj;)V

    invoke-virtual {v5, v2, v3}, Landroidx/lifecycle/SavedStateHandleController;->b(Laqm;Laks;)V

    invoke-static {v2, v3}, Labv;->e(Laqm;Laks;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lalo;->a:Landroid/app/Application;

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, p1

    iget-object p1, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Lalj;

    aput-object p1, v3, v2

    invoke-static {p2, v1, v3}, Lalp;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lalr;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, v5, Landroidx/lifecycle/SavedStateHandleController;->b:Lalj;

    aput-object v2, v0, p1

    invoke-static {p2, v1, v0}, Lalp;->a(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Lalr;

    move-result-object p1

    :goto_2
    iget-object p2, p1, Lalr;->h:Ljava/util/Map;

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    monitor-enter p2

    :try_start_0
    iget-object v1, p1, Lalr;->h:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v2, p1, Lalr;->h:Ljava/util/Map;

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    move-object v5, v1

    :goto_3
    iget-boolean p2, p1, Lalr;->j:Z

    if-eqz p2, :cond_7

    invoke-static {v5}, Lalr;->g(Ljava/lang/Object;)V

    :cond_7
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Lalr;)V
    .locals 2

    iget-object v0, p0, Lalo;->d:Laks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lalo;->e:Laqm;

    invoke-static {p1, v1, v0}, Labv;->d(Lalr;Laqm;Laks;)V

    :cond_0
    return-void
.end method
