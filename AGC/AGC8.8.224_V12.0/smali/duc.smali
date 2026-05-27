.class public final Lduc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lduc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lduc;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldsw;
    .locals 2

    iget v0, p0, Lduc;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lduc;->a:Loiw;

    check-cast v0, Ldtb;

    invoke-virtual {v0}, Ldtb;->a()Lbkc;

    move-result-object v0

    sget-object v1, Ldhv;->a:Ldhk;

    iget-object v0, v0, Lbkc;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldhi;->g()V

    new-instance v0, Ldta;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ldta;-><init>(I)V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lduc;->a:Loiw;

    check-cast v0, Ldtb;

    invoke-virtual {v0}, Ldtb;->a()Lbkc;

    move-result-object v0

    sget-object v1, Ldhe;->b:Ldhj;

    invoke-virtual {v0, v1}, Lbkc;->s(Ldhj;)Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lduc;->a:Loiw;

    check-cast v0, Ldtb;

    invoke-virtual {v0}, Ldtb;->a()Lbkc;

    move-result-object v0

    sget-object v1, Ldhe;->a:Ldhj;

    invoke-virtual {v0}, Lbkc;->t()Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lduc;->a:Loiw;

    check-cast v0, Ldtb;

    invoke-virtual {v0}, Ldtb;->a()Lbkc;

    move-result-object v0

    sget-object v1, Ldho;->bA:Ldhj;

    invoke-virtual {v0, v1}, Lbkc;->s(Ldhj;)Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lduc;->a:Loiw;

    check-cast v0, Ldtb;

    invoke-virtual {v0}, Ldtb;->a()Lbkc;

    move-result-object v0

    sget-object v1, Ldhe;->a:Ldhj;

    invoke-virtual {v0}, Lbkc;->t()Ldsw;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lduc;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lduc;->a()Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lduc;->a()Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lduc;->a()Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lduc;->a()Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lduc;->a()Ldsw;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
