.class public final Lepf;
.super Ljava/lang/Object;

# interfaces
.implements Liap;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lczp;I)V
    .locals 0

    iput p2, p0, Lepf;->b:I

    iput-object p1, p0, Lepf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lepg;I)V
    .locals 0

    iput p2, p0, Lepf;->b:I

    iput-object p1, p0, Lepf;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .locals 0

    iget p2, p0, Lepf;->b:I

    packed-switch p2, :pswitch_data_0

    if-eqz p3, :cond_1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    return-void

    :pswitch_0
    if-eqz p3, :cond_0

    invoke-static {p1}, Lnom;->h(Landroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 1

    iget v0, p0, Lepf;->b:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->f(I)Liac;

    move-result-object p1

    iget-object p1, p1, Liac;->a:Ljava/lang/Object;

    check-cast p1, Lika;

    iget-object v0, p0, Lepf;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lczp;

    invoke-virtual {v0, p1}, Lczp;->l(Lika;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lepf;->a:Ljava/lang/Object;

    check-cast p1, Lczp;

    invoke-virtual {p1}, Lczp;->a()V

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->a()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/modeslider/ModeSlider;->f(I)Liac;

    move-result-object p1

    iget-object p1, p1, Liac;->a:Ljava/lang/Object;

    check-cast p1, Leqg;

    iget-object p2, p0, Lepf;->a:Ljava/lang/Object;

    check-cast p2, Lepg;

    iget-object p2, p2, Lepg;->a:Ljwb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object p2, p0, Lepf;->a:Ljava/lang/Object;

    check-cast p2, Lczp;

    invoke-virtual {p2, p1}, Lczp;->i(Lika;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Z)V
    .locals 2

    iget v0, p0, Lepf;->b:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lepf;->a:Ljava/lang/Object;

    check-cast p1, Lczp;

    iget-object v0, p1, Lczp;->b:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p1, Lczp;->g:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p1, Lczp;->h:Liff;

    invoke-interface {v0, v1}, Liff;->E(Z)V

    iget-object p1, p1, Lczp;->d:Leoa;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Leoa;->g(I)V

    :cond_0
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
