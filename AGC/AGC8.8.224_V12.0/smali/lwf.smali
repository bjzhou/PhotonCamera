.class public final Llwf;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;I)V
    .locals 0

    iput p4, p0, Llwf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwf;->a:Loiw;

    iput-object p2, p0, Llwf;->b:Loiw;

    iput-object p3, p0, Llwf;->c:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[B)V
    .locals 0

    iput p4, p0, Llwf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwf;->c:Loiw;

    iput-object p2, p0, Llwf;->a:Loiw;

    iput-object p3, p0, Llwf;->b:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[C)V
    .locals 0

    iput p4, p0, Llwf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwf;->b:Loiw;

    iput-object p2, p0, Llwf;->a:Loiw;

    iput-object p3, p0, Llwf;->c:Loiw;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;I[S)V
    .locals 0

    iput p4, p0, Llwf;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llwf;->b:Loiw;

    iput-object p2, p0, Llwf;->a:Loiw;

    iput-object p3, p0, Llwf;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Llwf;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Llwf;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Llwf;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmj;

    iget-object v2, p0, Llwf;->c:Loiw;

    check-cast v2, Ldwh;

    invoke-virtual {v2}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lmlv;

    check-cast v0, Lmma;

    invoke-direct {v3, v0, v1, v2}, Lmlv;-><init>(Lmma;Lmmj;Landroid/content/Context;)V

    return-object v3

    :pswitch_0
    iget-object v0, p0, Llwf;->b:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    iget-object v1, p0, Llwf;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llzz;

    iget-object v2, p0, Llwf;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkrn;

    new-instance v3, Lmav;

    invoke-direct {v3, v0, v1, v2}, Lmav;-><init>(Logd;Llzz;Lkrn;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, Llwf;->a:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    iget-object v1, p0, Llwf;->b:Loiw;

    check-cast v1, Logl;

    iget-object v1, v1, Logl;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    iget-object v2, p0, Llwf;->c:Loiw;

    check-cast v2, Lest;

    invoke-virtual {v2}, Lest;->a()Lmqp;

    move-result-object v2

    invoke-virtual {v0, v1}, Lmqp;->a(Lmqp;)Lmqp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmqp;->a(Lmqp;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Llwf;->c:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Llwf;->a:Loiw;

    check-cast v1, Logl;

    iget-object v1, v1, Logl;->a:Ljava/lang/Object;

    check-cast v1, Lmqp;

    iget-object v2, p0, Llwf;->b:Loiw;

    check-cast v2, Llnu;

    invoke-virtual {v2}, Llnu;->a()Llnt;

    move-result-object v2

    new-instance v3, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;

    invoke-direct {v3}, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;-><init>()V

    new-instance v4, Llnw;

    invoke-direct {v4, v0, v1, v2, v3}, Llnw;-><init>(Landroid/content/Context;Lmqp;Llnt;Lcom/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricSnapshotTransmitter;)V

    return-object v4

    :pswitch_3
    iget-object v0, p0, Llwf;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lopq;

    iget-object v1, p0, Llwf;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llyd;

    iget-object v2, p0, Llwf;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llpm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llpm;

    invoke-direct {v0}, Llpm;-><init>()V

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
