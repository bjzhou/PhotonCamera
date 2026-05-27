.class public final Lltj;
.super Ljava/lang/Object;

# interfaces
.implements Lltc;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Llto;Landroid/view/View;)V
    .locals 5

    instance-of v0, p2, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->t:Z

    const-string v2, "recyclerView_hasFixedSize"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lls;->a()I

    move-result v2

    const-string v3, "recyclerView_adapter_itemCount"

    invoke-virtual {p1, v3, v2}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget-boolean v1, v1, Lls;->b:Z

    const-string v2, "recyclerView_adapter_hasStableIds"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->F:Llv;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Llv;->h()Z

    move-result v0

    const-string v1, "recyclerView_itemAnimator_isRunning"

    invoke-virtual {p1, v1, v0}, Llto;->b(Ljava/lang/CharSequence;Z)V

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "recyclerView_mLayoutWasDefered"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "af"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "recyclerView_mInterceptRequestLayoutDepth"

    invoke-virtual {p1, v2, v1}, Llto;->d(Ljava/lang/CharSequence;I)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    :try_start_2
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    const-string v2, "w"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "recyclerView_mLayoutSuppressed"

    invoke-virtual {p1, v1, v0}, Llto;->b(Ljava/lang/CharSequence;Z)V
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/view/View;)Lmo;

    move-result-object v0

    iget-object v1, v0, Lmo;->r:Lls;

    const/4 v2, -0x1

    if-nez v1, :cond_3

    goto :goto_5

    :cond_3
    iget-object v1, v0, Lmo;->q:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_4

    :goto_3
    goto :goto_5

    :cond_4
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->m:Lls;

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Lmo;)I

    move-result v1

    if-ne v1, v2, :cond_6

    :goto_4
    goto :goto_5

    :cond_6
    iget-object v4, v0, Lmo;->r:Lls;

    if-eq v4, v3, :cond_7

    goto :goto_4

    :cond_7
    move v2, v1

    :goto_5
    const-string v1, "recyclerView_viewHolder_adapterPosition"

    invoke-virtual {p1, v1, v2}, Llto;->d(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Lmo;->b()I

    move-result v1

    const-string v2, "recyclerView_viewHolder_layoutPosition"

    invoke-virtual {p1, v2, v1}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget-wide v1, v0, Lmo;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recyclerView_viewHolder_itemId"

    invoke-virtual {p1, v2, v1}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lmo;->t()Z

    move-result v1

    const-string v2, "recyclerView_viewHolder_isRecyclable"

    invoke-virtual {p1, v2, v1}, Llto;->b(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, v0, Lmo;->f:I

    invoke-static {p2, v1}, Lltg;->a(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object p2

    iget v0, v0, Lmo;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "recyclerView_viewHolder_viewType"

    invoke-virtual {p1, v0, p2}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    return-void
.end method
