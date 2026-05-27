.class public final Lfc;
.super Ljava/lang/Object;

# interfaces
.implements Lhi;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lfd;I)V
    .locals 0

    iput p2, p0, Lfc;->b:I

    iput-object p1, p0, Lfc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lic;I)V
    .locals 0

    iput p2, p0, Lfc;->b:I

    iput-object p1, p0, Lfc;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lgw;Z)V
    .locals 3

    iget v0, p0, Lfc;->b:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Lhq;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lgw;->a()Lgw;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgw;->i(Z)V

    goto :goto_1

    :pswitch_0
    iget-object p2, p0, Lfc;->a:Ljava/lang/Object;

    check-cast p2, Lfd;

    invoke-virtual {p2, p1}, Lfd;->x(Lgw;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lgw;->a()Lgw;

    move-result-object v0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iget-object v2, p0, Lfc;->a:Ljava/lang/Object;

    check-cast v2, Lfd;

    invoke-virtual {v2, v1}, Lfd;->t(Landroid/view/Menu;)Lfb;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    iget-object p1, p0, Lfc;->a:Ljava/lang/Object;

    iget p2, v1, Lfb;->a:I

    check-cast p1, Lfd;

    invoke-virtual {p1, p2, v1, v0}, Lfd;->w(ILfb;Landroid/view/Menu;)V

    iget-object p1, p0, Lfc;->a:Ljava/lang/Object;

    check-cast p1, Lfd;

    const/4 p2, 0x1

    invoke-virtual {p1, v1, p2}, Lfd;->y(Lfb;Z)V

    return-void

    :cond_1
    iget-object p1, p0, Lfc;->a:Ljava/lang/Object;

    check-cast p1, Lfd;

    invoke-virtual {p1, v1, p2}, Lfd;->y(Lfb;Z)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lfc;->a:Ljava/lang/Object;

    check-cast v0, Lgm;

    iget-object v0, v0, Lgm;->e:Lhi;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2}, Lhi;->a(Lgw;Z)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lgw;)Z
    .locals 4

    iget v0, p0, Lfc;->b:I

    const/16 v1, 0x6c

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfc;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lic;

    iget-object v1, v1, Lic;->c:Lgw;

    if-ne p1, v1, :cond_3

    :cond_0
    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lfc;->a:Ljava/lang/Object;

    check-cast v0, Lfd;

    invoke-virtual {v0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    return v2

    :pswitch_1
    invoke-virtual {p1}, Lgw;->a()Lgw;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lfc;->a:Ljava/lang/Object;

    check-cast v0, Lfd;

    iget-boolean v3, v0, Lfd;->w:Z

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lfd;->u()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lfc;->a:Ljava/lang/Object;

    check-cast v3, Lfd;

    iget-boolean v3, v3, Lfd;->D:Z

    if-nez v3, :cond_2

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_2
    return v2

    :cond_3
    move-object v1, p1

    check-cast v1, Lhq;

    iget-object v1, v1, Lhq;->k:Lgy;

    check-cast v0, Lgm;

    iget-object v0, v0, Lgm;->e:Lhi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lhi;->b(Lgw;)Z

    move-result p1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
