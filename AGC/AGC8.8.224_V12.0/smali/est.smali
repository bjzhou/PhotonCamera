.class public final Lest;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method private constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lest;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lest;->a:Loiw;

    return-void
.end method

.method private constructor <init>(Loiw;I[B)V
    .locals 0

    iput p2, p0, Lest;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lest;->a:Loiw;

    return-void
.end method

.method private constructor <init>(Loiw;I[C)V
    .locals 0

    iput p2, p0, Lest;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lest;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Loiw;
    .locals 2

    new-instance v0, Lest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lest;-><init>(Loiw;I)V

    return-object v0
.end method

.method public static c(Loiw;)Loiw;
    .locals 3

    new-instance v0, Lest;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lest;-><init>(Loiw;I[B)V

    return-object v0
.end method

.method public static d(Loiw;)Loiw;
    .locals 3

    new-instance v0, Lest;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lest;-><init>(Loiw;I[C)V

    return-object v0
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 1

    iget v0, p0, Lest;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lest;->a:Loiw;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lest;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lest;->a:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lest;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lest;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lest;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lest;->a()Lmqp;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
