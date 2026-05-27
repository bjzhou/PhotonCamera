.class public final Ldg;
.super Ljava/lang/Object;

# interfaces
.implements Lakn;
.implements Laqn;
.implements Lalw;


# instance fields
.field public a:Laks;

.field public b:Lbza;

.field private final c:Lbw;

.field private final d:Ljava/lang/Runnable;

.field private final e:Lbkb;


# direct methods
.method public constructor <init>(Lbw;Lbkb;Ljava/lang/Runnable;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-object p4, p0, Ldg;->a:Laks;

    iput-object p4, p0, Ldg;->b:Lbza;

    iput-object p1, p0, Ldg;->c:Lbw;

    iput-object p2, p0, Ldg;->e:Lbkb;

    iput-object p3, p0, Ldg;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Lakq;)V
    .locals 1

    iget-object v0, p0, Ldg;->a:Laks;

    invoke-virtual {v0, p1}, Laks;->b(Lakq;)V

    return-void
.end method

.method final b()V
    .locals 1

    iget-object v0, p0, Ldg;->a:Laks;

    if-nez v0, :cond_0

    new-instance v0, Laks;

    invoke-direct {v0, p0}, Laks;-><init>(Lakv;)V

    iput-object v0, p0, Ldg;->a:Laks;

    invoke-static {p0}, Laff;->d(Laqn;)Lbza;

    move-result-object v0

    iput-object v0, p0, Ldg;->b:Lbza;

    invoke-virtual {v0}, Lbza;->g()V

    iget-object v0, p0, Ldg;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lalz;
    .locals 3

    iget-object v0, p0, Ldg;->c:Lbw;

    invoke-virtual {v0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Application;

    goto :goto_1

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Lamb;

    invoke-direct {v1}, Lamb;-><init>()V

    if-eqz v0, :cond_2

    sget-object v2, Lals;->b:Laly;

    invoke-virtual {v1, v2, v0}, Lamb;->b(Laly;Ljava/lang/Object;)V

    :cond_2
    sget-object v0, Lall;->a:Laly;

    iget-object v2, p0, Ldg;->c:Lbw;

    invoke-virtual {v1, v0, v2}, Lamb;->b(Laly;Ljava/lang/Object;)V

    sget-object v0, Lall;->b:Laly;

    invoke-virtual {v1, v0, p0}, Lamb;->b(Laly;Ljava/lang/Object;)V

    iget-object v0, p0, Ldg;->c:Lbw;

    iget-object v0, v0, Lbw;->l:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    sget-object v2, Lall;->c:Laly;

    invoke-virtual {v1, v2, v0}, Lamb;->b(Laly;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public final getLifecycle()Laks;
    .locals 1

    invoke-virtual {p0}, Ldg;->b()V

    iget-object v0, p0, Ldg;->a:Laks;

    return-object v0
.end method

.method public final getSavedStateRegistry()Laqm;
    .locals 1

    invoke-virtual {p0}, Ldg;->b()V

    iget-object v0, p0, Ldg;->b:Lbza;

    iget-object v0, v0, Lbza;->b:Ljava/lang/Object;

    check-cast v0, Laqm;

    return-object v0
.end method

.method public final getViewModelStore$ar$class_merging$ar$class_merging()Lbkb;
    .locals 1

    invoke-virtual {p0}, Ldg;->b()V

    iget-object v0, p0, Ldg;->e:Lbkb;

    return-object v0
.end method
