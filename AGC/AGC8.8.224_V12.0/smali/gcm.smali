.class public final synthetic Lgcm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Libg;II)V
    .locals 0

    iput p3, p0, Lgcm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcm;->b:Ljava/lang/Object;

    iput p2, p0, Lgcm;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lieb;II)V
    .locals 0

    iput p3, p0, Lgcm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcm;->b:Ljava/lang/Object;

    iput p2, p0, Lgcm;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;II)V
    .locals 0

    iput p3, p0, Lgcm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcm;->b:Ljava/lang/Object;

    iput p2, p0, Lgcm;->a:I

    return-void
.end method

.method public constructor <init>(Ljen;II)V
    .locals 0

    iput p3, p0, Lgcm;->c:I

    iput-object p1, p0, Lgcm;->b:Ljava/lang/Object;

    iput p2, p0, Lgcm;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkbm;II)V
    .locals 0

    iput p3, p0, Lgcm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcm;->b:Ljava/lang/Object;

    iput p2, p0, Lgcm;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lkjk;II)V
    .locals 0

    iput p3, p0, Lgcm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcm;->b:Ljava/lang/Object;

    iput p2, p0, Lgcm;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lkxe;II)V
    .locals 0

    iput p3, p0, Lgcm;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgcm;->b:Ljava/lang/Object;

    iput p2, p0, Lgcm;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lgcm;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    check-cast v0, Lkxe;

    iget-object v0, v0, Lkxe;->b:Lkpf;

    invoke-interface {v0, v1}, Lkpf;->e(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    check-cast v0, Lkjk;

    invoke-virtual {v0, v1}, Lkjk;->a(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    check-cast v0, Lkbm;

    iput v1, v0, Lkbm;->c:I

    iget-object v2, v0, Lkbm;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lkbm;->b:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkcv;

    invoke-virtual {v3, v1}, Lkcv;->a(I)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lkbm;->a:Lkaq;

    packed-switch v1, :pswitch_data_1

    const-string v1, "RESTRICT_VIBRATION_SOUND"

    goto :goto_1

    :pswitch_2
    const-string v1, "RESTRICT_VIBRATION"

    goto :goto_1

    :pswitch_3
    const-string v1, "NONE"

    :goto_1
    const-string v2, "Camera audio restriction set to "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_4
    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    check-cast v0, Ljen;

    invoke-virtual {v0, v1}, Ljen;->k(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    check-cast v0, Lieb;

    iget-object v2, v0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    if-nez v2, :cond_2

    iget-object v2, v0, Lieb;->d:Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    iput-object v2, v0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    new-instance v2, Lidy;

    iget-object v3, v0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    invoke-direct {v2, v3}, Lidy;-><init>(Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;)V

    iput-object v2, v0, Lieb;->f:Lidy;

    :cond_2
    iget-object v2, v0, Lieb;->e:Lell;

    iget-object v3, v0, Lieb;->f:Lidy;

    invoke-interface {v2, v3}, Lell;->d(Lelk;)Lkad;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lieb;->a:Landroid/content/Context;

    iget-object v4, v0, Lieb;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lieb;->g:Landroid/content/Intent;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lieb;->h:Z

    iget-object v2, v0, Lieb;->e:Lell;

    sget-object v3, Lelm;->c:Lelm;

    invoke-interface {v2, v3}, Lell;->i(Lelm;)V

    iget-object v2, v0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    if-ltz v1, :cond_3

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->a:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    iget-object v1, v2, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->a:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, v0, Lieb;->g:Landroid/content/Intent;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lieb;->a(Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-object v1, v0, Lieb;->g:Landroid/content/Intent;

    :cond_4
    return-void

    :pswitch_6
    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    check-cast v0, Libg;

    iget v2, v0, Libg;->v:I

    if-eq v1, v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Libg;->d()V

    return-void

    :pswitch_7
    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lgcm;->b:Ljava/lang/Object;

    iget v1, p0, Lgcm;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
