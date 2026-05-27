.class public Lbm;
.super Lbw;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final a:Landroid/content/DialogInterface$OnDismissListener;

.field private final ad:Landroid/content/DialogInterface$OnCancelListener;

.field private ae:I

.field private af:I

.field private ag:Z

.field private ah:I

.field private ai:Z

.field private final aj:Lale;

.field private ak:Z

.field private al:Z

.field private am:Z

.field public b:Z

.field public c:Landroid/app/Dialog;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lbw;-><init>()V

    new-instance v0, Lbi;

    invoke-direct {v0, p0}, Lbi;-><init>(Lbm;)V

    iput-object v0, p0, Lbm;->ad:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lbj;

    invoke-direct {v0, p0}, Lbj;-><init>(Lbm;)V

    iput-object v0, p0, Lbm;->a:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Lbm;->ae:I

    iput v0, p0, Lbm;->af:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbm;->ag:Z

    iput-boolean v1, p0, Lbm;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lbm;->ah:I

    new-instance v1, Lbk;

    invoke-direct {v1, p0}, Lbk;-><init>(Lbm;)V

    iput-object v1, p0, Lbm;->aj:Lale;

    iput-boolean v0, p0, Lbm;->d:Z

    return-void
.end method


# virtual methods
.method public final bb()Lcb;
    .locals 2

    invoke-super {p0}, Lbw;->bb()Lcb;

    move-result-object v0

    new-instance v1, Lbl;

    invoke-direct {v1, p0, v0}, Lbl;-><init>(Lbm;Lcb;)V

    return-object v1
.end method

.method public final c(Lcq;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm;->al:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm;->am:Z

    invoke-virtual {p1}, Lcq;->i()Lcx;

    move-result-object p1

    invoke-virtual {p1}, Lcx;->q()V

    invoke-virtual {p1, p0, p2}, Lcx;->o(Lbw;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcx;->h()V

    return-void
.end method

.method public final cr(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lbw;->cr(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Lbm;->N:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lbm;->c:Landroid/app/Dialog;

    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public d()Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog called for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v0, Lpm;

    invoke-virtual {p0}, Lbw;->requireContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lbm;->af:I

    invoke-direct {v0, v1, v2}, Lpm;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lbw;->onAttach(Landroid/content/Context;)V

    iget-object p1, p0, Lbw;->X:Lald;

    iget-object v0, p0, Lbm;->aj:Lale;

    const-string v1, "observeForever"

    invoke-static {v1}, Lalc;->a(Ljava/lang/String;)V

    new-instance v1, Lala;

    invoke-direct {v1, p1, v0}, Lala;-><init>(Lalc;Lale;)V

    iget-object p1, p1, Lalc;->c:Lqu;

    invoke-virtual {p1, v0, v1}, Lqu;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lalb;

    instance-of v0, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lalb;->d(Z)V

    :cond_0
    iget-boolean p1, p0, Lbm;->am:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbm;->al:Z

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lbw;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget v0, p0, Lbm;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lbm;->b:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbm;->ae:I

    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbm;->af:I

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbm;->ag:Z

    iget-boolean v0, p0, Lbm;->b:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbm;->b:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lbm;->ah:I

    :cond_1
    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-super {p0}, Lbw;->onDestroyView()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbm;->ak:Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Lbm;->al:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Lbm;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v1, p0, Lbm;->c:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm;->d:Z

    :cond_1
    return-void
.end method

.method public final onDetach()V
    .locals 2

    invoke-super {p0}, Lbw;->onDetach()V

    iget-boolean v0, p0, Lbm;->am:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbm;->al:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbm;->al:Z

    :cond_0
    iget-object v0, p0, Lbw;->X:Lald;

    iget-object v1, p0, Lbm;->aj:Lale;

    invoke-virtual {v0, v1}, Lalc;->f(Lale;)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    iget-boolean p1, p0, Lbm;->ak:Z

    if-nez p1, :cond_5

    const/4 p1, 0x3

    invoke-static {p1}, Lcq;->S(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean p1, p0, Lbm;->al:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lbm;->al:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbm;->am:Z

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iput-boolean p1, p0, Lbm;->ak:Z

    iget v0, p0, Lbm;->ah:I

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object v0

    iget v1, p0, Lbm;->ah:I

    if-ltz v1, :cond_3

    new-instance v2, Lcp;

    invoke-direct {v2, v0, v1}, Lcp;-><init>(Lcq;I)V

    invoke-virtual {v0, v2, p1}, Lcq;->D(Lco;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lbm;->ah:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lbw;->getParentFragmentManager()Lcq;

    move-result-object p1

    invoke-virtual {p1}, Lcq;->i()Lcx;

    move-result-object p1

    invoke-virtual {p1}, Lcx;->q()V

    invoke-virtual {p1, p0}, Lcx;->k(Lbw;)V

    invoke-virtual {p1}, Lcx;->i()V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public final onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 6

    invoke-virtual {p0, p1}, Lbw;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-boolean v0, p0, Lbm;->b:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lbm;->ai:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-boolean v0, p0, Lbm;->d:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lbm;->ai:Z

    invoke-virtual {p0}, Lbm;->d()Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, p0, Lbm;->c:Landroid/app/Dialog;

    iget-boolean v4, p0, Lbm;->b:Z

    if-eqz v4, :cond_3

    iget v4, p0, Lbm;->ae:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_1

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    :pswitch_1
    invoke-virtual {v3, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    invoke-virtual {p0}, Lbw;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v4, v3, Landroid/app/Activity;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lbm;->c:Landroid/app/Dialog;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v4, v3}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_2
    iget-object v3, p0, Lbm;->c:Landroid/app/Dialog;

    iget-boolean v4, p0, Lbm;->ag:Z

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v3, p0, Lbm;->c:Landroid/app/Dialog;

    iget-object v4, p0, Lbm;->ad:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v3, p0, Lbm;->c:Landroid/app/Dialog;

    iget-object v4, p0, Lbm;->a:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v2, p0, Lbm;->d:Z

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lbm;->c:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iput-boolean v0, p0, Lbm;->ai:Z

    goto :goto_2

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lbm;->ai:Z

    throw p1

    :cond_4
    :goto_2
    invoke-static {v1}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get layout inflater for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from dialog context"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    :cond_6
    return-object p1

    :cond_7
    :goto_3
    invoke-static {v1}, Lcq;->S(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getting layout inflater for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android:dialogShowing"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lbm;->ae:I

    if-eqz v0, :cond_1

    const-string v2, "android:style"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lbm;->af:I

    if-eqz v0, :cond_2

    const-string v2, "android:theme"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lbm;->ag:Z

    if-nez v0, :cond_3

    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lbm;->b:Z

    if-nez v0, :cond_4

    const-string v0, "android:showsDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lbm;->ah:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lbw;->onStart()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbm;->ak:Z

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Laci;->c(Landroid/view/View;Lakv;)V

    invoke-static {v0, p0}, Lacj;->b(Landroid/view/View;Lalw;)V

    invoke-static {v0, p0}, Lafh;->A(Landroid/view/View;Laqn;)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Lbw;->onStop()V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lbw;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbm;->c:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
