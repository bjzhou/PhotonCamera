.class public final Lfvc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lfvc;->b:I

    iput-object p1, p0, Lfvc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfvc;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfvd;Lfvb;I)V
    .locals 0

    iput p3, p0, Lfvc;->b:I

    iput-object p1, p0, Lfvc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfvc;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lic;Lib;I)V
    .locals 0

    iput p3, p0, Lfvc;->b:I

    iput-object p1, p0, Lfvc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfvc;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljee;Lkxr;I[B)V
    .locals 0

    iput p3, p0, Lfvc;->b:I

    iput-object p1, p0, Lfvc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfvc;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lfvc;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a:Laia;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Laia;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lfvc;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p0}, Lafb;->i(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Ljee;

    iget-boolean v0, v0, Ljee;->a:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lfvc;->c:Ljava/lang/Object;

    check-cast v0, Lkxr;

    iget-object v0, v0, Lkxr;->b:Ljava/lang/Object;

    check-cast v0, Ljby;

    invoke-virtual {v0}, Ljby;->a()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v1, p0, Lfvc;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljee;

    iget-object v2, v2, Ljee;->f:Ljex;

    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->l()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, v0, Ljby;->d:Landroid/app/PendingIntent;

    invoke-static {v0}, Ljhp;->ab(Ljava/lang/Object;)V

    iget-object v5, p0, Lfvc;->c:Ljava/lang/Object;

    check-cast v5, Lkxr;

    iget v5, v5, Lkxr;->a:I

    invoke-static {v1, v0, v5, v4}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v2, v0, v3}, Ljex;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lfvc;->a:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Ljee;

    iget-object v5, v5, Ljee;->d:Ljcd;

    check-cast v2, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->l()Landroid/app/Activity;

    move-result-object v2

    iget v6, v0, Ljby;->c:I

    invoke-virtual {v5, v2, v6, v1}, Ljce;->g(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lfvc;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljee;

    iget-object v2, v2, Ljee;->d:Ljcd;

    check-cast v1, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->l()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lfvc;->a:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljee;

    iget-object v4, v4, Ljee;->f:Ljex;

    iget v0, v0, Ljby;->c:I

    const-string v5, "d"

    invoke-virtual {v2, v1, v0, v5}, Ljce;->g(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Ljgj;

    invoke-direct {v6, v5, v4}, Ljgj;-><init>(Landroid/content/Intent;Ljex;)V

    invoke-virtual {v2, v1, v0, v6, v3}, Ljcd;->b(Landroid/content/Context;ILjgk;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v4, "GooglePlayServicesErrorDialog"

    invoke-virtual {v2, v1, v0, v4, v3}, Ljcd;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_2
    iget v2, v0, Ljby;->c:I

    const/16 v5, 0x12

    if-ne v2, v5, :cond_4

    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljee;

    iget-object v2, v2, Ljee;->d:Ljcd;

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->l()Landroid/app/Activity;

    move-result-object v0

    iget-object v6, p0, Lfvc;->a:Ljava/lang/Object;

    new-instance v7, Landroid/widget/ProgressBar;

    const v8, 0x101007a

    invoke-direct {v7, v0, v1, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {v7, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {v7, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-static {v0, v5}, Ljgf;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v4, ""

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    const-string v4, "GooglePlayServicesUpdatingDialog"

    invoke-virtual {v2, v0, v3, v4, v6}, Ljcd;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->l()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljes;

    invoke-direct {v2, p0, v3, v1}, Ljes;-><init>(Lfvc;Landroid/app/Dialog;[B)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v3, Ljet;

    invoke-direct {v3, v2}, Ljet;-><init>(Ljes;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-object v0, v3, Ljet;->a:Landroid/content/Context;

    invoke-static {v0}, Ljcr;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Ljes;->a()V

    invoke-virtual {v3}, Ljet;->a()V

    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lfvc;->a:Ljava/lang/Object;

    iget-object v2, p0, Lfvc;->c:Ljava/lang/Object;

    check-cast v2, Lkxr;

    iget v2, v2, Lkxr;->a:I

    check-cast v1, Ljee;

    invoke-virtual {v1, v0, v2}, Ljee;->a(Ljby;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lic;

    iget-object v0, v0, Lic;->c:Lgw;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lgw;->b:Lgu;

    if-eqz v2, :cond_5

    invoke-interface {v2, v0}, Lgu;->D(Lgw;)V

    :cond_5
    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lic;

    iget-object v0, v0, Lic;->f:Lhl;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfvc;->c:Ljava/lang/Object;

    check-cast v0, Lhh;

    invoke-virtual {v0}, Lhh;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    iget-object v2, p0, Lfvc;->c:Ljava/lang/Object;

    check-cast v2, Lib;

    check-cast v0, Lic;

    iput-object v2, v0, Lic;->i:Lib;

    :cond_6
    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lic;

    iput-object v1, v0, Lic;->k:Lfvc;

    return-void

    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lfvd;

    iget-object v0, v0, Lfvd;->a:Lkbc;

    iget-object v1, p0, Lfvc;->c:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lfvc;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lfvb;->a()V
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lfvd;

    iget-object v0, v0, Lfvd;->a:Lkbc;

    :goto_1
    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v1, Lfvd;

    iget-object v1, v1, Lfvd;->b:Ljuh;

    new-instance v2, Lfof;

    const/16 v3, 0x10

    invoke-direct {v2, v0, v3}, Lfof;-><init>(Ljava/lang/Exception;I)V

    invoke-virtual {v1, v2}, Ljuh;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lfvd;

    iget-object v0, v0, Lfvd;->a:Lkbc;

    goto :goto_1

    :goto_2
    iget-object v1, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v1, Lfvd;

    iget-object v1, v1, Lfvd;->a:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_3
    iget-object v0, p0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Lfvd;

    iget-object v0, v0, Lfvd;->a:Lkbc;

    goto :goto_1

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
