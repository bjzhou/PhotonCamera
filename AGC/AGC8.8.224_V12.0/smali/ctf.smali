.class public final synthetic Lctf;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lctl;Lkfj;I)V
    .locals 0

    iput p3, p0, Lctf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctf;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lczc;Lkfj;I)V
    .locals 0

    iput p3, p0, Lctf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctf;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leia;Lkai;I)V
    .locals 0

    iput p3, p0, Lctf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctf;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lhsh;Lmqp;I[B)V
    .locals 0

    iput p3, p0, Lctf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctf;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmqp;Lmqp;I)V
    .locals 0

    iput p3, p0, Lctf;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lctf;->a:Ljava/lang/Object;

    iput-object p2, p0, Lctf;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lkhr;)V
    .locals 4

    iget v0, p0, Lctf;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lctf;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctf;->b:Ljava/lang/Object;

    check-cast v1, Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    check-cast v0, Lhsh;

    invoke-virtual {v0, p1, v1}, Lhsh;->i(Lkhr;Lkfj;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lctf;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctf;->b:Ljava/lang/Object;

    new-instance v2, Lctg;

    check-cast v1, Lmqp;

    check-cast v0, Lmqp;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v1, v3}, Lctg;-><init>(Lmqp;Lmqp;I)V

    invoke-static {p1, v2}, Lkfg;->B(Lkhr;Lkex;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lctf;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctf;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lkhr;->a()Lkeb;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Lehy;

    check-cast v0, Leia;

    invoke-direct {v2, v0, p1, v1}, Lehy;-><init>(Leia;Lkeb;Lkai;)V

    invoke-interface {p1, v2}, Lkeb;->k(Lkfg;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lctf;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctf;->b:Ljava/lang/Object;

    new-instance v2, Lctg;

    check-cast v0, Lczc;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, v3}, Lctg;-><init>(Lczc;Lkfj;I)V

    invoke-static {p1, v2}, Lkfg;->B(Lkhr;Lkex;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lctf;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctf;->b:Ljava/lang/Object;

    new-instance v2, Lctg;

    check-cast v0, Lctl;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lctg;-><init>(Lctl;Lkfj;I)V

    invoke-static {p1, v2}, Lkfg;->B(Lkhr;Lkex;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lctf;->a:Ljava/lang/Object;

    iget-object v1, p0, Lctf;->b:Ljava/lang/Object;

    new-instance v2, Lctg;

    check-cast v0, Lctl;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lctg;-><init>(Lctl;Lkfj;I)V

    invoke-static {p1, v2}, Lkfg;->B(Lkhr;Lkex;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
