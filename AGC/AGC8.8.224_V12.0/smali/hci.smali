.class public final synthetic Lhci;
.super Ljava/lang/Object;

# interfaces
.implements Lhco;


# static fields
.field public static final synthetic a:Lhci;

.field public static final synthetic b:Lhci;

.field public static final synthetic c:Lhci;

.field public static final synthetic d:Lhci;


# instance fields
.field private final synthetic e:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lhci;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lhci;-><init>(I)V

    sput-object v0, Lhci;->d:Lhci;

    new-instance v0, Lhci;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhci;-><init>(I)V

    sput-object v0, Lhci;->c:Lhci;

    new-instance v0, Lhci;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhci;-><init>(I)V

    sput-object v0, Lhci;->b:Lhci;

    new-instance v0, Lhci;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhci;-><init>(I)V

    sput-object v0, Lhci;->a:Lhci;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lhci;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lhci;->e:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lhdf;

    iget-boolean v0, p1, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p1, Lhdf;->b:Lhdz;

    iget-object v0, v0, Lhdz;->g:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lhdf;->b:Lhdz;

    iget-object p1, p1, Lhdz;->g:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhds;

    invoke-interface {p1}, Lhds;->d()V

    return-void

    :pswitch_0
    check-cast p1, Lhdf;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lhdf;->c(Z)V

    return-void

    :pswitch_1
    check-cast p1, Lhdf;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lhdf;->c(Z)V

    return-void

    :pswitch_2
    check-cast p1, Lhdf;

    iget-boolean v0, p1, Lhdf;->d:Z

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-boolean v0, p1, Lhdf;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lhdf;->a:Lhdy;

    invoke-interface {v0}, Lhdy;->v()V

    :cond_0
    iget-object v0, p1, Lhdf;->a:Lhdy;

    invoke-interface {v0}, Lhdy;->a()V

    iget-object v0, p1, Lhdf;->c:Lhec;

    invoke-interface {v0}, Lhec;->a()V

    iget-object p1, p1, Lhdf;->f:Ljuf;

    invoke-virtual {p1}, Ljuf;->close()V

    return-void

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
