.class public final synthetic Lfis;
.super Ljava/lang/Object;

# interfaces
.implements Lfgf;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfhz;I)V
    .locals 0

    iput p2, p0, Lfis;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfis;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lfis;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfis;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final f(J)V
    .locals 1

    iget v0, p0, Lfis;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, Lfis;->a:Ljava/lang/Object;

    check-cast p1, Lcrj;

    invoke-virtual {p1}, Lcrj;->a()Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhei;

    invoke-interface {p1}, Lhei;->ci()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfis;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgso;

    invoke-virtual {v0, p1, p2}, Lgso;->c(J)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lfis;->a:Ljava/lang/Object;

    invoke-interface {p1}, Lfhz;->d()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lfis;->a:Ljava/lang/Object;

    check-cast p1, Lffz;

    invoke-virtual {p1}, Lffz;->a()Lffy;

    move-result-object p1

    invoke-virtual {p1}, Lffy;->ci()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
