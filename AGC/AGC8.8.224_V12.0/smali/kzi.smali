.class public final Lkzi;
.super Ljava/lang/Object;

# interfaces
.implements Lkzg;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lkzc;I)V
    .locals 0

    iput p2, p0, Lkzi;->b:I

    iput-object p1, p0, Lkzi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llbh;I)V
    .locals 0

    iput p2, p0, Lkzi;->b:I

    iput-object p1, p0, Lkzi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llhe;I[B)V
    .locals 0

    iput p2, p0, Lkzi;->b:I

    iput-object p1, p0, Lkzi;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lkzc;
    .locals 4

    iget v0, p0, Lkzi;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lkyd;

    iget-object p1, p0, Lkzi;->a:Ljava/lang/Object;

    check-cast p1, Llbh;

    iput-boolean v1, p1, Llbh;->c:Z

    iget-object p1, p0, Lkzi;->a:Ljava/lang/Object;

    check-cast p1, Llbh;

    invoke-virtual {p1}, Llbh;->l()V

    iget-object p1, p0, Lkzi;->a:Ljava/lang/Object;

    check-cast p1, Llbh;

    invoke-virtual {p1}, Llbh;->k()Lkzf;

    move-result-object p1

    return-object p1

    :pswitch_0
    check-cast p1, Lkzd;

    iget-object v0, p0, Lkzi;->a:Ljava/lang/Object;

    check-cast v0, Llhe;

    invoke-virtual {v0}, Llhe;->f()Lkzf;

    move-result-object v0

    invoke-static {p1}, Llpm;->p(Ljava/lang/Throwable;)Lkye;

    move-result-object v1

    invoke-static {p1}, Llpm;->n(Ljava/lang/Throwable;)Lkye;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lkzf;->c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;

    move-result-object p1

    return-object p1

    :pswitch_1
    check-cast p1, Lkzd;

    iget-object v0, p0, Lkzi;->a:Ljava/lang/Object;

    new-instance v2, Lkyh;

    const/4 v3, 0x2

    invoke-direct {v2, p1, v3}, Lkyh;-><init>(Lkzd;I)V

    new-instance v3, Lkzh;

    invoke-direct {v3, p1, v1}, Lkzh;-><init>(Lkzd;I)V

    invoke-interface {v0, p2, v2, v3}, Lkzc;->c(Ljava/util/concurrent/Executor;Lkye;Lkye;)Lkzc;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
