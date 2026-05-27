.class public final synthetic Ldon;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ldoq;

.field public final synthetic b:Ldpc;


# direct methods
.method public synthetic constructor <init>(Ldoq;Ldpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldon;->a:Ldoq;

    iput-object p2, p0, Ldon;->b:Ldpc;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Ldon;->a:Ldoq;

    iget-object v1, p0, Ldon;->b:Ldpc;

    iget-object v2, v0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-object v1, v0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->n(Landroid/view/View;Landroid/view/MotionEvent;)[F

    invoke-virtual {v0, v4, v4}, Ldoq;->w(ZZ)V

    invoke-virtual {v0, v4}, Ldoq;->m(Z)V

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldok;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ldoy;->b(Ldok;)V

    iget-object p1, v0, Ldoq;->b:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldoh;

    sget-object p2, Ldoh;->c:Ldoh;

    invoke-virtual {p1, p2}, Ldoh;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_4

    iget-object v0, v0, Ldoq;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->n(Landroid/view/View;Landroid/view/MotionEvent;)[F

    move-result-object p2

    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Ldok;

    invoke-virtual {v1, v0, v2}, Ldoy;->d(FLdok;)V

    aget v0, p2, v4

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ldok;

    aget p2, p2, v4

    sget-object v0, Ldok;->a:Ldok;

    invoke-virtual {p1, v0}, Ldok;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ldok;->b:Ldok;

    goto :goto_1

    :cond_3
    sget-object p1, Ldok;->a:Ldok;

    :goto_1
    invoke-virtual {v1, p2, p1}, Ldoy;->d(FLdok;)V

    :cond_4
    return v4
.end method
