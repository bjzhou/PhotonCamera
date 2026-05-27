.class public final Loqc;
.super Lowy;


# instance fields
.field public final b:Loon;


# direct methods
.method public constructor <init>(Lola;Loku;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lowy;-><init>(Lola;Loku;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lolp;->i(I)Loon;

    move-result-object p1

    iput-object p1, p0, Loqc;->b:Loon;

    return-void
.end method


# virtual methods
.method protected final f(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Loor;->h(Ljava/lang/Object;)V

    return-void
.end method

.method protected final h(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Loqc;->b:Loon;

    :cond_0
    iget v1, v0, Loon;->b:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Loqc;->e:Loku;

    invoke-static {v0}, Lolp;->g(Loku;)Loku;

    move-result-object v0

    iget-object v1, p0, Loqc;->e:Loku;

    invoke-static {p1, v1}, Lonm;->l(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lowi;->a(Loku;Ljava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Loqc;->b:Loon;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Loon;->c(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
