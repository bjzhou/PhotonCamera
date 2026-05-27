.class final Liix;
.super Ljvd;


# instance fields
.field final synthetic a:Lcmc;


# direct methods
.method public constructor <init>(Lcmc;[B)V
    .locals 0

    iput-object p1, p0, Liix;->a:Lcmc;

    invoke-direct {p0}, Ljvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ligo;)Z
    .locals 3

    iget-object v0, p0, Liix;->a:Lcmc;

    iget-object v0, v0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Liiy;

    iget-object v0, v0, Liiy;->b:Lhzo;

    iget-object v1, v0, Lhzo;->c:Ldhi;

    sget-object v2, Ldho;->cm:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lhzo;->m:Licy;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Licy;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-virtual {p1}, Ligo;->d()Landroid/graphics/PointF;

    move-result-object p1

    iget-object v0, p0, Liix;->a:Lcmc;

    iget-object v0, v0, Lcmc;->a:Ljava/lang/Object;

    check-cast v0, Liiy;

    iget-object v0, v0, Liiy;->j:Lcom/google/android/apps/camera/ui/mars/MarsSwitch;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/mars/MarsSwitch;->a:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->a:Landroid/widget/LinearLayout;

    invoke-static {p1, v0}, Ljvd;->B(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Liix;->a:Lcmc;

    iget-object p1, p1, Lcmc;->a:Ljava/lang/Object;

    check-cast p1, Liiy;

    iget-object p1, p1, Liiy;->b:Lhzo;

    invoke-virtual {p1}, Lhzo;->d()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
