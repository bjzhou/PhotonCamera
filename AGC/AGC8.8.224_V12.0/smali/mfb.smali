.class public final synthetic Lmfb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lcom/google/android/material/appbar/AppBarLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmfb;->a:Landroid/view/View;

    iput-object p2, p0, Lmfb;->b:Lcom/google/android/material/appbar/AppBarLayout;

    return-void
.end method


# virtual methods
.method public final onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 8

    iget-object p1, p0, Lmfb;->a:Landroid/view/View;

    iget-object v0, p0, Lmfb;->b:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_4

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p2

    const/16 v1, 0x13

    if-eq p2, v1, :cond_3

    const/16 v1, 0x118

    if-eq p2, v1, :cond_3

    const/16 v1, 0x5c

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x14

    if-eq p2, v1, :cond_2

    const/16 v1, 0x119

    if-eq p2, v1, :cond_2

    const/16 v1, 0x5d

    if-ne p2, v1, :cond_4

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->i(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p2

    int-to-double v4, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-double p1, p1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v6

    cmpg-double v1, v4, p1

    if-gez v1, :cond_4

    invoke-virtual {v0, v3}, Lcom/google/android/material/appbar/AppBarLayout;->i(Z)V

    :cond_4
    :goto_1
    return v2
.end method
