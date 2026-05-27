.class public final Ldas;
.super Ljava/lang/Object;

# interfaces
.implements Ldau;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ldhi;

.field public c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

.field public d:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuViewContainer;

.field public final e:Ljava/util/List;

.field public f:Licy;

.field public final g:Lict;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldhi;Lict;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldas;->e:Ljava/util/List;

    iput-object p1, p0, Ldas;->a:Landroid/content/Context;

    iput-object p2, p0, Ldas;->b:Ldhi;

    iput-object p3, p0, Ldas;->g:Lict;

    return-void
.end method


# virtual methods
.method public final a(Ldaw;)Lkad;
    .locals 2

    iget-object v0, p0, Ldas;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lchq;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p1, v1}, Lchq;-><init>(Ldas;Ldaw;I)V

    return-object v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Ldas;->b:Ldhi;

    sget-object v1, Ldho;->cm:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldas;->f:Licy;

    invoke-virtual {v0}, Licy;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->b()V

    iget-object v0, p0, Ldas;->e:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcot;->f:Lcot;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Ldas;->b:Ldhi;

    sget-object v1, Ldho;->cm:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldas;->f:Licy;

    invoke-virtual {v0}, Licy;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ldas;->c:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
