.class public final synthetic Lhch;
.super Ljava/lang/Object;

# interfaces
.implements Lhco;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lgyu;I)V
    .locals 0

    iput p2, p0, Lhch;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhch;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhcq;I)V
    .locals 0

    iput p2, p0, Lhch;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhch;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;I)V
    .locals 0

    iput p2, p0, Lhch;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhch;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkli;I)V
    .locals 0

    iput p2, p0, Lhch;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhch;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkou;I)V
    .locals 0

    iput p2, p0, Lhch;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhch;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([FI)V
    .locals 0

    iput p2, p0, Lhch;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhch;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lhch;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    check-cast v0, Lhcq;

    iget-object v0, v0, Lhcq;->p:Lklv;

    check-cast p1, Lhdf;

    invoke-virtual {p1, v0}, Lhdf;->e(Lklv;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    check-cast v0, Lhcq;

    iget-boolean v0, v0, Lhcq;->r:Z

    check-cast p1, Lhdf;

    invoke-virtual {p1, v0}, Lhdf;->f(Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    check-cast p1, Lhdf;

    iget-boolean v1, p1, Lhdf;->d:Z

    invoke-static {v1}, Lmoz;->p(Z)V

    iget-boolean v1, p1, Lhdf;->e:Z

    if-eqz v1, :cond_0

    iget-object p1, p1, Lhdf;->a:Lhdy;

    instance-of v1, p1, Lhdx;

    if-eqz v1, :cond_0

    check-cast p1, Lhdx;

    invoke-interface {p1, v0}, Lhdx;->i(Lkou;)V

    :cond_0
    return-void

    :pswitch_2
    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    check-cast p1, Lhdf;

    invoke-virtual {p1, v0}, Lhdf;->h(Z)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    check-cast v0, Lgyu;

    invoke-static {v0}, Lhcq;->k(Lgyu;)Z

    move-result v0

    check-cast p1, Lhdf;

    invoke-virtual {p1, v0}, Lhdf;->g(Z)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    new-instance v1, Landroid/graphics/Point;

    check-cast v0, [F

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    check-cast p1, Lhdf;

    iget-boolean v0, p1, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-boolean v0, p1, Lhdf;->e:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lhdf;->a:Lhdy;

    instance-of v0, p1, Lhdv;

    if-eqz v0, :cond_1

    check-cast p1, Lhdv;

    invoke-interface {p1, v1}, Lhdv;->f(Landroid/graphics/Point;)V

    :cond_1
    return-void

    :pswitch_5
    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    check-cast p1, Lhdf;

    invoke-virtual {p1, v0}, Lhdf;->a(Lkli;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lhch;->a:Ljava/lang/Object;

    check-cast v0, Lhcq;

    iget-object v0, v0, Lhcq;->o:Lika;

    check-cast p1, Lhdf;

    invoke-virtual {p1, v0}, Lhdf;->d(Lika;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
