.class public final synthetic Libp;
.super Ljava/lang/Object;

# interfaces
.implements Laip;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lhgm;I)V
    .locals 0

    iput p2, p0, Libp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Libp;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libq;I)V
    .locals 0

    iput p2, p0, Libp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Libp;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget v0, p0, Libp;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Libp;->a:Ljava/lang/Object;

    check-cast v0, Lhgm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhgm;->f(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhgm;->setTranslationY(F)V

    invoke-virtual {v0}, Lhgm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0}, Lhgm;->c()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Lhgm;->requestLayout()V

    return-void

    :pswitch_0
    iget-object v0, p0, Libp;->a:Ljava/lang/Object;

    check-cast v0, Libq;

    iget-object v1, v0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->b()Lika;

    move-result-object v1

    iget-object v2, v0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lfbz;

    if-eqz v2, :cond_0

    iget-object v2, v0, Libq;->a:Lika;

    sget-object v3, Lika;->a:Lika;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    iget-object v2, v2, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h:Lfbz;

    iget v3, v0, Libq;->d:I

    iget-object v4, v0, Libq;->a:Lika;

    invoke-virtual {v4}, Lika;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lika;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lfbz;->ac(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, Lika;->a:Lika;

    iput-object v2, v0, Libq;->a:Lika;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Libq;->b:J

    iget-object v2, v0, Libq;->c:Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->h(Lika;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Libq;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
