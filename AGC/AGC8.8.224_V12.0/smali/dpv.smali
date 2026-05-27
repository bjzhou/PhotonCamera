.class public final synthetic Ldpv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/view/ViewGroup;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldpv;->a:Landroid/view/View;

    iput-object p2, p0, Ldpv;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Ldpv;->c:Landroid/view/View;

    iput-object p4, p0, Ldpv;->d:Landroid/view/ViewGroup;

    iput-object p5, p0, Ldpv;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 3

    iget-object p1, p0, Ldpv;->a:Landroid/view/View;

    iget-object p2, p0, Ldpv;->b:Landroid/view/ViewGroup;

    iget-object p3, p0, Ldpv;->c:Landroid/view/View;

    iget-object p4, p0, Ldpv;->d:Landroid/view/ViewGroup;

    iget-object p5, p0, Ldpv;->e:Landroid/view/View;

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v2, 0x1

    aget v0, v0, v2

    aget v1, v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    const p1, 0x7f0b01d3

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
