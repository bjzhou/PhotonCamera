.class final Lhzm;
.super Ljava/lang/Object;

# interfaces
.implements Lhsk;


# instance fields
.field final synthetic a:Lhzo;


# direct methods
.method public constructor <init>(Lhzo;)V
    .locals 0

    iput-object p1, p0, Lhzm;->a:Lhzo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 5

    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v0, v0, Lhzo;->c:Ldhi;

    sget-object v1, Ldho;->cm:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v4, v0, Lhzo;->m:Licy;

    if-nez v4, :cond_0

    return v1

    :cond_0
    iget-object v0, v0, Lhzo;->f:Lgzn;

    sget-object v1, Lgzd;->au:Lgzr;

    invoke-interface {v0, v1, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v0, v0, Lhzo;->m:Licy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Licy;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v0, v0, Lhzo;->m:Licy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Licy;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v0, v0, Lhzo;->m:Licy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Licy;->f()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v4, v0, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    if-nez v4, :cond_3

    return v1

    :cond_3
    iget-object v0, v0, Lhzo;->f:Lgzn;

    sget-object v1, Lgzd;->au:Lgzr;

    invoke-interface {v0, v1, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v0, v0, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v0, v0, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->b()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lhzm;->a:Lhzo;

    iget-object v0, v0, Lhzo;->l:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuView;->c()V

    :goto_0
    return v2
.end method
