.class public Lbz;
.super Lpl;

# interfaces
.implements Laas;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field final d:Laks;

.field public final e:Lbkb;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lpl;-><init>()V

    new-instance v0, Lby;

    invoke-direct {v0, p0}, Lby;-><init>(Lbz;)V

    new-instance v1, Lbkb;

    invoke-direct {v1, v0}, Lbkb;-><init>(Lce;)V

    iput-object v1, p0, Lbz;->e:Lbkb;

    new-instance v0, Laks;

    invoke-direct {v0, p0}, Laks;-><init>(Lakv;)V

    iput-object v0, p0, Lbz;->d:Laks;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbz;->c:Z

    invoke-virtual {p0}, Lpl;->getSavedStateRegistry()Laqm;

    move-result-object v1

    new-instance v2, Lcg;

    invoke-direct {v2, p0, v0}, Lcg;-><init>(Lbz;I)V

    const-string v3, "android:support:lifecycle"

    invoke-virtual {v1, v3, v2}, Laqm;->b(Ljava/lang/String;Laql;)V

    new-instance v1, Lbx;

    invoke-direct {v1, p0, v0}, Lbx;-><init>(Lbz;I)V

    invoke-virtual {p0, v1}, Lpl;->d(Laea;)V

    new-instance v1, Lbx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lbx;-><init>(Lbz;I)V

    iget-object v2, p0, Lpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Leh;

    invoke-direct {v1, p0, v0}, Leh;-><init>(Lbz;I)V

    invoke-virtual {p0, v1}, Lpl;->l(Lpu;)V

    return-void
.end method

.method private static h(Lcq;Lakr;)Z
    .locals 5

    iget-object p0, p0, Lcq;->a:Lcv;

    invoke-virtual {p0}, Lcv;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbw;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lbw;->getHost()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lbw;->getChildFragmentManager()Lcq;

    move-result-object v2

    invoke-static {v2, p1}, Lbz;->h(Lcq;Lakr;)Z

    move-result v2

    or-int/2addr v0, v2

    :cond_1
    iget-object v2, v1, Lbw;->W:Ldg;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ldg;->getLifecycle()Laks;

    move-result-object v2

    iget-object v2, v2, Laks;->a:Lakr;

    sget-object v4, Lakr;->d:Lakr;

    invoke-virtual {v2, v4}, Lakr;->a(Lakr;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v1, Lbw;->W:Ldg;

    iget-object v0, v0, Ldg;->a:Laks;

    invoke-virtual {v0, p1}, Laks;->d(Lakr;)V

    const/4 v0, 0x1

    :cond_2
    iget-object v2, v1, Lbw;->ab:Laks;

    iget-object v2, v2, Laks;->a:Lakr;

    sget-object v4, Lakr;->d:Lakr;

    invoke-virtual {v2, v4}, Lakr;->a(Lakr;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v1, Lbw;->ab:Laks;

    invoke-virtual {v0, p1}, Laks;->d(Lakr;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public final bI()Lcq;
    .locals 1

    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->w()Lcq;

    move-result-object v0

    return-object v0
.end method

.method final bJ(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    iget-object v0, v0, Lcq;->c:Lcf;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v1, p4, v0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "--autofill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :sswitch_1
    const-string v0, "--contentcapture"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "--list-dumpables"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "--dump-dumpable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "--translation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget p1, Ladg;->a:I

    :pswitch_1
    return-void

    :cond_1
    :goto_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbz;->a:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbz;->b:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbz;->c:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    invoke-virtual {p0}, Lbz;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lamd;->a(Lakv;)Lamd;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lamd;->d(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2
    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->w()Lcq;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcq;->C(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2673d6ef -> :sswitch_4
        0x5fd0f67 -> :sswitch_3
        0x1c2b8816 -> :sswitch_2
        0x4519f64d -> :sswitch_1
        0x56b9c952 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method final e()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Lbz;->bI()Lcq;

    move-result-object v0

    sget-object v1, Lakr;->c:Lakr;

    invoke-static {v0, v1}, Lbz;->h(Lcq;Lakr;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->x()V

    invoke-super {p0, p1, p2, p3}, Lpl;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lpl;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lbz;->d:Laks;

    sget-object v0, Lakq;->ON_CREATE:Lakq;

    invoke-virtual {p1, v0}, Laks;->b(Lakq;)V

    iget-object p1, p0, Lbz;->e:Lbkb;

    iget-object p1, p1, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Lce;

    iget-object p1, p1, Lce;->e:Lcq;

    invoke-virtual {p1}, Lcq;->p()V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lbz;->bJ(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lbz;->bJ(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lpl;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lpl;->onDestroy()V

    iget-object v0, p0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    invoke-virtual {v0}, Lcq;->q()V

    iget-object v0, p0, Lbz;->d:Laks;

    sget-object v1, Lakq;->ON_DESTROY:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lpl;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbz;->e:Lbkb;

    iget-object p1, p1, Lbkb;->a:Ljava/lang/Object;

    check-cast p1, Lce;

    iget-object p1, p1, Lce;->e:Lcq;

    invoke-virtual {p1, p2}, Lcq;->O(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lpl;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbz;->b:Z

    iget-object v0, p0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    invoke-virtual {v0}, Lcq;->w()V

    iget-object v0, p0, Lbz;->d:Laks;

    sget-object v1, Lakq;->ON_PAUSE:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Lpl;->onPostResume()V

    iget-object v0, p0, Lbz;->d:Laks;

    sget-object v1, Lakq;->ON_RESUME:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    iget-object v0, p0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    invoke-virtual {v0}, Lcq;->y()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->x()V

    invoke-super {p0, p1, p2, p3}, Lpl;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->x()V

    invoke-super {p0}, Lpl;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbz;->b:Z

    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->y()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->x()V

    invoke-super {p0}, Lpl;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbz;->c:Z

    iget-boolean v0, p0, Lbz;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbz;->a:Z

    iget-object v0, p0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    invoke-virtual {v0}, Lcq;->n()V

    :cond_0
    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->y()V

    iget-object v0, p0, Lbz;->d:Laks;

    sget-object v1, Lakq;->ON_START:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    iget-object v0, p0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    invoke-virtual {v0}, Lcq;->z()V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lbz;->e:Lbkb;

    invoke-virtual {v0}, Lbkb;->x()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lpl;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbz;->c:Z

    invoke-virtual {p0}, Lbz;->e()V

    iget-object v0, p0, Lbz;->e:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lce;

    iget-object v0, v0, Lce;->e:Lcq;

    invoke-virtual {v0}, Lcq;->B()V

    iget-object v0, p0, Lbz;->d:Laks;

    sget-object v1, Lakq;->ON_STOP:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    return-void
.end method
