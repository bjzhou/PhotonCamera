.class public final Lhq;
.super Lgw;

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field public final j:Lgw;

.field public final k:Lgy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lgw;Lgy;)V
    .locals 0

    invoke-direct {p0, p1}, Lgw;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lhq;->j:Lgw;

    iput-object p3, p0, Lhq;->k:Lgy;

    return-void
.end method


# virtual methods
.method public final a()Lgw;
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0}, Lgw;->a()Lgw;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lhq;->k:Lgy;

    iget v0, v0, Lgy;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:menu:actionviewstates:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lhq;->k:Lgy;

    return-object v0
.end method

.method public final p(Lgu;)V
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0, p1}, Lgw;->p(Lgu;)V

    return-void
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0, p1}, Lgw;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-super/range {v0 .. v5}, Lgw;->q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-super/range {v0 .. v5}, Lgw;->q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-super/range {v0 .. v5}, Lgw;->q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-super/range {v0 .. v5}, Lgw;->q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    invoke-super/range {v0 .. v5}, Lgw;->q(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lhq;->k:Lgy;

    invoke-virtual {v0, p1}, Lgy;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    iget-object v0, p0, Lhq;->k:Lgy;

    invoke-virtual {v0, p1}, Lgy;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0, p1}, Lgw;->setQwertyMode(Z)V

    return-void
.end method

.method public final t(Lgy;)Z
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0, p1}, Lgw;->t(Lgy;)Z

    move-result p1

    return p1
.end method

.method public final u(Lgw;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lgw;->u(Lgw;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0, p1, p2}, Lgw;->u(Lgw;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final v(Lgy;)Z
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0, p1}, Lgw;->v(Lgy;)Z

    move-result p1

    return p1
.end method

.method public final w()Z
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0}, Lgw;->w()Z

    move-result v0

    return v0
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0}, Lgw;->x()Z

    move-result v0

    return v0
.end method

.method public final y()Z
    .locals 1

    iget-object v0, p0, Lhq;->j:Lgw;

    invoke-virtual {v0}, Lgw;->y()Z

    move-result v0

    return v0
.end method
