.class public final synthetic Lilo;
.super Ljava/lang/Object;

# interfaces
.implements Ljop;


# instance fields
.field public final synthetic a:Lilr;


# direct methods
.method public synthetic constructor <init>(Lilr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lilo;->a:Lilr;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lilo;->a:Lilr;

    check-cast p1, Lmlt;

    iget v1, p1, Lmlt;->c:I

    iget v2, p1, Lmlt;->b:I

    iput-object p1, v0, Lilr;->d:Lmlt;

    const/16 v3, 0xb

    if-eq v1, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v0}, Lilr;->g()V

    iget-object p1, v0, Lilr;->c:Lilk;

    invoke-interface {p1}, Lilk;->z()V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Lmlt;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lilr;->c:Lilk;

    iget v1, p1, Lmlt;->a:I

    iget-object p1, p1, Lmlt;->d:Ljava/lang/Integer;

    invoke-interface {v0, v1, p1}, Lilk;->s(ILjava/lang/Integer;)V

    return-void

    :pswitch_2
    iget-object p1, v0, Lilr;->c:Lilk;

    invoke-interface {p1}, Lilk;->h()V

    return-void

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object p1, v0, Lilr;->c:Lilk;

    invoke-interface {p1}, Lilk;->t()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
