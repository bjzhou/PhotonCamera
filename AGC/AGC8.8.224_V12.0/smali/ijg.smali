.class final Lijg;
.super Ljvd;


# instance fields
.field final synthetic a:Lmqp;


# direct methods
.method public constructor <init>(Lmqp;)V
    .locals 0

    iput-object p1, p0, Lijg;->a:Lmqp;

    invoke-direct {p0}, Ljvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ligo;)Z
    .locals 5

    iget-object v0, p0, Lijg;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldal;

    invoke-interface {v0}, Ldal;->a()Ldau;

    move-result-object v0

    invoke-interface {v0}, Ldau;->c()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Ligo;->d()Landroid/graphics/PointF;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Ldas;

    iget-object v3, v1, Ldas;->b:Ldhi;

    sget-object v4, Ldho;->cm:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, v1, Ldas;->f:Licy;

    invoke-virtual {v1}, Licy;->getContentView()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v1, v1, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->a:Landroid/widget/LinearLayout;

    :goto_0
    invoke-static {p1, v1}, Ljvd;->B(Landroid/graphics/PointF;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-interface {v0}, Ldau;->b()V

    const/4 p1, 0x1

    return p1

    :cond_3
    return v2
.end method
