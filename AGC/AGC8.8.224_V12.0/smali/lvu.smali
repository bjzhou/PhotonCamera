.class public final Llvu;
.super Ljava/lang/Object;

# interfaces
.implements Lotu;


# instance fields
.field final synthetic a:Lotu;

.field final synthetic b:Loni;

.field final synthetic c:Llvy;

.field final synthetic d:Llzy;


# direct methods
.method public constructor <init>(Lotu;Loni;Llvy;Llzy;)V
    .locals 0

    iput-object p1, p0, Llvu;->a:Lotu;

    iput-object p2, p0, Llvu;->b:Loni;

    iput-object p3, p0, Llvu;->c:Llvy;

    iput-object p4, p0, Llvu;->d:Llzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Loku;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Llvt;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Llvt;

    iget v1, v0, Llvt;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Llvt;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, Llvt;

    invoke-direct {v0, p0, p2}, Llvt;-><init>(Llvu;Loku;)V

    :goto_0
    iget-object p2, v0, Llvt;->a:Ljava/lang/Object;

    sget-object v1, Lolc;->a:Lolc;

    iget v2, v0, Llvt;->b:I

    packed-switch v2, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    iget-object p1, v0, Llvt;->d:Ljava/lang/Object;

    iget-object v2, v0, Llvt;->e:Lotu;

    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-static {p2}, Lljr;->aO(Ljava/lang/Object;)V

    iget-object v2, p0, Llvu;->a:Lotu;

    iget-object p2, p0, Llvu;->b:Loni;

    iget-boolean v3, p2, Loni;->a:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p2, Loni;->a:Z

    iget-object p2, p0, Llvu;->c:Llvy;

    iget-object p2, p2, Llvy;->a:Llzz;

    iget-object v3, p0, Llvu;->d:Llzy;

    invoke-static {v3}, Llzy;->d(Llzy;)Llur;

    move-result-object v3

    iput-object v2, v0, Llvt;->e:Lotu;

    iput-object p1, v0, Llvt;->d:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Llvt;->b:I

    invoke-virtual {p2, v3, v0}, Llzz;->a(Llur;Loku;)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p2, 0x0

    iput-object p2, v0, Llvt;->e:Lotu;

    iput-object p2, v0, Llvt;->d:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Llvt;->b:I

    invoke-interface {v2, p1, v0}, Lotu;->a(Ljava/lang/Object;Loku;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
