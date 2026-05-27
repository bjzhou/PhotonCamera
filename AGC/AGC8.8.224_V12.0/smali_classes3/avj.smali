.class public final synthetic Lavj;
.super Ljava/lang/Object;

# interfaces
.implements Laiq;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lavm;I)V
    .locals 0

    iput p2, p0, Lavj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavj;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libq;I)V
    .locals 0

    iput p2, p0, Lavj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lavj;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 4

    iget v0, p0, Lavj;->b:I

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lavj;->a:Ljava/lang/Object;

    check-cast v0, Libq;

    iget-object v1, v0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    float-to-int p1, p1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->setScrollX(I)V

    iget-object p1, v0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b()Lika;

    move-result-object p1

    iget-object v1, v0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v2, v1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    if-ne v2, p1, :cond_2

    return-void

    :pswitch_0
    iget-object v0, p0, Lavj;->a:Ljava/lang/Object;

    check-cast v0, Lavm;

    iget v3, v0, Lavm;->b:I

    int-to-float v3, v3

    sub-float/2addr v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    iget-object v1, v0, Lavm;->l:Laiv;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Laiv;->k()V

    :cond_0
    invoke-virtual {v0, p1}, Lavm;->c(F)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lavj;->a:Ljava/lang/Object;

    add-float v3, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lavm;

    iget-object v1, v1, Lavm;->m:Laiv;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Laiv;->k()V

    :cond_1
    check-cast v0, Lavm;

    invoke-virtual {v0, p1}, Lavm;->c(F)V

    return-void

    :cond_2
    iput-object p1, v1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->k:Lika;

    invoke-static {v1}, Lnom;->h(Landroid/view/View;)V

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->c:Libo;

    invoke-virtual {v1, p1}, Libo;->d(Lika;)V

    const/4 p1, 0x4

    iput p1, v0, Libq;->d:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
