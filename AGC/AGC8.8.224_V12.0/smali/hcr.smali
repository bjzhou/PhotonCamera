.class public final Lhcr;
.super Ljava/lang/Object;

# interfaces
.implements Lhdu;


# instance fields
.field public final a:Lhdz;

.field public b:Lheb;

.field public final c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

.field public final d:Lfbz;

.field public final e:Lgft;

.field public f:Z

.field public final g:Ldja;

.field public final h:Ljew;

.field public final i:Ligo;

.field private final j:Lhdy;

.field private final k:Z

.field private l:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lhdz;Lhdy;Lheb;Lcom/google/android/apps/camera/smarts/SmartsChipView;Lfbz;Ljew;Lgft;Ldja;Ligo;Z[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p11, 0x0

    iput-boolean p11, p0, Lhcr;->f:Z

    iput-object p1, p0, Lhcr;->a:Lhdz;

    iput-object p3, p0, Lhcr;->b:Lheb;

    iput-object p4, p0, Lhcr;->c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iput-object p5, p0, Lhcr;->d:Lfbz;

    iput-object p6, p0, Lhcr;->h:Ljew;

    iput-object p2, p0, Lhcr;->j:Lhdy;

    iput-object p7, p0, Lhcr;->e:Lgft;

    iput-object p8, p0, Lhcr;->g:Ldja;

    iput-object p9, p0, Lhcr;->i:Ligo;

    iput-boolean p10, p0, Lhcr;->k:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lhcr;->b:Lheb;

    iget-wide v0, v0, Lheb;->a:J

    long-to-int v1, v0

    return v1
.end method

.method public final b()Lelm;
    .locals 1

    sget-object v0, Lelm;->c:Lelm;

    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lhcr;->j:Lhdy;

    return-object v0
.end method

.method public final d()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lhcr;->b:Lheb;

    iget-object v0, v0, Lheb;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final e()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lhcr;->l:Ljava/util/Date;

    return-object v0
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lhcr;->c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iput-object p1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->f:Ljava/lang/Runnable;

    iget-boolean p1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->e:Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b()V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lhcr;->f:Z

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhcr;->c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhcr;->f:Z

    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final i(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lhcr;->l:Ljava/util/Date;

    return-void
.end method

.method public final j()V
    .locals 7

    iget-object v0, p0, Lhcr;->c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    iget-boolean v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Landroid/widget/TextView;->scrollTo(II)V

    iget-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lafc;->c(Landroid/view/View;)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    const v4, 0x800035

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->b:Landroid/widget/TextView;

    const v4, 0x800033

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    iget-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->l:Ljuf;

    invoke-virtual {v1}, Ljuf;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->l:Ljuf;

    :cond_2
    iget-object v1, p0, Lhcr;->g:Ldja;

    iget-object v1, v1, Ldja;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c(Ljwb;Lhdu;)V

    iget-object v1, p0, Lhcr;->g:Ldja;

    iget-object v1, v1, Ldja;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c(Ljwb;Lhdu;)V

    iget-object v1, p0, Lhcr;->i:Ligo;

    iget-object v1, v1, Ligo;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c(Ljwb;Lhdu;)V

    iget-object v1, p0, Lhcr;->i:Ligo;

    iget-object v1, v1, Ligo;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->c(Ljwb;Lhdu;)V

    new-instance v1, Lhcd;

    invoke-direct {v1, v0, p0}, Lhcd;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;Lhdu;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v4, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->l:Ljuf;

    new-instance v5, Lgss;

    const/4 v6, 0x5

    invoke-direct {v5, v0, v1, v6}, Lgss;-><init>(Lcom/google/android/apps/camera/smarts/SmartsChipView;Landroid/view/View$OnLayoutChangeListener;I)V

    invoke-virtual {v4, v5}, Ljuf;->d(Lkad;)V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->d(Lhdu;)V

    invoke-interface {p0}, Lhdu;->s()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setVisibility(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lhcr;->h:Ljew;

    invoke-virtual {v1}, Ljew;->K()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lhcr;->c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    invoke-static {v1}, Lnom;->h(Landroid/view/View;)V

    :cond_4
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->a(I)V

    iget-object v1, p0, Lhcr;->b:Lheb;

    iget-object v1, v1, Lheb;->i:Ljava/lang/Runnable;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_5
    iget-object v1, p0, Lhcr;->d:Lfbz;

    iget-object v3, p0, Lhcr;->a:Lhdz;

    iget-object v3, v3, Lhdz;->a:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface {v1, v4, v3}, Lfbz;->ae(ILjava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lhcr;->b:Lheb;

    iget-object v1, v1, Lheb;->j:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/google/android/apps/camera/smarts/SmartsChipView;->g:Ljava/lang/Runnable;

    :goto_2
    iput-boolean v2, p0, Lhcr;->f:Z

    return-void
.end method

.method public final k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lhcr;->b:Lheb;

    iget-boolean v0, v0, Lheb;->l:Z

    return v0
.end method

.method public final n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lhcr;->a:Lhdz;

    iget v0, v0, Lhdz;->i:I

    return v0
.end method

.method public final q(IZZLiko;Lhyn;)V
    .locals 0

    iget-object p4, p0, Lhcr;->c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    invoke-static {p0}, Lhbp;->a(Lhdu;)Lhbo;

    move-result-object p5

    invoke-virtual {p5, p1}, Lhbo;->f(I)V

    invoke-virtual {p5, p3}, Lhbo;->d(Z)V

    invoke-virtual {p5, p2}, Lhbo;->c(Z)V

    iget-boolean p1, p0, Lhcr;->k:Z

    invoke-virtual {p5, p1}, Lhbo;->e(Z)V

    invoke-virtual {p5}, Lhbo;->a()Lhbp;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->e(Lhbp;)V

    return-void
.end method

.method public final r(Lheb;)V
    .locals 1

    iput-object p1, p0, Lhcr;->b:Lheb;

    iget-boolean p1, p0, Lhcr;->f:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhcr;->c:Lcom/google/android/apps/camera/smarts/SmartsChipView;

    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->d(Lhdu;)V

    invoke-interface {p0}, Lhdu;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhcr;->b:Lheb;

    iget-object v0, v0, Lheb;->i:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/smarts/SmartsChipView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lhcr;->b:Lheb;

    iget-object v0, v0, Lheb;->j:Ljava/lang/Runnable;

    iput-object v0, p1, Lcom/google/android/apps/camera/smarts/SmartsChipView;->g:Ljava/lang/Runnable;

    return-void

    :cond_2
    return-void
.end method

.method public final s()Z
    .locals 2

    iget-object v0, p0, Lhcr;->b:Lheb;

    iget-object v1, v0, Lheb;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    iget-object v0, v0, Lheb;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
