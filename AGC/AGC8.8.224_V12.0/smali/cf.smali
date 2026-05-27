.class public final Lcf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final a:Lcq;


# direct methods
.method public constructor <init>(Lcq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcf;->a:Lcq;

    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    const-class v0, Lcc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcc;

    iget-object p2, p0, Lcf;->a:Lcq;

    invoke-direct {p1, p3, p4, p2}, Lcc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcq;)V

    return-object p1

    :cond_0
    const-string v0, "fragment"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    return-object v0

    :cond_1
    const-string p2, "class"

    invoke-interface {p4, v0, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lat;->a:[I

    invoke-virtual {p3, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_2
    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p2, :cond_13

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    sget v8, Lcd;->a:I

    :try_start_0
    invoke-static {v1, p2}, Lcd;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v8, Lbw;

    invoke-virtual {v8, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    goto :goto_0

    :cond_4
    :goto_0
    if-ne v2, v4, :cond_7

    if-ne v5, v4, :cond_6

    if-eqz v7, :cond_5

    const/4 v2, -0x1

    const/4 v5, -0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/4 v2, -0x1

    goto :goto_1

    :cond_7
    :goto_1
    if-eq v5, v4, :cond_8

    iget-object v1, p0, Lcf;->a:Lcq;

    invoke-virtual {v1, v5}, Lcq;->d(I)Lbw;

    move-result-object v1

    goto :goto_2

    :cond_8
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_9

    if-eqz v7, :cond_9

    iget-object v1, p0, Lcf;->a:Lcq;

    invoke-virtual {v1, v7}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object v1

    :cond_9
    if-nez v1, :cond_a

    if-eq v2, v4, :cond_a

    iget-object v1, p0, Lcf;->a:Lcq;

    invoke-virtual {v1, v2}, Lcq;->d(I)Lbw;

    move-result-object v1

    :cond_a
    const-string v4, "Fragment "

    if-nez v1, :cond_c

    iget-object v1, p0, Lcf;->a:Lcq;

    invoke-virtual {v1}, Lcq;->h()Lcd;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    invoke-virtual {v1, p2}, Lcd;->b(Ljava/lang/String;)Lbw;

    move-result-object v1

    iput-boolean v3, v1, Lbw;->t:Z

    if-eqz v5, :cond_b

    move p3, v5

    goto :goto_3

    :cond_b
    move p3, v2

    :goto_3
    iput p3, v1, Lbw;->C:I

    iput v2, v1, Lbw;->D:I

    iput-object v7, v1, Lbw;->E:Ljava/lang/String;

    iput-boolean v3, v1, Lbw;->u:Z

    iget-object p3, p0, Lcf;->a:Lcq;

    iput-object p3, v1, Lbw;->y:Lcq;

    iget-object p3, p0, Lcf;->a:Lcq;

    iget-object v2, p3, Lcq;->i:Lce;

    iput-object v2, v1, Lbw;->z:Lce;

    iget-object p3, p3, Lcq;->i:Lce;

    iget-object p3, p3, Lce;->c:Landroid/content/Context;

    iget-object v2, v1, Lbw;->g:Landroid/os/Bundle;

    invoke-virtual {v1, p3, p4, v2}, Lbw;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object p3, p0, Lcf;->a:Lcq;

    invoke-virtual {p3, v1}, Lcq;->ac(Lbw;)Ljea;

    move-result-object p3

    invoke-static {v6}, Lcq;->S(I)Z

    move-result p4

    if-eqz p4, :cond_d

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been inflated via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    iget-boolean p3, v1, Lbw;->u:Z

    if-nez p3, :cond_12

    iput-boolean v3, v1, Lbw;->u:Z

    iget-object p3, p0, Lcf;->a:Lcq;

    iput-object p3, v1, Lbw;->y:Lcq;

    iget-object p3, p0, Lcf;->a:Lcq;

    iget-object v2, p3, Lcq;->i:Lce;

    iput-object v2, v1, Lbw;->z:Lce;

    iget-object p3, p3, Lcq;->i:Lce;

    iget-object p3, p3, Lce;->c:Landroid/content/Context;

    iget-object v2, v1, Lbw;->g:Landroid/os/Bundle;

    invoke-virtual {v1, p3, p4, v2}, Lbw;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object p3, p0, Lcf;->a:Lcq;

    invoke-virtual {p3, v1}, Lcq;->ad(Lbw;)Ljea;

    move-result-object p3

    invoke-static {v6}, Lcq;->S(I)Z

    move-result p4

    if-eqz p4, :cond_d

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retained Fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has been re-attached via the <fragment> tag: id=0x"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_4
    check-cast p1, Landroid/view/ViewGroup;

    sget p4, Lajr;->a:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lajs;

    invoke-direct {p4, v1, p1}, Lajs;-><init>(Lbw;Landroid/view/ViewGroup;)V

    invoke-static {p4}, Lajr;->d(Lakb;)V

    invoke-static {v1}, Lajr;->b(Lbw;)Lajq;

    move-result-object v2

    iget-object v6, v2, Lajq;->b:Ljava/util/Set;

    sget-object v8, Lajp;->d:Lajp;

    invoke-interface {v6, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v2, v6, v8}, Lajr;->e(Lajq;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-static {v2, p4}, Lajr;->c(Lajq;Lakb;)V

    :cond_e
    iput-object p1, v1, Lbw;->M:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Ljea;->e()V

    invoke-virtual {p3}, Ljea;->d()V

    iget-object p1, v1, Lbw;->N:Landroid/view/View;

    if-eqz p1, :cond_11

    if-eqz v5, :cond_f

    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    :cond_f
    iget-object p1, v1, Lbw;->N:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    iget-object p1, v1, Lbw;->N:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_10
    iget-object p1, v1, Lbw;->N:Landroid/view/View;

    new-instance p2, Lfcs;

    invoke-direct {p2, p0, p3, v3, v0}, Lfcs;-><init>(Lcf;Ljea;I[B)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, v1, Lbw;->N:Landroid/view/View;

    return-object p1

    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " did not create a view."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ": Duplicate id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", tag "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", or parent id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " with another fragment for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    :cond_13
    :goto_5
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcf;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
