.class public final Lfwo;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lbkb;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Lfwo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwo;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lfwo;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfwo;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Lfuz;
    .locals 2

    iget v0, p0, Lfwo;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfwo;->b:Ljava/lang/Object;

    check-cast v0, Lcvp;

    invoke-virtual {v0}, Lcvp;->a()Lken;

    move-result-object v0

    new-instance v1, Lfuz;

    invoke-interface {v0}, Lken;->c()Lkeo;

    move-result-object v0

    invoke-interface {v0}, Lkeo;->d()Lkli;

    move-result-object v0

    invoke-direct {v1, v0}, Lfuz;-><init>(Lkli;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, Lfwo;->b:Ljava/lang/Object;

    check-cast v0, Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lfuz;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lfwo;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lfwo;->a()Lfuz;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lfwo;->a()Lfuz;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
