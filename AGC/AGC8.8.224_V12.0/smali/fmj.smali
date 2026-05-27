.class public final Lfmj;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lfmj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfmj;->a:Loiw;

    iput-object p2, p0, Lfmj;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;I[B)V
    .locals 0

    iput p3, p0, Lfmj;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfmj;->b:Loiw;

    iput-object p2, p0, Lfmj;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkli;
    .locals 2

    iget v0, p0, Lfmj;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfmj;->b:Loiw;

    check-cast v0, Ljzo;

    invoke-virtual {v0}, Ljzo;->a()Lklj;

    move-result-object v0

    iget-object v1, p0, Lfmj;->a:Loiw;

    check-cast v1, Lkge;

    invoke-virtual {v1}, Lkge;->a()Lkeq;

    move-result-object v1

    iget-object v1, v1, Lkeq;->a:Lkll;

    invoke-interface {v0, v1}, Lklj;->a(Lkll;)Lkli;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lfmj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lklx;

    iget-object v1, p0, Lfmj;->b:Loiw;

    check-cast v1, Lcvo;

    invoke-virtual {v1}, Lcvo;->a()Lcsc;

    move-result-object v1

    iget-object v1, v1, Lcsc;->a:Lkll;

    invoke-virtual {v0, v1}, Lklx;->a(Lkll;)Lkli;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lfmj;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v1, p0, Lfmj;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfvx;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Lfvx;->c()Lkll;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ldja;

    invoke-virtual {v0, v1}, Ldja;->s(Lkll;)Ldne;

    move-result-object v0

    iget-object v0, v0, Ldne;->a:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfmj;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lfmj;->a()Lkli;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lfmj;->a()Lkli;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lfmj;->a()Lkli;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
