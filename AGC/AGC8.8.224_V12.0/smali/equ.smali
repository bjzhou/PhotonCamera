.class public final Lequ;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldhi;I)V
    .locals 0

    iput p2, p0, Lequ;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lequ;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lequ;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lequ;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lequ;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lequ;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lequ;->b:Ljava/lang/Object;

    check-cast v0, Lfix;

    invoke-virtual {v0}, Lfix;->b()Lmqp;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
