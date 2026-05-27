.class public final Lkyx;
.super Ljava/lang/Object;

# interfaces
.implements Lkzg;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lkzc;I)V
    .locals 0

    iput p2, p0, Lkyx;->b:I

    iput-object p1, p0, Lkyx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llhe;I[B)V
    .locals 0

    iput p2, p0, Lkyx;->b:I

    iput-object p1, p0, Lkyx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Lkzc;
    .locals 3

    iget v0, p0, Lkyx;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lkyx;->a:Ljava/lang/Object;

    new-instance v1, Lkzh;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lkzh;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, p2, v1}, Lkzc;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lkyx;->a:Ljava/lang/Object;

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lkyx;->a:Ljava/lang/Object;

    check-cast v0, Llhe;

    invoke-virtual {v0}, Llhe;->f()Lkzf;

    move-result-object v0

    invoke-static {p1}, Llpm;->o(Ljava/lang/Object;)Lkye;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lkzf;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p1

    return-object p1

    :pswitch_2
    iget-object v0, p0, Lkyx;->a:Ljava/lang/Object;

    check-cast v0, Llhe;

    invoke-virtual {v0}, Llhe;->f()Lkzf;

    move-result-object v0

    invoke-static {p1}, Llpm;->o(Ljava/lang/Object;)Lkye;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Lkzf;->a(Ljava/util/concurrent/Executor;Lkye;)Lkzc;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
