.class public final synthetic Lnry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlex/gcam/hdrplus/EncodedBlobCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/googlex/gcam/hdrplus/EncodedBlobCallback;I)V
    .locals 0

    iput p2, p0, Lnry;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnry;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Leea;I)V
    .locals 0

    iput p2, p0, Lnry;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnry;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDataAvailable(ILjava/nio/ByteBuffer;II)V
    .locals 1

    iget p1, p0, Lnry;->b:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lnry;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    check-cast p1, Leea;

    iget v0, p1, Leea;->s:I

    if-ne v0, p4, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lnry;->a:Ljava/lang/Object;

    invoke-static {p2, p4}, Lcom/google/googlex/gcam/BufferUtils;->d(Ljava/nio/ByteBuffer;Z)Ljava/nio/ByteBuffer;

    move-result-object p2

    check-cast p1, Lnry;

    iget-object p1, p1, Lnry;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    check-cast p1, Leea;

    iget v0, p1, Leea;->s:I

    if-ne v0, p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {p3}, Lmoz;->p(Z)V

    iget-object p1, p1, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->c()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leco;

    new-instance p3, Lbkc;

    invoke-direct {p3, p2}, Lbkc;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {p1, p3}, Leco;->a(Lbkc;)V

    return-void

    :cond_1
    :goto_1
    invoke-static {p3}, Lmoz;->p(Z)V

    iget-object p1, p1, Leea;->l:Leec;

    invoke-virtual {p1}, Leec;->c()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leco;

    new-instance p3, Lbkc;

    invoke-direct {p3, p2}, Lbkc;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {p1, p3}, Leco;->a(Lbkc;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
