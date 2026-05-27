.class public final Lole;
.super Lolh;


# instance fields
.field final synthetic a:Lomo;

.field final synthetic b:Ljava/lang/Object;

.field private c:I


# direct methods
.method public constructor <init>(Loku;Lola;Lomo;Ljava/lang/Object;)V
    .locals 0

    iput-object p3, p0, Lole;->a:Lomo;

    iput-object p4, p0, Lole;->b:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lolh;-><init>(Loku;Lola;)V

    return-void
.end method


# virtual methods
.method protected final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lole;->c:I

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This coroutine had already completed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iput v1, p0, Lole;->c:I

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lole;->c:I

    invoke-static {p1}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object p1, p0, Lole;->a:Lomo;

    invoke-static {p1, v1}, Lonm;->b(Ljava/lang/Object;I)V

    iget-object v0, p0, Lole;->b:Ljava/lang/Object;

    invoke-interface {p1, v0, p0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
