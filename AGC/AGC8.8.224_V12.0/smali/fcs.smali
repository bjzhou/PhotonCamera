.class public final Lfcs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lbgj;Landroid/widget/FrameLayout;I)V
    .locals 0

    iput p3, p0, Lfcs;->c:I

    iput-object p1, p0, Lfcs;->a:Ljava/lang/Object;

    iput-object p2, p0, Lfcs;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcf;Ljea;I[B)V
    .locals 0

    iput p3, p0, Lfcs;->c:I

    iput-object p1, p0, Lfcs;->b:Ljava/lang/Object;

    iput-object p2, p0, Lfcs;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lfcs;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lfcs;->a:Ljava/lang/Object;

    check-cast p1, Ljea;

    iget-object v0, p1, Ljea;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljea;->e()V

    check-cast v0, Lbw;

    iget-object p1, v0, Lbw;->N:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lfcs;->b:Ljava/lang/Object;

    check-cast v0, Lcf;

    iget-object v0, v0, Lcf;->a:Lcq;

    invoke-static {p1, v0}, Ldm;->b(Landroid/view/ViewGroup;Lcq;)Ldm;

    move-result-object p1

    invoke-virtual {p1}, Ldm;->d()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lfcs;->a:Ljava/lang/Object;

    check-cast p1, Lbgj;

    invoke-virtual {p1}, Lbgj;->k()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Lfcs;->c:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lfcs;->a:Ljava/lang/Object;

    check-cast p1, Lbgj;

    invoke-virtual {p1}, Lbgj;->g()V

    iget-object p1, p0, Lfcs;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
