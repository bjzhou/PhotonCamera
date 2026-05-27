.class public final Ljes;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Ljes;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljes;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/LinearLayout;Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljes;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljes;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfvc;Landroid/app/Dialog;[B)V
    .locals 0

    iput-object p1, p0, Ljes;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljes;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhos;Ldhi;)V
    .locals 0

    iput-object p1, p0, Ljes;->a:Ljava/lang/Object;

    iput-object p2, p0, Ljes;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhos;Lhpq;)V
    .locals 0

    iput-object p1, p0, Ljes;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljes;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Litm;Lcom/google/android/apps/camera/bottombar/BottomBarController;)V
    .locals 0

    iput-object p1, p0, Ljes;->b:Ljava/lang/Object;

    iput-object p2, p0, Ljes;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ljes;->b:Ljava/lang/Object;

    check-cast v0, Lfvc;

    iget-object v0, v0, Lfvc;->a:Ljava/lang/Object;

    check-cast v0, Ljee;

    invoke-virtual {v0}, Ljee;->b()V

    iget-object v0, p0, Ljes;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljes;->a:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Ljes;->b:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->h:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->g:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->e:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lhos;->e()V

    return-void

    :cond_1
    sget-object v1, Lhos;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    iget-object v0, v0, Lhos;->j:Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lhnw;

    invoke-virtual {v0}, Lhnw;->name()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Recording state is incorrect. State: %s"

    const/16 v3, 0xf10

    invoke-static {v1, v2, v0, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return-void

    :cond_2
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhos;->g(Z)V

    return-void
.end method
