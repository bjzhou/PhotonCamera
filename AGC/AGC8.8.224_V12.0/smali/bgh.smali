.class final Lbgh;
.super Ljava/lang/Object;

# interfaces
.implements Lbgi;


# instance fields
.field final synthetic a:Lbgj;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Lbgj;I)V
    .locals 0

    iput p2, p0, Lbgh;->b:I

    iput-object p1, p0, Lbgh;->a:Lbgj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget v0, p0, Lbgh;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lbgh;->a:Lbgj;

    invoke-virtual {v0}, Lbgj;->k()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lbgh;->a:Lbgj;

    invoke-virtual {v0}, Lbgj;->l()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
